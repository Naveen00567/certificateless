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

public partial class Ownerreqview1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string fileid, fdownload = "Allow";

    protected void Page_Load(object sender, EventArgs e)
    {
        fileid = Request.Params["ID"];
        SqlDataAdapter adp = new SqlDataAdapter("Select * from filearchive where fid='" + fileid + "'", con);
        DataSet ds = new DataSet();

        adp.Fill(ds);
        Label12.Text = ds.Tables[0].Rows[0]["fid"].ToString();
        Label15.Text = ds.Tables[0].Rows[0]["ffilename"].ToString();
        Label18.Text = ds.Tables[0].Rows[0]["fsubject"].ToString();
        Label21.Text = ds.Tables[0].Rows[0]["fext"].ToString();
        Label24.Text = ds.Tables[0].Rows[0]["fsizeinkb"].ToString();
        Label27.Text = ds.Tables[0].Rows[0]["fdatetime"].ToString();
        Label30.Text = ds.Tables[0].Rows[0]["fverify"].ToString();
        Label33.Text = ds.Tables[0].Rows[0]["fenccryptokey"].ToString();
        Label36.Text = ds.Tables[0].Rows[0]["fdownload"].ToString();
        Session["field1"] = Label12.Text;
        if (Label36.Text == "Allow")
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Cryptographic Key Already Sent To TPA.";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
            Button5.Enabled = false;
        }
        else
        {
            //
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ownerreqviewfn.aspx");
    }
}
