using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["insuranceConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            string message = textarea.Value;
            SqlCommand cmd = new SqlCommand("insert into report values('" + policy_no.Text + "','" + DropDownList1.SelectedValue+ "','" +textarea.Value + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            lblmsg.Text = "your issue is reported";

        }
    }
}