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

public partial class AdminMain : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string fverifyYES = "YES", fverifyNO = "NO", fmodify = "YES", fmodify1 = "NO";

    protected void Page_Load(object sender, EventArgs e)
    {
         SqlDataAdapter adp = new SqlDataAdapter("select * from filearchive where fmodify='" + fmodify + "'", con);
        DataSet ds = new DataSet();
        try
        {
            adp.Fill(ds);
        }
        catch (Exception excep) { Response.Redirect("OwnerMainDirect.aspx"); }
        Label14.Text = Convert.ToString("(" + ds.Tables[0].Rows.Count + ")");
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label2.Text = "<b>" + Label14.Text + "</b>" + " Number of TPA Modification files.";
            //lbmodify.Visible = false;
        }
        else
        {
            Label2.Text = "<b>" + Label14.Text + "</b>" + " Number of TPA Modification responses files are there, if you need to open";
        }


        //Verify Files
        SqlDataAdapter adp1 = new SqlDataAdapter("select * from filearchive where fverify='" + fverifyYES + "' and fmodify='" + fmodify1 + "'", con);
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

        //All Files
        SqlDataAdapter adp3 = new SqlDataAdapter("select * from filearchive", con);
        DataSet ds3 = new DataSet();
        adp3.Fill(ds3);
        Label11.Text = Convert.ToString("(" + ds3.Tables[0].Rows.Count + ")");
        if (ds3.Tables[0].Rows.Count == 0)
        {
            Label8.Text = "<b>" + Label11.Text + "</b>" + " Number of Owner Files.";
            lbpending.Visible = false;
        }
        else
        {
            Label8.Text = "<b>" + Label11.Text + "</b>" + " Number of Owner Files are there, if you need to open";
        }
    }

    protected void lbmodify_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminModify.aspx");
    }
    protected void lbverify_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminVerify.aspx");
    }
    protected void lbpending_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPending.aspx");
    }
    protected void lball_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminAllFiles.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

}
