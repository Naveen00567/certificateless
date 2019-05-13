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

public partial class OwnerMainMod2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string enckey, fileid;
    Cryptography cs = new Cryptography();

    protected void Page_Load(object sender, EventArgs e)
    {
        fileid = (string)Session["FileIDD"];

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //ModalPopupExtender1.Show();
        TextBox2.Text = (string)Session["key"];
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Page_Load(null, EventArgs.Empty);
    }
    protected void btncheck_Click(object sender, EventArgs e)
    {
        //ModalPopupExtender1.Show();

        enckey = (string)Session["key"];
        if (TextBox2.Text == enckey)
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
    protected void btndownload_Click(object sender, EventArgs e)
    {
        //Panel3.Visible = false;

        SqlCommand cmd = new SqlCommand("select * from filearchivemodify where fid = '" + fileid + "'", con);
        DataTable dt = GetData(cmd);
        if (dt != null)
        {
            download(dt);
        }
        Response.Redirect("OwnerMainMod.aspx");
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
}
