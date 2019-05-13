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
using System.Drawing;

public partial class OwnerMain : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string keyrequestYES, fverify, fmodify, fdownload;
    int count = 0, count1 = 0, count2 = 0, count3 = 0;
    string keyreq = "YES", fdown = "Block";

    protected void Page_Load(object sender, EventArgs e)
    {
        //Display a New Animated Image
        SqlDataAdapter adp4 = new SqlDataAdapter("select * from filearchive where fowner='" + Session["ownerid"] + "' and keyrequest='" + keyreq + "' and fdownload='" + fdown + "'", con);
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

        //Request Files
        SqlDataAdapter adp = new SqlDataAdapter("select * from filearchive where fowner='" + Session["ownerid"] + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            keyrequestYES = ds.Tables[0].Rows[i]["keyrequest"].ToString();
            if (keyrequestYES == "YES")
            {
                count = count + 1;
            }
        }
        Label14.Text = Convert.ToString("(" + count + ")");
        if (count == 0)
        {
            Label2.Text = "<b>" + Label14.Text + "</b>" + " Number of Cryptographic key requested files.";
            lbkeyrequest.Visible = false;
        }
        else
        {
            Label2.Text = "<b>" + Label14.Text + "</b>" + " Number of Cryptographic key requested files are there, if you need to open";
        }


        //Direct Verify Files
        SqlDataAdapter adp1 = new SqlDataAdapter("select * from filearchive where fowner='" + Session["ownerid"] + "'", con);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
        {
            keyrequestYES = ds.Tables[0].Rows[j]["keyrequest"].ToString();
            fverify = ds.Tables[0].Rows[j]["fverify"].ToString();
            if (keyrequestYES == "Null" && fverify == "YES")
            {
                count1 = count1 + 1;
            }
        }
        Label13.Text = Convert.ToString("(" + count1 + ")");
        if (count1 == 0)
        {
            Label4.Text = "<b>" + Label13.Text + "</b>" + " Number of Direct Verification Files.";
            lbdirect.Visible = false;
        }
        else
        {
            Label4.Text = "<b>" + Label13.Text + "</b>" + " Number of Direct Verification Files are there, if you need to open";
        }


        //Download With No Modification
        SqlDataAdapter adp2 = new SqlDataAdapter("select * from filearchive where fowner='" + Session["ownerid"] + "'", con);
        DataSet ds2 = new DataSet();
        adp2.Fill(ds2);
        for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
        {
            fmodify = ds.Tables[0].Rows[j]["fmodify"].ToString();
            fverify = ds.Tables[0].Rows[j]["fverify"].ToString();
            fdownload = ds.Tables[0].Rows[j]["fdownload"].ToString();
            if (fmodify == "NO" && fverify == "YES" && fdownload == "Allow")
            {
                count2 = count2 + 1;
            }
        }
        Label12.Text = Convert.ToString("(" + count2 + ")");
        if (count2 == 0)
        {
            Label6.Text = "<b>" + Label12.Text + "</b>" + " Number of Download Verify Files with No Modification.";
            lbnomodify.Visible = false;
        }
        else
        {
            Label6.Text = "<b>" + Label12.Text + "</b>" + " Number of Download Verification Files - No Modification are there, if you need to open";
        }


        //Download With Modification
        SqlDataAdapter adp3 = new SqlDataAdapter("select * from filearchive where fowner='" + Session["ownerid"] + "'", con);
        DataSet ds3 = new DataSet();
        adp3.Fill(ds3);
        for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
        {
            fmodify = ds.Tables[0].Rows[j]["fmodify"].ToString();
            fverify = ds.Tables[0].Rows[j]["fverify"].ToString();
            if (fmodify == "YES" && fverify == "YES")
            {
                count3 = count3 + 1;
            }
        }
        Label11.Text = Convert.ToString("(" + count3 + ")");
        if (count3 == 0)
        {
            Label8.Text = "<b>" + Label11.Text + "</b>" + " Number of Download Verify Files with Modification.";
            lbmodify.Visible = false;
        }
        else
        {
            Label8.Text = "<b>" + Label11.Text + "</b>" + " Number of Download Verification Files - Modification are there, if you need to open";
        }
    }
    protected void lbkeyrequest_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ownerreqview.aspx");
    }
    protected void lbdirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("OwnerMainDirect.aspx");
    }
    protected void lbnomodify_Click(object sender, EventArgs e)
    {
        Response.Redirect("OwnerMainNoMod.aspx");
    }
    protected void lbmodify_Click(object sender, EventArgs e)
    {
        Response.Redirect("OwnerMainMod.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}
