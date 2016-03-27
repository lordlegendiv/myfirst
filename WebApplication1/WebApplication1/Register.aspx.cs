using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bulletin
{
    public partial class Register : System.Web.UI.Page
    {

       AES obj = new AES();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        int userExistFlag=0;
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=Ghost\SQLExpress;Initial Catalog=Demo;Integrated Security=True;User ID=lordlegendiv@live.com;Password=@nshul11pr@");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [utb] where en_no='" + en_no.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label1.Text = "Enrollment No. Already Exists";
                this.Label1.ForeColor = Color.Red;
                userExistFlag = 1;
            }
            con.Close();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if(userExistFlag==0)
            {
                SqlConnection con = new SqlConnection(@"Data Source=Ghost\SQLExpress;Initial Catalog=Demo;Integrated Security=True;User ID=lordlegendiv@live.com;Password=@nshul11pr@");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into [utb] (name,en_no,pw,surname,email,sem,dept) values(@a,@b,@c,@d,@e,@f,@g)", con);
                cmd.Parameters.AddWithValue("a", name.Text);
                cmd.Parameters.AddWithValue("b", en_no.Text);
                cmd.Parameters.AddWithValue("c", obj.Encrypt(pword.Text.Trim()));
                cmd.Parameters.AddWithValue("d", surname.Text);
                cmd.Parameters.AddWithValue("e", email.Text);
                cmd.Parameters.AddWithValue("f", sem.Text);
                cmd.Parameters.AddWithValue("g", dept.Text);
                cmd.ExecuteNonQuery();

                Response.Redirect("Login.aspx");
                con.Close();
            }
            else
            {
                Label1.Text = "User Name Already Exists";
                this.Label1.ForeColor = Color.Red;
            }
            

        }

    }
}