using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class TpaMaster : System.Web.UI.MasterPage
{
    string link1, link2, link3;
    string seslink1, seslink2, seslink3;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "Welcome, " + "&nbsp&nbsp" + Session["tpa"] + " !";

        LinkButton1.BackColor = System.Drawing.ColorTranslator.FromHtml("#B40404");

        seslink1 = (string)Session["tpalink1"];
        seslink2 = (string)Session["tpalink2"];
        seslink3 = (string)Session["tpalink3"];

        if (seslink1 != null)
        {
            LinkButton1.BackColor = System.Drawing.ColorTranslator.FromHtml("#B40404");
            LinkButton2.BackColor = System.Drawing.ColorTranslator.FromHtml("#FE2E2E");
            LinkButton3.BackColor = System.Drawing.ColorTranslator.FromHtml("#FE2E2E");
            LinkButton4.BackColor = System.Drawing.ColorTranslator.FromHtml("#FE2E2E");

        }

        if (seslink2 != null)
        {
            LinkButton1.BackColor = System.Drawing.ColorTranslator.FromHtml("#FE2E2E");
            LinkButton2.BackColor = System.Drawing.ColorTranslator.FromHtml("#B40404");
            LinkButton3.BackColor = System.Drawing.ColorTranslator.FromHtml("#FE2E2E");
            LinkButton4.BackColor = System.Drawing.ColorTranslator.FromHtml("#FE2E2E");

        }

        if (seslink3 != null)
        {
            LinkButton1.BackColor = System.Drawing.ColorTranslator.FromHtml("#FE2E2E");
            LinkButton2.BackColor = System.Drawing.ColorTranslator.FromHtml("#FE2E2E");
            LinkButton3.BackColor = System.Drawing.ColorTranslator.FromHtml("#B40404");
            LinkButton4.BackColor = System.Drawing.ColorTranslator.FromHtml("#FE2E2E");

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        link1 = "yes";
        Session["tpalink1"] = link1;
        Session.Remove("tpalink2");
        Session.Remove("tpalink3");
        Response.Redirect("tpaMain.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        link2 = "yes";
        Session["tpalink2"] = link2;
        Session.Remove("tpalink1");
        Session.Remove("tpalink3");
        Response.Redirect("tpaverify.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        link3 = "yes";
        Session["tpalink3"] = link3;
        Session.Remove("tpalink1");
        Session.Remove("tpalink2");
        Response.Redirect("tpafiledetails.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session.Remove("tpalink1");
        Session.Remove("tpalink2");
        Session.Remove("tpalink3");
        Response.Redirect("default.aspx");
    }
}
