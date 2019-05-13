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
using System.Net.Mail;

public partial class signin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string ownerid, ownerpwd, yes;
    string upid, uppwd;

    string gMailAccount = "krunal.randive@ritindia.edu";
    string password = "krunal123";
    string to;
    string subject = "secret key for login";
    string message;
    string Securitykey;
    string ranno;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        upid = TextBox1.Text.ToUpper();
        uppwd = TextBox2.Text.ToUpper();

        if (TextBox1.Text == "")
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Enter User ID";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
        else
        {
            if (TextBox2.Text == "")
            {
                string myStringVariable1 = string.Empty;
                myStringVariable1 = "Enter Password";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
            }
            else
            {
                if (upid == "ADMIN" && uppwd == "ADMIN")
                {
                    Response.Redirect("AdminMain.aspx");
                    //Session["AdminID"] = TextBox1.Text;
                }
                else if (upid == "TPA" && uppwd == "TPA")
                {
                    Session["tpa"] = TextBox1.Text;
                    Response.Redirect("tpamain.aspx");
                }
                else
                {
                    SqlDataAdapter adp = new SqlDataAdapter("select * from Registration", con);
                    DataSet ds = new DataSet();
                    adp.Fill(ds);
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        ownerid = ds.Tables[0].Rows[i]["ownerid"].ToString();
                        ownerpwd = ds.Tables[0].Rows[i]["ownerpwd"].ToString();
                        
                        if (TextBox1.Text == ownerid && TextBox2.Text == ownerpwd)
                        {
                            yes = "yes";
                            Random val = new Random();
                            int rno = val.Next(12345, 54321);
                            ranno = Convert.ToString(rno);
                            //     Session["rendomnum"] = ranno;

                            con.Open();
                            SqlCommand cmd = new SqlCommand("update Registration set securitykey='" + ranno + "'where ownerid='" + ownerid + "'", con);
                            cmd.ExecuteNonQuery();
                            con.Close();

                            ownerid = ds.Tables[0].Rows[i]["ownerid"].ToString();
                            message = "<hr><br>Hello " + "<b>" + ownerid + " ! </b><br><br>" + "Your Login Security Key is : " + "<b>" + ranno + "</b>";
                            to = ds.Tables[0].Rows[i]["emailid"].ToString();
                            NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
                            MailMessage msg = new MailMessage();
                            msg.From = new MailAddress(gMailAccount);
                            msg.To.Add(new MailAddress(to));
                            msg.Subject = subject;
                            msg.Body = message;
                            msg.IsBodyHtml = true;

                            try
                            {
                                SmtpClient client = new SmtpClient("smtp.gmail.com");
                                client.EnableSsl = true;
                                client.UseDefaultCredentials = false;
                                client.Credentials = loginInfo;
                                client.Send(msg);
                            }
                            catch (Exception ex)
                            {
                                Console.WriteLine("OFFLINE : Failure Sending Mail !", ex);
                            }

                        }
                    }
                    if (yes == "yes")
                    {
                        Session["ownerid"] = TextBox1.Text;
                        Response.Redirect("Signin2.aspx");
                    }
                    else
                    {
                          string myStringVariable1 = string.Empty;
                          myStringVariable1 = "Enter OwnerID/Password Correctly.";
                          ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                    }
                        
                 }
            }
        }       
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
