using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication_LibraryManagementProject.Models;

namespace WebApplication_LibraryManagementProject.UI
{
    
    public partial class WebForm4 : System.Web.UI.Page
        
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
                Response.Write("<script>alert('User already Exists with this User ID,try other ID'); </script>");
            }
            else
            {
                signUpNewUser();
            }

        }






        bool checkUserExists()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where user_id='" + UserIdTextBox.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)

                {
                    return true;

                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
                return false;
            }

        }

        void signUpNewUser()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT into member_master_tbl(first_name,contact_no ,email,country,city,areacode ,address,user_id,password)values (@first_name,@contact_no ,@email ,@country,@city,@areacode,@address,@user_id,@password)", con);

                cmd.Parameters.AddWithValue("@first_name", FullNameTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", ContactNumberTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@email", EmailIdTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@city", CityTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@areacode", PincodeTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@address", FullAddressTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@user_id", UserIdTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successfull, Go to User Login to Login'); </script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }

        }


    }
}