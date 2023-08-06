using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ForgotPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentl.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("initial catalog=onlineExam;integrated security=true ;server=ASPIRE");
            cn.Open();
            SqlCommand cmd;
            int i;
            cmd = new SqlCommand("select count(*) from student where roll=" + TextBox1.Text + " and email='" + TextBox4.Text + "'", cn);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            if (i == 1)
            {
                cmd = new SqlCommand("update student set spassword='"+TextBox3.Text+"' where roll="+TextBox1.Text, cn);
                int c = cmd.ExecuteNonQuery();
                LinkButton1.Visible = true;
                Label5.Visible = true;
            }
            else
            {
                Response.Write(" CREDENTIALS ARE NOT CORRECT ");
            }
        }
    }
}