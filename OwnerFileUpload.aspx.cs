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
using System.Diagnostics;
using System.Text;
using System.Security.Cryptography;
using System.IO;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class OwnerFileUpload : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    Class1 cs = new Class1();
    Cryptography cr = new Cryptography();

    string gMailAccount = "krunal.randive@ritindia.edu";
    string password = "krunal123";
    string to;
    string subject = "Cryptography Encryption Key";
    string message;

    string ownerid, filePath, filename, filesize, fileext, date;
    string cryptographykey, fileenccryptographykey;
    float filesiz = 0f;
    string splitfilesize, checkfilename, yes, yes1, binary1, binary1enc;
    string fverify = "NO", fmodify = "", fdownload = "Block", keyrequest = "Null", emailid;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(cs.idgeneration1());
        ownerid = (string)Session["ownerid"];
       // Label7.Text = "Welcome, " + "&nbsp&nbsp" + (string)Session["ownerid"] + " !";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
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


            filePath = Request.PhysicalApplicationPath + "Uploads/" + System.IO.Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(filePath);

            byte[] filebytes = new byte[FileUpload1.PostedFile.InputStream.Length];
            FileUpload1.PostedFile.InputStream.Read(filebytes, 0, filebytes.Length);
            //byte[] filebytes = new byte[AsyncFileUpload1.PostedFile.InputStream.Length];

            fileext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);

            filesiz = (float)FileUpload1.PostedFile.ContentLength / 1024;

            filesize = Convert.ToString(filesiz) + " KB";

            date = Convert.ToString(DateTime.Now.ToShortDateString());

            Random val = new Random();
            int rno = val.Next(12345, 54321);
            cryptographykey = Convert.ToString(rno);

            //sample
            //DisplayFileContents(AsyncFileUpload1.PostedFile);

            //fileencpath = Request.PhysicalApplicationPath + "Uploads/publickey.txt";
            //filedecpath = Request.PhysicalApplicationPath + "Uploads/privatekey.txt";
            //Cryptography.AssignNewKey(fileencpath, filedecpath);
            //fileenckey = Convert.ToString(Cryptography.EncryptData(ranno, fileencpath));
            //filedeckey = Convert.ToString(Cryptography.EncryptData(fileenckey, filedecpath));

            //cryptographykey encryption
            fileenccryptographykey = cr.Encrypt(cryptographykey);

            splitfilesize = Convert.ToString(filesiz);

            for (int i = 0; i < splitfilesize.Length; i++)
            {
                char c = splitfilesize[i];
                string binary = Convert.ToString(c, 2);
                binary1 = binary1 + binary;
            }

            binary1enc = cr.Encrypt(binary1);

            TextBox1.Text = binary1;
            TextBox1.Visible = true;

            if (TextBox2.Text == "")
            {
                string myStringVariable1 = string.Empty;
                myStringVariable1 = "Enter File Subject.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
            }
            //File Subject TextBox is Empty?
            else
            {
                SqlDataAdapter adp = new SqlDataAdapter("select * from filearchive", con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    checkfilename = ds.Tables[0].Rows[i]["ffilename"].ToString();
                    if (checkfilename == filename)
                    {
                        yes = "yes";
                        goto Outer;
                    }
                    else
                    {
                        yes = "no";
                    }
                }
            Outer:
                yes1 = "yes";

                if (yes != "yes")
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into filearchive values('" + Label1.Text + "','" + TextBox2.Text + "','" + filePath + "',@files,'" + filename + "','" + fileext + "','" + filesize + "','" + date + "','" + ownerid + "','" + fileenccryptographykey + "','" + binary1enc + "','" + fverify + "','" + fmodify + "','" + fdownload + "','" + keyrequest + "')", con);
                    cmd.Parameters.AddWithValue("@files", filebytes);
                    cmd.ExecuteNonQuery();
                    con.Close();
                  
                    //filename = "";

                    /* Label7.Text = "File Uploaded Successfully..";
                     Button2.Text = "OK";
                     Label7.ForeColor = System.Drawing.ColorTranslator.FromHtml("#088A08");
                     ModalPopupExtender1.Show();
                     Panel3.Visible = true;
                     */
                   
                    SqlDataAdapter adp1 = new SqlDataAdapter("select * from Registration where ownerid='" + (string)Session["ownerid"] + "'", con);
                    DataSet ds1 = new DataSet();
                    adp1.Fill(ds1);
                    emailid = ds1.Tables[0].Rows[0]["emailid"].ToString();

                    message = "<hr><br>" + "File Name : <b>" + filename + " ! </b><br><br>" + "Cryptography Encryption Key is : " + "<b>" + fileenccryptographykey + "</b>";
                    to = emailid;
                    NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress(gMailAccount);
                    msg.To.Add(new MailAddress(to));
                    msg.Subject = subject;
                    msg.Body = message;
                    msg.IsBodyHtml = true;

                    try
                    {
                        //Label6.Visible = true;
                       // Label6.ForeColor = System.Drawing.ColorTranslator.FromHtml("#226116");
                       // Label6.Text = "File Cryptography Encryption Key Sent To Mail !";
                        SmtpClient client = new SmtpClient("smtp.gmail.com");
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = loginInfo;
                        client.Send(msg);
                    }
                    catch (Exception ex)
                    {
                        //Label6.Visible = true;
                       // Label6.ForeColor = System.Drawing.ColorTranslator.FromHtml("#fa0505");
                        Console.WriteLine(ex);
                       // Label6.Text = "OFFLINE : Failure Sending Mail !";
                    }
                    
                    //NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
                    //MailMessage msg = new MailMessage();
                    //msg.From = new MailAddress(gMailAccount);
                    //msg.To.Add(new MailAddress(TextBox5.Text));
                    //msg.Subject = subject;
                    //msg.Body = message;
                    //msg.IsBodyHtml = true;

                    //SmtpClient client = new SmtpClient("smtp.gmail.com");
                    //client.EnableSsl = true;
                    //client.UseDefaultCredentials = false;
                    //client.Credentials = loginInfo;
                    //client.Send(msg);

                    //MailMessage mail = new MailMessage();
                    //mail.To = TextBox5.Text;
                    //mail.From = gMailAccount;
                    //mail.Subject = "secret key";
                    //mail.Body = "this is my test email body";
                    //mail.BodyFormat = MailFormat.Html;
                    ////mail.Priority = MailPriority.Normal;
                    //SmtpMail.SmtpServer = "localhost";  //your real server goes here
                    //SmtpMail.Send(mail);
                    Response.Redirect("UploadSuccess.aspx");

                }
                else
                {
                    string myStringVariable1 = string.Empty;
                    myStringVariable1 = "This File Name Already Exists.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                }
            }
            //filedeckey = cr.Decrypt(fileenckey);

            Page_Load(null, EventArgs.Empty);
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Visible = false;
    }
}
