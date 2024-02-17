using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                int roleID;
                if (roledropdown.SelectedValue == "Service Provider")
                {
                    roleID = 2;
                }
                else if (roledropdown.SelectedValue == "Customer")
                {
                    roleID = 1;
                }
                else
                {
                    roleID = 3;
                }
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("RegisterUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter username = new SqlParameter("@Name", txtname.Text);
                    // FormsAuthentication calss is in System.Web.Security namespace
                    SqlParameter password = new SqlParameter("@Password", txtPassword.Text);
                    SqlParameter email = new SqlParameter("@Email", txtEmail.Text);
                    SqlParameter mobile = new SqlParameter("@Mobile", mobiletxt.Text);
                    SqlParameter address = new SqlParameter("@Address", addresstxt.Text);
                    SqlParameter location = new SqlParameter("@Location", loctxt.Text);
                    SqlParameter city = new SqlParameter("@City", citytxt.Text);
                    SqlParameter zipcode = new SqlParameter("@Zipcode", ziptxt.Text);
                    SqlParameter role = new SqlParameter("@roleid", roleID);

                    cmd.Parameters.Add(username);
                    cmd.Parameters.Add(mobile);
                    cmd.Parameters.Add(password);
                    cmd.Parameters.Add(email);
                    cmd.Parameters.Add(address);
                    cmd.Parameters.Add(location);
                    cmd.Parameters.Add(city);
                    cmd.Parameters.Add(zipcode);
                    cmd.Parameters.Add(role);

                    con.Open();

                    int ReturnCode = (int)cmd.ExecuteScalar();
                    if (ReturnCode == -1)
                    {
                        lblMessage.Text = "User Name already in use, please choose another user name";
                    }
                    else
                    {
                        Response.Redirect("~/Login.aspx");
                    }
                }
            }

        }
    }
}
    