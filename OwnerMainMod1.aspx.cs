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

public partial class OwnerMainMod1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string enckey, fileid;
    Cryptography cs = new Cryptography();

    protected void Page_Load(object sender, EventArgs e)
    {
        fileid = Request.Params["ID"];
        SqlDataAdapter adp = new SqlDataAdapter("Select * from filearchive where fid='" + fileid + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        Label14.Text = ds.Tables[0].Rows[0]["fid"].ToString();
        Label15.Text = ds.Tables[0].Rows[0]["ffilename"].ToString();
        Label16.Text = ds.Tables[0].Rows[0]["fsubject"].ToString();
        Label17.Text = ds.Tables[0].Rows[0]["fext"].ToString();
        Label35.Text = ds.Tables[0].Rows[0]["fsizeinkb"].ToString();
        Label18.Text = ds.Tables[0].Rows[0]["fdatetime"].ToString();
        Label19.Text = ds.Tables[0].Rows[0]["fverify"].ToString();
        Label20.Text = ds.Tables[0].Rows[0]["keyrequest"].ToString();
        Label21.Text = ds.Tables[0].Rows[0]["fmodify"].ToString();
        Session["key"] = ds.Tables[0].Rows[0]["fenccryptokey"].ToString();
        enckey = (string)Session["key"];
        Session["key1"] = cs.Decrypt(enckey);
        Session["path"] = ds.Tables[0].Rows[0]["filepath"].ToString();
        Session["FileIDD"] = Label14.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("OwnerMainMod2.aspx");
    }
    /*
    protected void Button2_Click(object sender, EventArgs e)
    {
        ModalPopupExtender1.Show();

        enckey1 = (string)Session["key"];
        if (TextBox2.Text == enckey1)
        {
            TextBox3.Text = (string)Session["key1"];
            TextBox2.Enabled = false;
            btndownload.Enabled = true;
        }
        else
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Cryptographic Key Error.";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        ModalPopupExtender1.Show();
        TextBox2.Text = (string)Session["key"];
    }
    protected void btndownload_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;

        SqlCommand cmd = new SqlCommand("select * from filearchivemodify where fid = '" + Label14.Text + "'", con);
        DataTable dt = GetData(cmd);
        if (dt != null)
        {
            download(dt);
        }
    }
    private DataTable GetData(SqlCommand cmd)
    {

        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
        }
        catch
        {
            return null;
        }

        finally
        {
            con.Close();
            sda.Dispose();
            con.Dispose();
        }
    }

    private void download(DataTable dt)
    {

        Byte[] bytes = (Byte[])dt.Rows[0]["filebytes"];
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //ftype = dt.Rows[0]["filetype"].ToString();
        //Response.ContentType = "application/"+ ftype+" ";
        Response.ContentType = dt.Rows[0]["fext"].ToString();
        Response.AddHeader("content-disposition", "attachment;filename=" + dt.Rows[0]["ffilename"].ToString());
        //Response.BinaryWrite("<script type='text/javascript'> <embed src='bytes' style=width:300px; height:200px;> </embed> </script> ");
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Page_Load(null, EventArgs.Empty);
    }  */
}

