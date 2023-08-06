using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class update : System.Web.UI.Page
    {
        
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
               
                string rollNumber = Session["Value"].ToString();
                TextBox1.Text = rollNumber;

                // TO GET THE IMAGE FROM THE TABLE TO THE PROFILE PICTURE 

                byte[] imageData = GetStudentImageFromDatabase(rollNumber);
               
                if (imageData != null)
                {
                    string imageUrl = SaveStudentImageToServer(rollNumber, imageData);
                    Image1.ImageUrl = imageUrl;
                }

                SqlConnection sqlcon = new SqlConnection("Trusted_Connection = Yes; database = onlineExam; server = ASPIRE");
                sqlcon.Open();
                
                String query = "select * from registration where sno="+rollNumber;
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    TextBox9.Text = (dr["age"].ToString());
                    TextBox2.Text = (dr["email"].ToString());
                    TextBox7.Text = (dr["fname"].ToString());
                    TextBox8.Text = (dr["lname"].ToString());
                    TextBox3.Text = (dr["dob"].ToString());
                    TextBox4.Text = (dr["address"].ToString());
                    TextBox5.Text = (dr["city"].ToString());
                    TextBox6.Text = (dr["pin"].ToString());
                    TextBox10.Text = (dr["gender"].ToString());

                }
                sqlcon.Close();


            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            Label12.Visible = true;
            Label14.Visible = true;
            FileUpload1.Visible = true;
            TextBox4.ReadOnly = false;
            TextBox5.ReadOnly=false;
            TextBox6.ReadOnly=false;
            TextBox10.ReadOnly=false;
            Button1.Visible = false;
            Button3.Visible = true;

        }
        private string SaveStudentImageToServer(string rollNumber, byte[] imageData)
        {
            string fileName = rollNumber + ".jpg"; 
            string serverPath = Server.MapPath("~/images/"); 
            string filePath = Path.Combine(serverPath, fileName);

            File.WriteAllBytes(filePath, imageData);

            return "~/images/" + fileName;
        }
        private byte[] GetStudentImageFromDatabase(string rollNumber)
        {
            
            
            byte[] imageData = null;
            string connectionString = "uid=sa;password=123;database=onlineExam;server=ASPIRE";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                
                string query = "SELECT photo FROM registration WHERE sno =" +  rollNumber;
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    
                    con.Open();
                    object result = cmd.ExecuteScalar();

                    if (result != null && result != DBNull.Value)
                    {
                        
                        imageData = (byte[])result;
                    }
                }
            }

            return imageData;
        }

        protected void Button3_Click(object sender, EventArgs e)
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

                    
                    Response.Write("suucessful update !");
                }
                catch (Exception ex)
                {
                    Response.Write("Error uploading image: " + ex.Message);
                }
            }
            else

            {
                string rollNumber = Session["Value"].ToString();
                SqlConnection con = new SqlConnection("uid=sa;password=123;database=onlineExam;server=ASPIRE");
                con.Open();
                SqlCommand c = new SqlCommand("update registration set address='" + TextBox4.Text + "' , city ='" + TextBox5.Text + "' , pin='" + TextBox6.Text + "' , gender='" + TextBox10.Text + "' where sno =" + rollNumber, con);
                int a = c.ExecuteNonQuery();
                Response.Write("done changes");
            }
        }
        
        private void SaveImageDataToDatabase(string imageName, byte[] imageData)
        {
            string rollNumber = Session["Value"].ToString();
            SqlConnection con = new SqlConnection("uid=sa;password=123;database=onlineExam;server=ASPIRE");
            con.Open();
            SqlCommand c = new SqlCommand("update registration set photo='" + imageData + "' , address='" + TextBox4.Text + "' , city ='" + TextBox5.Text + "' ,  pin='" + TextBox6.Text + "' , gender='" + TextBox10.Text + "' where sno=" + rollNumber, con);
            int a = c.ExecuteNonQuery();
            Response.Write("done changes");
        }
    }
}
            