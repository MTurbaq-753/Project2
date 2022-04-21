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
    public partial class frm_Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string CS = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;

        protected void btn_register_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spUsersRegisterinsert", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@user_fname", txt_fname.Text);
                    cmd.Parameters.AddWithValue("@user_lname", txt_lname.Text);
                    cmd.Parameters.AddWithValue("@email", txt_email.Text);
                    cmd.Parameters.AddWithValue("@password", txt_pass.Text);
                    cmd.Parameters.AddWithValue("@role", DDL_Role.Text);
                    try
                    {
                        con.Open();
                        int value = (int)cmd.ExecuteScalar();
                        if (value == 1)
                        {
                            Response.Redirect("~/loginFrm.aspx?register=successfull");
                        }
                        else
                        {
                            pnl_warning.Visible = true;
                            lbl_warning.Text = "Email is already in use";
                        }

                    }
                    catch (Exception ex)
                    {
                        pnl_warning.Visible = true;
                        lbl_warning.Text = "Something went wrong! Contact your devloper </br>" + ex.Message;
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