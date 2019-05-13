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
using System.Net;

public partial class tparesver2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    Cryptography cg = new Cryptography();
    string fileid, deckey;
    string filepat, filetype, filenam;

    protected void Page_Load(object sender, EventArgs e)
    {
        fileid = (string)Session["FileIDD"];
        TextBox1.Text = (string)Session["fenccryptokey"];
        TextBox1.ReadOnly = true;
        btn1.Enabled = false;
        btnverify.Enabled = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //SqlDataAdapter adp = new SqlDataAdapter("select * from filearchive where fid='" + (string)Session["FileIDD"] + "'", con);
        //DataSet ds = new DataSet();
        //adp.Fill(ds);
        deckey = Convert.ToString(cg.Decrypt(TextBox1.Text));
        Session["deckey"] = deckey;
        string myStringVariable1 = string.Empty;
        TextBox1.ReadOnly = false;
        myStringVariable1 = "Decrypted Cryptographic Key is :" + cg.Decrypt(TextBox1.Text);
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string deckey1 = (string)Session["deckey"];
        if (deckey1 == TextBox2.Text)
        {
            btn1.Enabled = true;
            btnverify.Enabled = true;
            TextBox1.ReadOnly = true;
        }
        else
        {
            btn1.Enabled = false;
        }
    }


    protected void btn1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from filearchive where fid = '" + (string)Session["FileIDD"] + "'", con);
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

    protected void btnverify_Click(object sender, EventArgs e)
    {
        Response.Redirect("tparesver3.aspx");
    }
}
