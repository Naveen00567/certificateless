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
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;

public partial class AdminQuts : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string emailid;
    string gMailAccount = "krunal.randive@ritindia.edu";
    string password = "krunal123";
    string to;
    string subject = "Warning From ADMIN";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter adp = new SqlDataAdapter("Select ffilename from filearchivemodify", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i]["ffilename"].ToString());
            }
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedItem.Text == "--Select--")
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Select Owner";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
        else
        {
            SqlDataAdapter adp1 = new SqlDataAdapter("Select emailid from Registration where ownerid='" + DropDownList2.SelectedItem.Text + "'", con);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);
            emailid = ds1.Tables[0].Rows[0]["emailid"].ToString();

            to = emailid;
            NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(gMailAccount);
            msg.To.Add(new MailAddress(to));
            msg.Subject = subject;
            msg.Body = TextBox1.Text;
            msg.IsBodyHtml = true;
            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = loginInfo;
                client.Send(msg);

                string myStringVariable1 = string.Empty;
                myStringVariable1 = "Message Sent To Owner";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
            }
            catch (Exception ex)
            {
                string myStringVariable1 = string.Empty;
                myStringVariable1 = "OFFLINE : Message Not Sent To Owner";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
            }
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        DropDownList2.Items.Insert(0, "--Select--");

        if (DropDownList1.SelectedItem.Text == "--Select--")
        {
            DropDownList2.SelectedItem.Text = "--Select--";
            TextBox1.Text = "";
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Select Any One File";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
        else
        {
            if (DropDownList1.SelectedItem.Text == "None")
            {
                TextBox1.Text = "File Name : " + DropDownList1.SelectedItem.Text + " ! " + " File Owner : " + DropDownList2.SelectedItem.Text + " ! ";

                DropDownList2.SelectedItem.Text = "--Select--";
                SqlDataAdapter adp = new SqlDataAdapter("Select distinct fowner from filearchive", con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    DropDownList2.Items.Add(ds.Tables[0].Rows[i]["fowner"].ToString());
                }
            }
            else
            {
                SqlDataAdapter adp1 = new SqlDataAdapter("Select fowner from filearchivemodify where ffilename='" + DropDownList1.SelectedItem.Text + "'", con);
                DataSet ds1 = new DataSet();
                adp1.Fill(ds1);
                DropDownList2.SelectedItem.Text = ds1.Tables[0].Rows[0]["fowner"].ToString();
                Button5.Enabled = true;

                TextBox1.Text = "File Name : " + DropDownList1.SelectedItem.Text + " ! " + " File Owner : " + DropDownList2.SelectedItem.Text + " ! ";
            }
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedItem.Text == "--Select--")
        {
            Button5.Enabled = false;
        }
        else
        {
            //TextBox2.Text = "<hr><br>" + " File Name : " + DropDownList1.SelectedItem.Text + " ! <br><br>" + " File Owner : " + DropDownList2.SelectedItem.Text + " ! <br><br>";
            TextBox1.Text = "File Name : " + DropDownList1.SelectedItem.Text + " ! " + " File Owner : " + DropDownList2.SelectedItem.Text + " ! ";

            Button5.Enabled = true;
        }
    }
}
