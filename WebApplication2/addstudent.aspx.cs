using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class addstudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa ;  password=123 ; database=onlineExam ; server=ASPIRE");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into student values ("+TextBox1.Text+",'"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"',"+TextBox5.Text +",'"+TextBox7.Text+"')", con);
            //Response.Write("insert into student values (" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'" + TextBox7.Text + "')");
           int i = cmd.ExecuteNonQuery();
            con.Close();
            Label8.Visible = true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Alogin.aspx");
            

        }
    }
}