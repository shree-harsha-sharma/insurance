using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            Label1.Text = "login Success ----> welcome " + Session["admin"].ToString() + "";
        }
        else
        {
            Response.Redirect("signin.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        Response.Redirect("admin.aspx");

    }
}