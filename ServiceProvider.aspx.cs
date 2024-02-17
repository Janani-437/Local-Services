using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ServiceProvider : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int serviceID = -1;
            SqlConnection con = new SqlConnection(cs);
            string query = "select serviceid from servicelist where servicename=@servicename";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@servicename", servicedropdown.SelectedValue);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    serviceID = Convert.ToInt32(dr[0]);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed !!')</script>");
            }
            dr.Close();
            string email = "";
            int userId = -1;
            string query1 = "select userid from userdetail where email=@email";
            cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@email", email);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    userId = Convert.ToInt32(dr[0]);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed !!')</script>");
            }
            dr.Close();
            string query2 = "insert into serviceprovider values(@uid,@sid,@sname,@sdesc,@status,@date)";
            cmd = new SqlCommand(query2, con);
            cmd.Parameters.AddWithValue("@uid", userId);
            cmd.Parameters.AddWithValue("@sid", serviceID);
            cmd.Parameters.AddWithValue("@sname", servicedropdown.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@sdesc",desctxt.Text);
            cmd.Parameters.AddWithValue("@status", "active");
            cmd.Parameters.AddWithValue("@date", DateTime.Now);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Service added Successfull " + "');", true);
                ClearControls();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Registration Failed !!')</script>");
            }
            con.Close();


        }

        void ClearControls()
        {
            servicedropdown.SelectedIndex = 0;
            desctxt.Text = "";

        }
    }
    }
