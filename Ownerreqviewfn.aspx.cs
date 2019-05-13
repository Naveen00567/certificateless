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

public partial class Ownerreqviewfn : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string field1, fdownload = "Allow";
    protected void Page_Load(object sender, EventArgs e)
    {
        field1 = (string)(Session["field1"]);
    }

    protected void btnfinish_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("update filearchive set fdownload='" + fdownload + "' where fid='" + field1 + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}
