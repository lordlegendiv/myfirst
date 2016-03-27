using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;

namespace Bulletin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_id"]!=null)
            {
                Response.Redirect("home.aspx");
            }
        }

        AES obj = new AES();

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=Ghost\SQLExpress;Initial Catalog=Demo;Integrated Security=True;User ID=lordlegendiv@live.com;Password=@nshul11pr@");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [utb] where en_no=@en_no and pw=@pw", con);
            cmd.Parameters.AddWithValue("@en_no", uname.Text);
            cmd.Parameters.AddWithValue("@pw", obj.Encrypt(pword.Text.Trim()));

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {

                con.Open();
                cmd = new SqlCommand("select Id from [utb] where en_no=@username", con);
                cmd.Parameters.AddWithValue("@username", uname.Text);
                SqlDataReader rdr = cmd.ExecuteReader();
                rdr.Read();
                Session["u_id"] = Convert.ToInt32(rdr["Id"]);
                Response.Redirect("home.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}