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
using System.IO;
using System.Data.SqlClient;

public partial class tparesver3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    Cryptography cr = new Cryptography();
    string fileid, filePath, filename, fileext, filesize, splitfilesize, binary1, date;
    string fileid1, filename1, filetype1, filemeta1, fowner1;
    string fmodify = "NO", fmodify1 = "YES";
    string fverify = "YES";
    float filesiz = 0f;
    string filelen, filelen1;

    protected void Page_Load(object sender, EventArgs e)
    {
        fileid = (string)Session["FileIDD"];
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        fileid = (string)Session["FileIDD"];

        filename = System.IO.Path.GetFileName(FileUpload1.FileName);

        if (filename == "")
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "select any one file";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
        //File Upload TextBox is Empty?
        else
        {
            filePath = Request.PhysicalApplicationPath + "Uploads1/" + System.IO.Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(filePath);

            byte[] filebytes = new byte[FileUpload1.PostedFile.InputStream.Length];
            FileUpload1.PostedFile.InputStream.Read(filebytes, 0, filebytes.Length);

            fileext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);

            filesiz = (float)FileUpload1.PostedFile.ContentLength / 1024;
            filesize = Convert.ToString(filesiz) + " KB";

            splitfilesize = Convert.ToString(filesiz);

            for (int i = 0; i < splitfilesize.Length; i++)
            {
                char c = splitfilesize[i];
                string binary = Convert.ToString(c, 2);
                binary1 = binary1 + binary;
            }

            date = Convert.ToString(DateTime.Now.ToShortDateString());

            //////
            FileStream sourceFile = new FileStream(filePath, FileMode.Open);
            long FileSize;
            FileSize = sourceFile.Length;

            SqlDataAdapter adp = new SqlDataAdapter("select * from filearchive where fid='" + (string)Session["FileIDD"] + "'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            fileid1 = ds.Tables[0].Rows[0]["fid"].ToString();
            filename1 = ds.Tables[0].Rows[0]["ffilename"].ToString();
            filetype1 = ds.Tables[0].Rows[0]["fext"].ToString();
            filemeta1 = cr.Decrypt(ds.Tables[0].Rows[0]["fmetadata"].ToString());
            fowner1 = ds.Tables[0].Rows[0]["fowner"].ToString();

            if (filename != filename1)
            {
                filelen = Convert.ToString(filename.Length);
                filelen1 = Convert.ToString(filename1.Length);
                if (filelen == filelen1)
                {
                    if (binary1 == filemeta1)
                    {
                        btnfinish.Enabled = true;
                        con.Open();
                        SqlCommand cmd1 = new SqlCommand("update filearchive set fmodify='" + fmodify + "' where fid='" + fileid + "'", con);
                        cmd1.ExecuteNonQuery();
                        SqlCommand cmd2 = new SqlCommand("update filearchive set fverify='" + fverify + "' where fid='" + fileid + "'", con);
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        string myStringVariable1 = string.Empty;
                        myStringVariable1 = "File Uploaded Successfully..";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                    }
                    else
                    {
                        btnfinish.Enabled = true;
                        con.Open();

                        // store filearchivemodify table
                        SqlCommand cmd = new SqlCommand("insert into filearchivemodify values('" + fileid1 + "','" + filePath + "',@files,'" + filename + "','" + fileext + "','" + filesize + "','" + date + "','" + binary1 + "','" + fverify + "','" + fowner1 + "')", con);
                        cmd.Parameters.AddWithValue("@files", filebytes);
                        cmd.ExecuteNonQuery();

                        SqlCommand cmd1 = new SqlCommand("update filearchive set fmodify='" + fmodify1 + "' where fid='" + fileid + "'", con);
                        cmd1.ExecuteNonQuery();
                        SqlCommand cmd2 = new SqlCommand("update filearchive set fverify='" + fverify + "' where fid='" + fileid + "'", con);
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        string myStringVariable1 = string.Empty;
                        myStringVariable1 = "File Uploaded Successfully..";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                    }
                }
                else
                {
                    btnfinish.Enabled = false;
                    string myStringVariable1 = string.Empty;
                    myStringVariable1 = "Upload Wrong File";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                }
            }
            else
            {
                if (binary1 == filemeta1)
                {
                    btnfinish.Enabled = true;
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("update filearchive set fmodify='" + fmodify + "' where fid='" + fileid + "'", con);
                    cmd1.ExecuteNonQuery();
                    SqlCommand cmd2 = new SqlCommand("update filearchive set fverify='" + fverify + "' where fid='" + fileid + "'", con);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    string myStringVariable1 = string.Empty;
                    myStringVariable1 = "File Uploaded Successfully..";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                }
                else
                {
                    btnfinish.Enabled = true;
                    con.Open();

                    SqlCommand cmd = new SqlCommand("insert into filearchivemodify values('" + fileid1 + "','" + filePath + "',@files,'" + filename + "','" + fileext + "','" + filesize + "','" + date + "','" + binary1 + "','" + fverify + "','" + fowner1 + "')", con);
                    cmd.Parameters.AddWithValue("@files", filebytes);
                    cmd.ExecuteNonQuery();

                    SqlCommand cmd1 = new SqlCommand("update filearchive set fmodify='" + fmodify1 + "' where fid='" + fileid + "'", con);
                    cmd1.ExecuteNonQuery();
                    SqlCommand cmd2 = new SqlCommand("update filearchive set fverify='" + fverify + "' where fid='" + fileid + "'", con);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    string myStringVariable1 = string.Empty;
                    myStringVariable1 = "File Uploaded Successfully..";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                }
            }
        }
    }



    protected void btnfinish_Click(object sender, EventArgs e)
    {
        Response.Redirect("tparesver4.aspx");
    }
}
