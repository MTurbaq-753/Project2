using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS424_Project.Pages
{
    public partial class CSSExam : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
                questionistmethod();
            }

        }

        public void questionistmethod()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spQuestionserachexam", con);
                cmd.CommandType = CommandType.StoredProcedure;
                 try
                {
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.HasRows)
                    {
                        gridview_examquestion.DataSource = rd;
                        gridview_examquestion.DataBind();
                    }
                    else
                    {
                         lbl_questshowwarning.Text = "Sorry! There is no question in this exam";
                    }
                }
                catch (Exception ex)
                {
                    panel_questshow_warning.Visible = true;
                    lbl_questshowwarning.Text = "Something went wrong. Please try after sometime later</br> Contact you developer for this problem" + ex.Message;
                }
            }
        }

    }
}