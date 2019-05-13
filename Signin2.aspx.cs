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
using System.IO;

public partial class Signin2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string ownerid,yes;
    string Securitykey;

    protected void Page_Load(object sender, EventArgs e)
    {
        ownerid = (string)Session["ownerid"];
        //owrid = Convert.ToString(ownerid);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Enter the Secret key";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
        else
        {
            SqlDataAdapter adp = new SqlDataAdapter("select * from Registration where ownerid='" + (string)Session["ownerid"] + "'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            Securitykey = ds.Tables[0].Rows[0]["securitykey"].ToString();

            //Securitykey = ds.Tables[0].Rows[i]["security"].ToString();
                if (TextBox1.Text == Securitykey)
                {
                    //yes = "yes";
                    Response.Redirect("OwnerMain.aspx");
                }
            else
            {
                TextBox1.Text = "";
                //Response.Redirect("OwnerLogin.aspx");
                string myStringVariable1 = string.Empty;
                myStringVariable1 = "You are not authenticated. Plz try again once.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
            }
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
}
