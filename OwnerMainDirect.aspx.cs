﻿using System;
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

public partial class OwnerMainDirect : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string keyrequest = "Null", fverify = "YES";

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter adp = new SqlDataAdapter("Select * from filearchive where fowner='" + (string)Session["ownerid"] + "' and keyrequest='" + keyrequest + "' and fverify='" + fverify + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        Label5.Text = Convert.ToString("(" + ds.Tables[0].Rows.Count + ")");
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bindgrid();
    }
    public void bindgrid()
    {
        SqlDataAdapter adp = new SqlDataAdapter("Select * from filearchive where fowner='" + (string)Session["ownerid"] + "' and keyrequest='" + keyrequest + "' and fverify='" + fverify + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
