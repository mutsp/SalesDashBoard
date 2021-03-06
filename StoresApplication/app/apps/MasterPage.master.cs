﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class MasterPage : System.Web.UI.MasterPage
{
    DatabaseHandler dac = new DatabaseHandler();
    Businesslogic bll = new Businesslogic();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if ((Session["UserName"] == null))
            {
                Response.Redirect("Login.aspx");
            }
            GetTotalSales();
            Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
            Response.Expires = -1500;
            Response.CacheControl = "no-cache";

            // Display Login Details......
            lblUser.Text = "Welcome : " + Session["FullName"].ToString().ToUpper();

        }
        catch (NullReferenceException)
        {
            Response.Redirect("Login.aspx");
        }
        catch (Exception ex)
        {
            lblmsg.Visible = true;
            lblmsg.Text = ex.Message;
        }
    }

    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        try
        {
            Session["UserName"] = null;
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        catch (Exception ex)
        {
            lblmsg.Visible = true;
            lblmsg.Text = ex.Message;
        }
    }

    protected void lnkHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("DashBoard.aspx");
    }

    protected void btnDownloadCV_Click(object sender, EventArgs e)
    {
        try
        {
            //GetData();
        }
        catch (Exception ex)
        {
            lblmsg.Visible = true;
            lblmsg.Text = ex.Message;
        }
    }

    protected void btnInbox_Click(object sender, EventArgs e)
    {

    }

    private void GetTotalSales()
    {
        int Sales=0;
        int cost=0;
        int profit=0;
        Sales = int.Parse(dac.GetTotalSales().Rows[0]["Sales"].ToString());
        Label2.Text = String.Format("{0:#,###,###.##}", Sales);
        cost = int.Parse(dac.GetTotalSales().Rows[0]["Cost"].ToString());
        Label3.Text = String.Format("{0:#,###,###.##}", cost);
        profit= int.Parse(dac.GetTotalSales().Rows[0]["Profit"].ToString());
        Label4.Text = String.Format("{0:#,###,###.##}", profit);
       
        DataGrid2.DataSource = dac.GetTotalreports();
        DataGrid2.DataBind();
    }

   
}
