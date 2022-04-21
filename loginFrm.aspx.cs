using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS424_Project
{
    public partial class loginFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string CS = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spUserslogin", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@user_email", txt_email.Text);
                    cmd.Parameters.AddWithValue("@password", txt_pass.Text);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        lbl_warning.Text = "Login Failed, Please contact with your admin";
                    }

                } 
            }
            else
            {
                pnl_warning.Visible = true;
                lbl_warning.Text = "Please fill all the requirements";
            }


        }
    }
}