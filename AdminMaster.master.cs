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

public partial class AdminMaster : System.Web.UI.MasterPage
{
    string link1, link2, link3;
    string seslink1, seslink2, seslink3;

    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton1.BackColor = System.Drawing.ColorTranslator.FromHtml("#B40404");

        seslink1 = (string)Session["link1"];
        seslink2 = (string)Session["link2"];
        seslink3 = (string)Session["link3"];

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
        Session["link1"] = link1;
        Session.Remove("link2");
        Session.Remove("link3");
        Response.Redirect("AdminMain.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        link2 = "yes";
        Session["link2"] = link2;
        Session.Remove("link1");
        Session.Remove("link3");
        Response.Redirect("AdminQuts.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        link3 = "yes";
        Session["link3"] = link3;
        Session.Remove("link1");
        Session.Remove("link2");
        Response.Redirect("AdminOwnerDetail.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session.Remove("link1");
        Session.Remove("link2");
        Session.Remove("link3");
        Response.Redirect("default.aspx");
    }
}
