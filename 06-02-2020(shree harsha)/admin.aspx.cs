﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if((username.Text=="admin")&&(password.Text=="pass"))
        {
            Session["admin"] = username.Text;
            Response.Redirect("adminpanel.aspx");
        }
        else
        {
            lblmsg.Text = "admin id or password is wrong";
        }
    }
}