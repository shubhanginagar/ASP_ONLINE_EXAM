using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa ;  password=123 ; database=onlineExam ; server=ASPIRE");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into question values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','"+ TextBox6.Text+"')", con);         
            int i = cmd.ExecuteNonQuery();
            con.Close();
            Label7.Visible = true;
        }
    }
}