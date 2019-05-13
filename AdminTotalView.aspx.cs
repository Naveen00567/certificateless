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

public partial class AdminTotalView : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string fileid;

    protected void Page_Load(object sender, EventArgs e)
    {
        fileid = Request.Params["ID"];
        SqlDataAdapter adp = new SqlDataAdapter("Select * from filearchive where fid='" + fileid + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        Label3.Text = ds.Tables[0].Rows[0]["fid"].ToString();
        Label5.Text = ds.Tables[0].Rows[0]["ffilename"].ToString();
        Label7.Text = ds.Tables[0].Rows[0]["fsubject"].ToString();
        Label9.Text = ds.Tables[0].Rows[0]["fext"].ToString();
        Label11.Text = ds.Tables[0].Rows[0]["fsizeinkb"].ToString();
        Label13.Text = ds.Tables[0].Rows[0]["fowner"].ToString();
        Label15.Text = ds.Tables[0].Rows[0]["fverify"].ToString();
        Label17.Text = ds.Tables[0].Rows[0]["keyrequest"].ToString();
        Label19.Text = ds.Tables[0].Rows[0]["fmodify"].ToString();
        if (Label19.Text == "")
        {
            Label19.Text = " &nbsp -";
        }
        Session["path"] = ds.Tables[0].Rows[0]["filepath"].ToString();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (Label19.Text == "YES")
        {
            SqlCommand cmd = new SqlCommand("select * from filearchivemodify where fid = '" + Label3.Text + "'", con);
            DataTable dt = GetData(cmd);
            if (dt != null)
            {
                download(dt);
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("select * from filearchive where fid = '" + Label3.Text + "'", con);
            DataTable dt = GetData(cmd);
            if (dt != null)
            {
                download(dt);
            }
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
}
