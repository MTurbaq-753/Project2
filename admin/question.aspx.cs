using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS424_Project.admin
{
    public partial class question : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string eid = Request.QueryString["eid"];
                if (eid == null)
                {
                     
                }
            }
        }
        string s = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;
        protected void btn_addquestion_Click(object sender, EventArgs e)
        {
            
            if (IsValid)
            {
                using (SqlConnection con = new SqlConnection(s))
                {
                    SqlCommand cmd = new SqlCommand("spAddquestion", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID", txtQNo.Text);
                    cmd.Parameters.AddWithValue("@QuestionName", txt_questionname.Text);
                    cmd.Parameters.AddWithValue("@Op1", txt_optionone.Text);
                    cmd.Parameters.AddWithValue("@Op2", txt_optiontwo.Text);
                    cmd.Parameters.AddWithValue("@Op3", txt_optionthree.Text);
                    cmd.Parameters.AddWithValue("@Op4", txt_optionfour.Text);

                   
                    try
                    {
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            Response.Redirect("~/admin/Default.aspx");
                        }
                        else
                        {
                            txt_questionname.Focus();
                            panel_addquestion_warning.Visible = true;
                            lbl_addquestionwarning.Text = "Try again. Subject is not added";
                        }
                    }
                    catch (Exception ex)
                    {
                        txt_questionname.Focus();
                        panel_addquestion_warning.Visible = true;
                        lbl_addquestionwarning.Text = "Something went wrong. Subject is not added </br>" + ex.Message;
                    }
                }
            }
            else
            {
                txt_questionname.Focus();
                panel_addquestion_warning.Visible = true;
                lbl_addquestionwarning.Text = "You must fill all the requirements";
            }
        }
    }
}