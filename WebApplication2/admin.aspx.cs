using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Ajax.Utilities;

namespace WebApplication2
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection("uid=sa ;  password=123 ; database=onlineExam ; server=ASPIRE");
                con.Open();
                SqlCommand cmd = new SqlCommand("Adminlogin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@admin_email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@admin_id", TextBox2.Text);
                cmd.Parameters.AddWithValue("@password", TextBox3.Text);
                int  i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i == 1)
                {
                    Response.Redirect("Alogin.aspx");
                    
                }
                else
                {
                    Label5.Visible = true;
                }
             
                con.Close();
                
            }

        }
    }
}