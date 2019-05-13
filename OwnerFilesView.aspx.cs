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

public partial class OwnerFilesView : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string fileid, strmetadata;
    string enckey;
    Cryptography cs = new Cryptography();

    protected void Page_Load(object sender, EventArgs e)
    {
         fileid = Request.Params["ID"];
        SqlDataAdapter adp = new SqlDataAdapter("Select * from filearchive where fid='" + fileid + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        Label12.Text = ds.Tables[0].Rows[0]["fid"].ToString();
        Label13.Text = ds.Tables[0].Rows[0]["ffilename"].ToString();
        Label14.Text = ds.Tables[0].Rows[0]["fsubject"].ToString();
        Label15.Text = ds.Tables[0].Rows[0]["fext"].ToString();
        Label17.Text = ds.Tables[0].Rows[0]["fsizeinkb"].ToString();
        Label18.Text = ds.Tables[0].Rows[0]["fdatetime"].ToString();
        Label19.Text = ds.Tables[0].Rows[0]["fverify"].ToString();
        strmetadata = ds.Tables[0].Rows[0]["fmetadata"].ToString();
        if (strmetadata.Length > 40)
        {
            Label21.Text = strmetadata.Substring(0, 40) + "..";
        }
        else
        {
            Label21.Text = strmetadata;
        }
        Label20.Text = ds.Tables[0].Rows[0]["keyrequest"].ToString();
        Session["key"] = ds.Tables[0].Rows[0]["fenccryptokey"].ToString();
        enckey = (string)Session["key"];
        Session["key1"] = cs.Decrypt(enckey);
        Session["path"] = ds.Tables[0].Rows[0]["filepath"].ToString();

       // Session["fenccryptokey"] = enckey;
        Session["FileIDD"] = Label12.Text;
    }

    /*protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Page_Load(null, EventArgs.Empty);
    }*/
    protected void Button6_Click(object sender, EventArgs e)
    {
        //ModalPopupExtender1.Show();
        Response.Redirect("OwnerFilesView1.aspx");
    }
   /* protected void btncheck_Click(object sender, EventArgs e)
    {
        ModalPopupExtender1.Show();
    */
        

}
