using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_LibraryManagementProject.UI
{
    public partial class ContactUs : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string now = DateTime.Now.ToString("dd-MM-yyyy h:mm:ss tt");
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT into ContactUs(name,phone,email,message,time)values (@name,@phone,@email,@message,@time)", con);


                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());


                cmd.Parameters.AddWithValue("@message", TextArea11.InnerText.Trim());
                cmd.Parameters.AddWithValue("@time", DateTime.Now);

                cmd.ExecuteNonQuery();
                Response.Redirect("Homepage.aspx");

                con.Close();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }

        }

    }
    
}
