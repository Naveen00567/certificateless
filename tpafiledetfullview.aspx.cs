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

public partial class tpafiledetfullview : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string fileid, strmetadata;

    protected void Page_Load(object sender, EventArgs e)
    {
        fileid = Request.Params["ID"];
        SqlDataAdapter adp = new SqlDataAdapter("Select * from filearchive where fid='" + fileid + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        Label13.Text = ds.Tables[0].Rows[0]["fid"].ToString();
        Label23.Text = ds.Tables[0].Rows[0]["ffilename"].ToString();
        Label24.Text = ds.Tables[0].Rows[0]["fsubject"].ToString();
        Label25.Text = ds.Tables[0].Rows[0]["fext"].ToString();
        Label26.Text = ds.Tables[0].Rows[0]["fsizeinkb"].ToString();
        Label27.Text = ds.Tables[0].Rows[0]["fdatetime"].ToString();
        Label28.Text = ds.Tables[0].Rows[0]["fowner"].ToString();
        Label29.Text = ds.Tables[0].Rows[0]["fdownload"].ToString();
        Label30.Text = ds.Tables[0].Rows[0]["fverify"].ToString();
        Label31.Text = ds.Tables[0].Rows[0]["keyrequest"].ToString();
    }
}
