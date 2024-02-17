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
    public partial class customer : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                bindGridView();
            }
           
            

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (servicedropdown.SelectedItem.Text=="Plumbing Services")
            {
                
                plumbing();
            }
            else if (servicedropdown.SelectedItem.Text=="Electrician Services")
            {

            }
            else
            {
                bindGridView();
            }
        }
        void plumbing()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select s.serviceid,s.servicename,s.description,s.userid,\r\ns.name,s.mobile,s.email,s.location,s.city\r\nfrom serviceprovider1 as s where  s.servicename=plumber';";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@plumbing", servicedropdown.SelectedItem.Text);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
        void bindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from serviceprovider";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            foreach(GridViewRow grow in GridView1.Rows)
            {
                var checkboxselect = grow.FindControl("CheckBox1") as CheckBox;
                if (checkboxselect.Checked)
                {
                    SqlConnection con = new SqlConnection(cs);
                    string sqlquery="insert into [dbo].[booking] values(@id,@servicename,@desc,@spid,@spname,@spmobile,@email,@location,@city,@comments,@date,@time)";
                    SqlCommand sqlcomm=new SqlCommand(sqlquery, con);
                    sqlcomm.Parameters.AddWithValue("@id",(grow.FindControl("serviceidlbl")as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@servicename", (grow.FindControl("servicenamelbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@desc", (grow.FindControl("desclbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@spid", (grow.FindControl("servicepidlbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@spname", (grow.FindControl("servicepnamelbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@spmobile", (grow.FindControl("mobilelbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@email", (grow.FindControl("emaildlbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@location", (grow.FindControl("loclbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@city", (grow.FindControl("citylbl") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@comments",TextBox3.Text);
                    sqlcomm.Parameters.AddWithValue("@date", TextBox2.Text);
                    sqlcomm.Parameters.AddWithValue("@time", DropDownList3.SelectedItem.Text);
                    con.Open();
                    sqlcomm.ExecuteNonQuery();
                    con.Close();
                    Litmsg.Text = "Booked Successfully";
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    

}