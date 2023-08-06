using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

namespace WebApplication2
{
    public partial class studentl : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("studentlogin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@student_email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@student_roll", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox3.Text);
                int i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i == 1)
                {
                    string value = TextBox1.Text;
                    Session["Value"] = value;   //to store roll number for further using 
                    Response.Redirect("Slogin.aspx");

                }
                else
                {
                    Label4.Visible = true;
                }

                con.Close();

            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

           
            Response.Redirect("forgotPass.aspx");
        }
    }
}