using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if(Session["username"]!=null)
        {
            lblmsg.Text = "login Success ----> welcome " + Session["username"].ToString() + "";
        }
        else
        {
            Response.Redirect("signin.aspx");
        }
        string cs = ConfigurationManager.ConnectionStrings["insuranceConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("select * from users where user_name='" + Session["username"].ToString()+ "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet myds = new DataSet();
            sda.Fill(myds, "users");


            int count = myds.Tables["users"].Rows.Count;
            if(count>0)
            {
                Session["c_id"] = myds.Tables["users"].Rows[0][0].ToString();
                TextBox1.Text = Session["c_id"].ToString();
                Session["c_name"] = myds.Tables["users"].Rows[0][1].ToString();
                TextBox2.Text = Session["c_name"].ToString();
                Session["c_phn"] = myds.Tables["users"].Rows[0][2].ToString();
                TextBox3.Text = Session["c_phn"].ToString();
                Session["c_mail"] = myds.Tables["users"].Rows[0][3].ToString();
                TextBox4.Text = Session["c_mail"].ToString();
                Session["c_pwd"] = myds.Tables["users"].Rows[0][4].ToString();
                TextBox5.Text = Session["c_pwd"].ToString();
            }
            else
            {
                Label1.Text = "Record not found";
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("homepage.aspx");
    }
}