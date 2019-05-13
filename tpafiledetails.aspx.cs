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

public partial class tpafiledetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            SqlDataAdapter adp = new SqlDataAdapter("Select distinct fext from filearchive", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i]["fext"].ToString());
            }
            SqlDataAdapter adp1 = new SqlDataAdapter("Select * from filearchive", con);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);
            GridView1.DataSource = ds1;
            GridView1.DataBind();

            con.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "All")
        {
            SqlDataAdapter adp1 = new SqlDataAdapter("Select * from filearchive", con);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);
            GridView1.DataSource = ds1;
            GridView1.DataBind();
        }
        else
        {
            SqlDataAdapter adp = new SqlDataAdapter("Select * from filearchive where fext='" + DropDownList1.SelectedItem.Text + "'", con);
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
        if (DropDownList1.SelectedItem.Text == "All")
        {
            SqlDataAdapter adp1 = new SqlDataAdapter("Select * from filearchive", con);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);
            GridView1.DataSource = ds1;
            GridView1.DataBind();
        }
        else
        {
            SqlDataAdapter adp = new SqlDataAdapter("Select * from filearchive where fext='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }

}
