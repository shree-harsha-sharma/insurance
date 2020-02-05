using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
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
            Label6.Text = "buy policy successfull please add the claimant";

        }
    }

    protected void claimant_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["insuranceConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand pol = new SqlCommand("select * from policy where user_id='" + Session["c_id"].ToString() + "'", con);
            SqlDataAdapter policy = new SqlDataAdapter(pol);
            DataSet polds = new DataSet();
            policy.Fill(polds, "policy");
            int pcount = polds.Tables["policy"].Rows.Count;
            if (pcount > 0)
            {
                Session["p_id"] = polds.Tables["policy"].Rows[0][0].ToString();  
            }

            SqlCommand cli = new SqlCommand("insert into claimant values('" + Session["c_id"].ToString() + "','" + Session["p_id"].ToString() + "','" + c_name.Text + "','" + c_address.Text + "','" + c_age.Text + "','" + c_phn.Text + "')", con);
            con.Open();
            cli.ExecuteNonQuery();
            Label11.Text = "claimant added successfully";
            Response.Redirect("payment.aspx");
        }
    }
}