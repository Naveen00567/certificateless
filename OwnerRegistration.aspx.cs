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

public partial class OwnerRegistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
  //  Class1 cs = new Class1();
    int ownerid, Securitykey = 0;
    string owrid, yes, yes1;

    protected void Page_Load(object sender, EventArgs e)
    {
       // ownerid = cs.idgeneration();
        //TextBox3.Text = DateTime.Now.ToShortDateString();
        //TextBox4.Attributes.Add("OnKeyPress", "ValidateNumeric()");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Enter UserID.";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
        else
        {
            if (TextBox7.Text == "")
            {
                string myStringVariable1 = string.Empty;
                myStringVariable1 = "Enter Full Name.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
            }
            else
            {
                if (TextBox2.Text == "")
                {
                    string myStringVariable1 = string.Empty;
                    myStringVariable1 = "Enter User Password.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                }
                else
                {
                    if (RadioButtonList1.SelectedIndex == -1)
                    {
                        string myStringVariable1 = string.Empty;
                        myStringVariable1 = "Select Gender";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                    }

                    else
                    {
                        if (TextBox3.Text == "")
                        {
                            string myStringVariable1 = string.Empty;
                            myStringVariable1 = "Enter your Date of Registration.";
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                        }
                        else
                        {
                            if (TextBox4.Text == "")
                            {
                                string myStringVariable1 = string.Empty;
                                myStringVariable1 = "Enter your contact number.";
                                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                            }
                            else
                            {
                                if (TextBox5.Text == "")
                                {
                                    string myStringVariable1 = string.Empty;
                                    myStringVariable1 = "Enter your Email ID.";
                                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                                }
                                else
                                {
                                    SqlDataAdapter adp = new SqlDataAdapter("select * from Registration", con);
                                    DataSet ds = new DataSet();
                                    adp.Fill(ds);
                                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                                    {
                                        //fnm = ds.Tables[0].Rows[i]["fullname"].ToString();
                                        owrid = ds.Tables[0].Rows[i]["ownerid"].ToString();
                                        if (owrid == TextBox1.Text)//(owrid == TextBox1.Text)
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
                                        SqlCommand cmd = new SqlCommand();
                                        con.Open();
                                        cmd.Connection = con;
                                        cmd.CommandType = CommandType.StoredProcedure;
                                        cmd.CommandText = "Registration";
                                        cmd.Parameters.Clear();
                                        cmd.Parameters.Add("@oid", SqlDbType.Int, 10);
                                        cmd.Parameters["@oid"].Value = ownerid;
                                        cmd.Parameters.Clear();
                                        cmd.Parameters.Add("@ownerid", SqlDbType.VarChar, 50);
                                        cmd.Parameters["@ownerid"].Value = TextBox1.Text;
                                        cmd.Parameters.Clear();
                                        cmd.Parameters.Add("@fullname", SqlDbType.NVarChar, 50);
                                        cmd.Parameters["@fullname"].Value = TextBox7.Text;
                                        cmd.Parameters.Clear();
                                        cmd.Parameters.Add("@ownerpwd", SqlDbType.NVarChar, 50);
                                        cmd.Parameters["@ownerpwd"].Value = TextBox2.Text;
                                        cmd.Parameters.Clear();
                                        cmd.Parameters.Add("@gender", SqlDbType.NVarChar, 10);
                                        cmd.Parameters["@gender"].Value = RadioButtonList1.SelectedItem.Text;
                                        cmd.Parameters.Clear();
                                        cmd.Parameters.Add("@date", SqlDbType.NVarChar, 10);
                                        cmd.Parameters["@date"].Value = TextBox3.Text;
                                        cmd.Parameters.Clear();
                                        cmd.Parameters.Add("@mobile", SqlDbType.BigInt, 15);
                                        cmd.Parameters["@mobile"].Value = TextBox4.Text;
                                        cmd.Parameters.Clear();
                                        cmd.Parameters.Add("@emailid", SqlDbType.NVarChar, 50);
                                        cmd.Parameters["@emailid"].Value = TextBox5.Text;
                                        cmd.Parameters.Clear();
                                        // Random val = new Random();
                                        //Securitykey = val.Next(12345, 54321);

                                        //int rno = val.Next(12345, 54321);
                                        //ranno = Convert.ToString(rno);
                                        // cmd.Parameters.Add("@securitykey", SqlDbType.Int, 5);
                                        //cmd.Parameters["@securitykey"].Value = ranno;
                                        //Session["rendomnum"] = ranno;

                                        //con.Open();
                                        //SqlCommand cmd = new SqlCommand("update Registration set securitykey='" + ranno + "'where ownerid='" + owrid + "'", con);
                                        //cmd.ExecuteNonQuery();
                                        //con.Close();
                                        cmd.Parameters.Add("@securitykey", SqlDbType.Int, 5);
                                        cmd.Parameters["@securitykey"].Value = Securitykey;

                                        cmd.ExecuteNonQuery();

                                        Response.Redirect("RegSuccess.aspx");
                                    }
                                    else
                                    {
                                        string myStringVariable1 = string.Empty;
                                        myStringVariable1 = "This User ID Already Exists.";
                                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox7.Text = "";
        TextBox2.Text = "";
        RadioButtonList1.SelectedIndex = -1;
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
