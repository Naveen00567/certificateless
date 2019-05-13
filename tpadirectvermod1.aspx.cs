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
using System.Text;
using System.Runtime.InteropServices;

public partial class tpadirectvermod1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string fverify = "YES", fileid;
    string fmodify = "NO";


    protected void Page_Load(object sender, EventArgs e)
    {
        fileid = (string)Session["FileID"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd1 = new SqlCommand("update filearchive set fverify='" + fverify + "' where fid='" + (string)Session["FileID"] + "'", con);
        cmd1.ExecuteNonQuery();

        SqlCommand cmd2 = new SqlCommand("update filearchive set fmodify='" + fmodify + "' where fid='" + (string)Session["FileID"] + "'", con);
        cmd2.ExecuteNonQuery();

        con.Close();
        Response.Redirect("tpaverify.aspx");
    }
}
