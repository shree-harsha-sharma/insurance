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
      
        if(DropDownList1.SelectedValue == 20.ToString())
        {
            int sum_assured = int.Parse(DropDownList3.SelectedValue);
            int term = int.Parse(DropDownList2.SelectedValue);

            TextBox1.Text = (sum_assured/term).ToString();
            TextBox2.Text = (sum_assured + (sum_assured * 0.65)).ToString();
        }
        else if (DropDownList1.SelectedValue == 30.ToString())
        {
            int sum_assured = int.Parse(DropDownList3.SelectedValue);
            int term = int.Parse(DropDownList2.SelectedValue);

            TextBox1.Text = (sum_assured / term).ToString();
            TextBox2.Text = (sum_assured + (sum_assured * 0.57)).ToString();
        }
        else if (DropDownList1.SelectedValue == 40.ToString())
        {
            int sum_assured = int.Parse(DropDownList3.SelectedValue);
            int term = int.Parse(DropDownList2.SelectedValue);

            TextBox1.Text = (sum_assured / term).ToString();
            TextBox2.Text = (sum_assured + (sum_assured * 0.50)).ToString();
        }
       

    }
}