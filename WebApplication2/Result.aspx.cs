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
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string value = Session["Value"].ToString();
           
            SqlConnection con = new SqlConnection("Initial catalog=onlineExam; integrated security=true;server=ASPIRE");
            SqlDataAdapter da = new SqlDataAdapter("Select * from result where roll="+value , con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}