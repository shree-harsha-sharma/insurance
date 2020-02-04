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


        if (Session["username"] != null)
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
                userid.Text = Session["c_id"].ToString();
                Session["c_name"] = myds.Tables["users"].Rows[0][1].ToString();
                name.Text = Session["c_name"].ToString();
                Session["c_age"] = myds.Tables["users"].Rows[0][2].ToString();
                age.Text = Session["c_age"].ToString();
                Session["c_phn"] = myds.Tables["users"].Rows[0][3].ToString();
                phn.Text = Session["c_phn"].ToString();
                Session["c_mail"] = myds.Tables["users"].Rows[0][4].ToString();
                mail.Text = Session["c_mail"].ToString();
                Session["c_add"] = myds.Tables["users"].Rows[0][5].ToString();
                address.Text = Session["c_add"].ToString();
               
            }
            else
            {
                Label1.Text = "Record not found";
            }

            SqlCommand pol = new SqlCommand("select * from policy where user_id='" + Session["c_id"].ToString() + "'", con);
            SqlDataAdapter policy = new SqlDataAdapter(pol);
            DataSet polds = new DataSet();
            policy.Fill(polds, "policy");
            int pcount = polds.Tables["policy"].Rows.Count;
            if (pcount > 0)
            {
                Session["p_id"] = polds.Tables["policy"].Rows[0][0].ToString();
                policyid.Text = Session["p_id"].ToString();
                Session["cus_id"] = polds.Tables["policy"].Rows[0][1].ToString();
                user.Text = Session["cus_id"].ToString();
               
                Session["ptype"] = polds.Tables["policy"].Rows[0][2].ToString();
                policytype.Text = Session["ptype"].ToString();
                Session["age"] = polds.Tables["policy"].Rows[0][3].ToString();
                userage.Text = Session["age"].ToString();
                Session["pterm"] = polds.Tables["policy"].Rows[0][4].ToString();
                term.Text = Session["pterm"].ToString();
                Session["assured"] = polds.Tables["policy"].Rows[0][5].ToString();
                assured.Text = Session["assured"].ToString();
                Session["prem"] = polds.Tables["policy"].Rows[0][6].ToString();
                premium.Text = Session["prem"].ToString();
                Session["maturity"] = polds.Tables["policy"].Rows[0][7].ToString();
                maturity.Text = Session["maturity"].ToString();
            }
            else
            {
                Label1.Text = "policy not found";

            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("homepage.aspx");
    }
}