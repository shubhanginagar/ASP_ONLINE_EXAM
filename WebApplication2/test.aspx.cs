using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace WebApplication2
{
    public partial class test : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        static int i;
        static int mark;
        static int count;
        static int correct;
        
        protected void Page_Load(object sender, EventArgs e)
        {

            con = new SqlConnection("uid=sa;password=123;database=onlineExam;server=ASPIRE");
            da = new SqlDataAdapter("select * from Question", con);
            ds = new DataSet();
            da.Fill(ds);
            
        }

        void getdata()
        {
            if ((i >= 0) && (i < ds.Tables[0].Rows.Count))
            {
                Label2.Text = ds.Tables[0].Rows[i][0].ToString();
                Label3.Text = ds.Tables[0].Rows[i][1].ToString();
                RadioButtonList1.Items[0].Text = ds.Tables[0].Rows[i][2].ToString();
                RadioButtonList1.Items[1].Text = ds.Tables[0].Rows[i][3].ToString();
                RadioButtonList1.Items[2].Text = ds.Tables[0].Rows[i][4].ToString();
                RadioButtonList1.Items[3].Text = ds.Tables[0].Rows[i][5].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {  //SAVE AND NEXT QUESTION BUTTON 

            string a;

            a = ds.Tables[0].Rows[i][6].ToString();
            if (RadioButtonList1.SelectedIndex > -1)
            {
                if (RadioButtonList1.SelectedItem.Text == a)
                {

                    mark = mark + 5;
                    correct++;
                }
            }
            else
                mark = mark + 0;

        }    

        protected void Button2_Click(object sender, EventArgs e)
        {
            // THIS BUTTON IS TO START THE ASSEMENT 
                i = 0;
                getdata();
                mark = 0;
                correct=0;
                Button2.Visible = false;
                

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string value = Session["Value"].ToString();
            string res;
            if (mark >= 20)
                res = "PASS";
            else
                res = "FAIL";
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into result values (" + value + "," + mark + "," + correct + "," + count +",'" + res + "')", con);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Button4.Visible=false;
                Button5.Visible = true;
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            con = new SqlConnection("uid=sa;password=123;database=onlineExam;server=ASPIRE");
            da = new SqlDataAdapter("select * from keyword", con);
            ds = new DataSet();
            da.Fill(ds);
            Label8.Visible = true;
            Label8.Text = ds.Tables[0].Rows[i][1].ToString();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            //FOR NEXT QUESTION 

            i++;
            getdata();
            RadioButtonList1.ClearSelection();
            int c = ds.Tables[0].Rows.Count - 1;
            if (i == c)
            {

                Button4.Visible = true;
                Button7.Visible = false;

            }
            count = c + 1;
            Response.Write(count);
            Label8.Text = "";
        }
    }
}