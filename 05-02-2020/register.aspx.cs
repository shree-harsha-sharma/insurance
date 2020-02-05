using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void signup_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["insuranceConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("insert into users values('" + username.Text + "','"+uage.Text+"','" + phone.Text + "','" + email.Text + "','"+add.Text+"','" + password.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Server.Transfer("signin.aspx");

        }
    }
}