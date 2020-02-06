using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        userid.Text = Session["c_id"].ToString();
        policyid.Text = Session["p_id"].ToString();
        amount.Text = Session["premium"].ToString();
    }

    protected void pay_Click(object sender, EventArgs e)
    {
        /* userid.Text = Session["c_id"].ToString();
         policyid.Text = Session["p_id"].ToString();
         amount.Text = Session["prem"].ToString();*/
        string cs = ConfigurationManager.ConnectionStrings["insuranceConnectionString1"].ConnectionString;
         using (SqlConnection con = new SqlConnection(cs))
         {

             SqlCommand pay = new SqlCommand("insert into payment values('" + Session["c_id"].ToString() + "','" + Session["prem"].ToString() + "','" + Session["p_id"].ToString()+ "','" + name.Text + "')", con);
             con.Open();
             pay.ExecuteNonQuery();
             Label9.Text = "payment is successfull";
             Response.Redirect("paymentsuccess.aspx");
            Label9.Text = Session["p_id"].ToString();
            // SqlCommand cli = new SqlCommand("insert into payment(user_id,payment_amount,policy_id) values('" + Session["c_id"].ToString() + "','"++"','" + Session["p_id"].ToString() + "','" + c_name.Text + "','" + c_address.Text + "','" + c_age.Text + "','" + c_phn.Text + "')", con);
        }
        Label9.Text = Session["p_id"].ToString();
    }
}