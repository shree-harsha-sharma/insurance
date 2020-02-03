using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class policy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList3.SelectedValue=="100000")
        {
            if((DropDownList1.SelectedValue=="20") && (DropDownList2.SelectedValue=="15"))
            {
                TextBox1 = 100000 / 15;
                TextBox2 = 100000 + 100000 * 0.60;
            }
        }
    }
}