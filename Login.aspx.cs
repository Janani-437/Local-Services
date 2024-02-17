using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int roleId = -1;
            string email;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string query = "select * from users where email = @email and password = @password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@email", emailtxt.Text);
            cmd.Parameters.AddWithValue("@password", passtxt.Text);
            
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["roleId"] = dr[9];
                    Session["email"] = dr[2];
                    roleId = Convert.ToInt32(dr[9]);
                    email = Convert.ToString(dr[2]);
                }



                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(Session('roleId'))</scripts>");



                if (roleId == 1)
                {
                    Response.Redirect("customer.aspx");
                }
                else if (roleId == 2)
                {
                    Response.Redirect("ServiceProvider.aspx");
                }
                else if (roleId == 3)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed !!')</script>");
                    Response.Redirect("admin.aspx");
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed !!')</script>");
            }
            con.Close();
        }
    }
}