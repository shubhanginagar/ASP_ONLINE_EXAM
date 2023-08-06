using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class changepass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection("Initial catalog=onlineExam; integrated security=true;server=ASPIRE");
            int i;
            con.Open();
            SqlCommand cmd = new SqlCommand("Select count(*) from student where fname='" + TextBox1.Text + "'"+" and roll = "+TextBox2.Text, con);
            i=Convert.ToInt32(cmd.ExecuteScalar());
            Response.Write(i);
            if (i == 1)
            {
                Label2.Visible = true;
                GridView1.Visible = true;
                Button2.Visible = true;
                SqlDataAdapter da = new SqlDataAdapter("Select * from student where fname='" + TextBox1.Text + "'" + " and roll=" + TextBox2.Text, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();

            }
            else
            {
                Label3.Visible = true;
                GridView1.Visible = false;
            }
    
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button2.Visible = false;
            Label5.Visible = true;
            Label6.Visible = true;
            TextBox3.Visible = true; 
            TextBox4.Visible = true;
            Button3.Visible = true;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Initial catalog=onlineExam; integrated security=true;server=ASPIRE");
            int i;
            con.Open();
            SqlCommand cmd = new SqlCommand("update student set spassword='" + TextBox3.Text + "'" + "where spassword='" + TextBox4.Text + "' and roll=" + TextBox2.Text, con);
            i = cmd.ExecuteNonQuery();
            Label7.Visible = true;
            con.Close();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            RequiredFieldValidator2.Enabled = false;
            RequiredFieldValidator1.Enabled = false;
            Response.Redirect("Alogin.aspx");
        }
    }
}