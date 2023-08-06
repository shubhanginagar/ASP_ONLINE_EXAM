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
    public partial class viewstudentresult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                fillgrid();
            }
        }
        private void fillgrid()
        {
            SqlConnection con = new SqlConnection("Initial catalog=onlineExam; integrated security=true;server=ASPIRE");
            SqlDataAdapter da = new SqlDataAdapter("select r.* , s.fname,s.lname,s.email from result r inner join student s on r.roll=s.roll", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}