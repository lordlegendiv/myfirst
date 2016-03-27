using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(Session["u_id"]!=null)
           // {
                //SqlConnection con = new SqlConnection(@"Data Source=Ghost\SQLExpress;Initial Catalog=Demo;Integrated Security=True;User ID=lordlegendiv@live.com;Password=@nshul11pr@");
                //con.Open();
                //SqlCommand cmd = new SqlCommand("select name from [utb] where Id=@id", con);
                //cmd.Parameters.AddWithValue("id", Session["u_id"].ToString());
                //SqlDataReader dr = cmd.ExecuteReader();
                //var name = dr["name"];

               // con.Close();
                Label1.Text = "Welcome! ";
         //   }
           
            //else
           // {
            //    Label1.Text = "Error";
            //}
        }
    }
}