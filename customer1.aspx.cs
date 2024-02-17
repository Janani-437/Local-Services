using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.Common;

namespace WebApplication1
{
    public partial class customer1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            {
                
                bindGridView();
            }
        }

        void bindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query;
            if (servicedropdown.SelectedIndex == 0)
            {

                if (TextBox1.Text != "")
                {
                    query = "select spid as 'Provider ID',name as 'Service Provider Name',email as 'Email ID',sname as 'Service Type',description as 'Service Description',mobile as 'Mobile Number',location as Locality,city as City, from serviceprovider inner join userdetail on serviceprovider.spid= userdetail.userid inner join servicelist On serviceprovider.sid= servicelist.serviceid where sid=(select serviceid from servicelist where sname=@sType) AND name like @name";
                }
                else
                {
                    query = "select spid as 'Provider ID', name as 'Service Provider Name',email as 'Email ID',sname as 'Service Type',description as 'Service Description',mobile as 'Mobile Number',location as Locality,city as City from serviceprovider inner join userdetail on serviceprovider.sid= userdetail.userid inner join servicelist On serviceprovider.sid= servicelist.serviceid where sid=(select serviceid from servicelist where sname=@sType)";
                }
            }
            else
            {
                if (TextBox1.Text != "")
                {
                    query = "select spid as 'Provider ID',name as 'Service Provider Name',email as 'Email ID',sname as 'Service Type',description as 'Service Description',mobile as 'Mobile Number',location as Locality,city as City from serviceprovider inner join userdetail on serviceprovider.sid= userdetail.userid inner join servicelist On serviceprovider.sid= servicelist.serviceid where sid=(select serviceid from servicelist where sname=@sType) AND city like @name";
                }
                else
                {
                    query = "select spid as 'Provider ID',name as 'Service Provider Name',email as 'Email ID',sname as 'Service Type',description as 'Service Description',mobile as 'Mobile Number',location as Locality,city as City from serviceprovider inner join userdetail on serviceprovider.sid= userdetail.userid inner join servicelist On serviceprovider.sid= servicelist.serviceid where sid=(select serviceid from servicelist where sname=@sType)";
                }
            }
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.SelectCommand.Parameters.AddWithValue("@sType", servicedropdown.SelectedValue);
            sda.SelectCommand.Parameters.AddWithValue("@name", TextBox1.Text + "%");
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            foreach (GridViewRow grow in GridView1.Rows)
            {
                var checkboxselect = grow.FindControl("CheckBox1") as CheckBox;
                if (checkboxselect.Checked)
                {
                    SqlConnection con = new SqlConnection(cs);
                    string sqlquery = "insert into [dbo].[booking] values(@id,@servicename,@desc,@spid,@spname,@spmobile,@email,@location,@city,@comments,@date,@time)";
                    SqlCommand sqlcomm = new SqlCommand(sqlquery, con);
                    sqlcomm.Parameters.AddWithValue("@id", (grow.FindControl("serviceidlbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@servicename", (grow.FindControl("servicenamelbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@desc", (grow.FindControl("desclbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@spid", (grow.FindControl("servicepidlbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@spname", (grow.FindControl("servicepnamelbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@spmobile", (grow.FindControl("mobilelbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@email", (grow.FindControl("emaildlbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@location", (grow.FindControl("loclbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@city", (grow.FindControl("citylbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@comments", TextBox3.Text);
                    
                    con.Open();
                    sqlcomm.ExecuteNonQuery();
                    con.Close();
                    Litmsg.Text = "Booked Successfully";
                    
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int sID = -1, uID = -1;
            if (e.CommandName != "SendMail") return;
            int sPID = Convert.ToInt32(e.CommandArgument);
            SqlConnection con = new SqlConnection(cs);
            string query = "select serviceid from servicelist where sname=@sname";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@sname", servicedropdown.SelectedValue);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                sID = Convert.ToInt32(dr[0]);
            }
            dr.Close();
            query = "select userid from userdetail where email=@email";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                uID = Convert.ToInt32(dr[0]);
            }
            //Page.ClientScript.RegisterStartupScript(this.GetType(),"Scripts","<script>alert('Login Successful !!')</script>");
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(Session('roleID'))</script>");
            dr.Close();

            query = "insert into servicebooking values(,@sID,@uID,@date,@cD,@status,@spD,@spID)";
            cmd = new SqlCommand(query, con);
            
            cmd.Parameters.AddWithValue("@sID", sID);
            cmd.Parameters.AddWithValue("@uID", uID);
            cmd.Parameters.AddWithValue("@date", DateTime.Now);
            cmd.Parameters.AddWithValue("@cD", TextBox2.Text);
            cmd.Parameters.AddWithValue("@status", "pending");
            cmd.Parameters.AddWithValue("@spD", "");
            cmd.Parameters.AddWithValue("@spID", sPID);

            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Service Booked Successfully!Wait for Service Provider to connect. " + "');", true);
                TextBox1.Text = TextBox2.Text = "";
                servicedropdown.SelectedIndex = DropDownList2.SelectedIndex = 0;
                GridView1.Visible = false;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Service Booking Failed !!')</script>");
            }
            con.Close();
        }
    }
}