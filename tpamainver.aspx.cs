using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class tpamainver : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string fverifyYES = "YES";

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter adp1 = new SqlDataAdapter("select * from filearchive where fverify='" + fverifyYES + "'", con);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
        {
            //keyrequestYES = ds1.Tables[0].Rows[i]["keyrequest"].ToString();
            //if (keyrequestYES == "YES")
            //{
            //    count = count + 1;
            //}
        }
        Label4.Text = Convert.ToString("(" + ds1.Tables[0].Rows.Count + ")");

        //Label20.Text = "(" + Session["seskeyrequest"] + ")";

        if (ds1.Tables[0].Rows.Count == 0)
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "No Cryptographic Key Responses Files.";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
        else
        {
            SqlDataAdapter adp = new SqlDataAdapter("select * from filearchive where fverify='" + fverifyYES + "'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bindgrid();
    }
    public void bindgrid()
    {
        Page_Load(null, EventArgs.Empty);
    }
}
