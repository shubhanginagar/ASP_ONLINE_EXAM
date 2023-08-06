using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class keyword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                fillgrid();
            }
        }
        private void fillgrid()
        {
            SqlConnection con = new SqlConnection("Initial catalog=onlineExam; integrated security=true;server=ASPIRE");
            SqlDataAdapter da = new SqlDataAdapter("select q.* , k.kword from keyword k right outer join question q on k.question_id=q.question_id", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int n = e.NewEditIndex;
            GridView1.EditIndex = n;
            this.fillgrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new SqlConnection("Initial catalog=onlineExam; integrated security=true;server=ASPIRE");
            SqlCommand cmd = new SqlCommand();
            

            string id = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text.Trim();
            string keyword = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text.Trim();

            Response.Write(keyword);
            string strSqlCommand = "Update keyword Set kword='" + keyword + "' Where question_id=" + id ;
            con.Open();
            cmd = new SqlCommand(strSqlCommand, con);
            int i = cmd.ExecuteNonQuery();
            Response.Write(i);
            if (i == 1 )
            {
                Response.Write(" Data Updated Successfully!!!");
                GridView1.EditIndex = -1; //Refresh GridView 
                this.fillgrid();
            }
            else if(i==0)
            {
                string command2 = "insert into keyword values("+id+",'"+keyword+"')";
                cmd = new SqlCommand(command2, con);
                int c = cmd.ExecuteNonQuery();
                Response.Write(c);
                if (c == 1)
                {
                    Response.Write(" Data Updated Successfully!!!");
                    GridView1.EditIndex = -1; //Refresh GridView 
                    this.fillgrid();
                }
                
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1; //no editing row
            this.fillgrid();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {


              
        }
    }
}