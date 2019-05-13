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

public partial class AdminOwnerDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter adp = new SqlDataAdapter("Select ownerid from Registration", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i]["ownerid"].ToString());
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "--Select--")
        {
           Panel2.Visible = false;
            //Response.Redirect("AdminOwnerDetail.aspx");
        }
        else
        {
            //Response.Redirect("AdminOwnerDetail1.aspx");
            Panel2.Visible = true;
            SqlDataAdapter adp = new SqlDataAdapter("Select * from Registration where ownerid='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            Label5.Text = ds.Tables[0].Rows[0]["oid"].ToString();
            Label8.Text = ds.Tables[0].Rows[0]["ownerid"].ToString();
            Label11.Text = ds.Tables[0].Rows[0]["gender"].ToString();
            Label14.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
            Label17.Text = ds.Tables[0].Rows[0]["emailid"].ToString();
            Label20.Text = ds.Tables[0].Rows[0]["date"].ToString();
        }
    }

}
