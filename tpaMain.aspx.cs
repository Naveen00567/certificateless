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

public partial class tpaMain : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string fverifyYES = "YES", fverifyNO = "NO", fdownload = "Allow", keyreq = "YES";

    protected void Page_Load(object sender, EventArgs e)
    {
        //Display a New Animated Image
        SqlDataAdapter adp4 = new SqlDataAdapter("select * from filearchive where keyrequest='" + keyreq + "' and fverify='" + fverifyNO + "' and fdownload='" + fdownload + "'", con);
        DataSet ds4 = new DataSet();
        adp4.Fill(ds4);
        if (ds4.Tables[0].Rows.Count == 0)
        {
            Image1.Visible = false;
        }
        else
        {
            Image1.Visible = true;
        }

        //Response for Cryptographic Key
        SqlDataAdapter adp = new SqlDataAdapter("select * from filearchive where fdownload='" + fdownload + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        Label14.Text = Convert.ToString("(" + ds.Tables[0].Rows.Count + ")");
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label2.Text = "<b>" + Label14.Text + "</b>" + " Number of Cryptographic response files.";
            lbkeyrequest.Visible = false;
        }
        else
        {
            Label2.Text = "<b>" + Label14.Text + "</b>" + " Number of Cryptographic key responses files are there, if you need to open";
        }

        //Verify Files
        SqlDataAdapter adp1 = new SqlDataAdapter("select * from filearchive where fverify='" + fverifyYES + "'", con);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        Label13.Text = Convert.ToString("(" + ds1.Tables[0].Rows.Count + ")");
        if (ds1.Tables[0].Rows.Count == 0)
        {
            Label4.Text = "<b>" + Label13.Text + "</b>" + " Number of verification files.";
            lbverify.Visible = false;
        }
        else
        {
            Label4.Text = "<b>" + Label13.Text + "</b>" + " Number of verification files are there, if you need to open";
        }


        //Pending Files
        SqlDataAdapter adp2 = new SqlDataAdapter("select * from filearchive where fverify='" + fverifyNO + "'", con);
        DataSet ds2 = new DataSet();
        adp2.Fill(ds2);
        Label12.Text = Convert.ToString("(" + ds2.Tables[0].Rows.Count + ")");
        if (ds2.Tables[0].Rows.Count == 0)
        {
            Label6.Text = "<b>" + Label12.Text + "</b>" + " Number of verification files.";
            lbpending.Visible = false;
        }
        else
        {
            Label6.Text = "<b>" + Label12.Text + "</b>" + " Number of verification files are there, if you need to open";
        }
    }

    protected void lbkeyrequest_Click(object sender, EventArgs e)
    {
        Response.Redirect("tparesver.aspx");
    }
    protected void lbverify_Click(object sender, EventArgs e)
    {
        Response.Redirect("tpamainver.aspx");
    }
    protected void lbpending_Click(object sender, EventArgs e)
    {
        Response.Redirect("tparespen.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}
