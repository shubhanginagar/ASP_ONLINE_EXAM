using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class regis : System.Web.UI.Page
    {
        string g;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(RadioButton1.Checked==true)
            {
                g= RadioButton1.Text;
            }
            else 
                g= RadioButton2.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    // Read the file data and convert it to a byte array
                    byte[] imageData;
                    using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
                    {
                        imageData = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
                    }
                    // Save the image data to the database
                    SaveImageDataToDatabase(FileUpload1.FileName, imageData);

                    // Display success message or redirect to another page
                    Response.Write("suucessful registration !");
                }
                catch (Exception ex)
                {
                    Response.Write("Error uploading image: " + ex.Message);
                }
            }
            else
            {
                Response.Write("Please select an image to upload.");
            }
        }
        private void SaveImageDataToDatabase(string imageName, byte[] imageData)
        {
            SqlConnection con = new SqlConnection("uid=sa;password=123;database=onlineExam;server=ASPIRE");
            con.Open();
            SqlCommand cmd = new SqlCommand("regis", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@r", TextBox1.Text);
            cmd.Parameters.AddWithValue("@fname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox10.Text);
            cmd.Parameters.AddWithValue("@dob", TextBox3.Text);
            cmd.Parameters.AddWithValue("@add", TextBox4.Text);
            cmd.Parameters.AddWithValue("@city", TextBox5.Text);
            cmd.Parameters.AddWithValue("@pin", TextBox6.Text);
            cmd.Parameters.AddWithValue("@email", TextBox12.Text);
            cmd.Parameters.AddWithValue("@photo", imageData);
            cmd.Parameters.AddWithValue("@pass", TextBox9.Text);
            cmd.Parameters.AddWithValue("@age", TextBox11.Text);
            cmd.Parameters.AddWithValue("@gender", g);

            int i = cmd.ExecuteNonQuery();

            Label14.Visible = true;

            string strSqlCommand = "update student set spassword='" + TextBox9.Text +"' where roll="+TextBox1.Text;          
            SqlCommand c = new SqlCommand(strSqlCommand, con);
            int a = c.ExecuteNonQuery();
            Response.Write(a);
            if(a == 0)
            {

               SqlCommand cm = new SqlCommand("insert into student values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox10.Text + "','" + TextBox12.Text + "'," + TextBox11.Text + ",'" + TextBox9.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<h2>done</h2>");
            }
        }
    }
}


 
