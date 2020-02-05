using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

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

    protected void Button2_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["insuranceConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("insert into policy values('"+ Session["c_id"] + "','Endoment Policy','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("payment.aspx");

        }
    }
}