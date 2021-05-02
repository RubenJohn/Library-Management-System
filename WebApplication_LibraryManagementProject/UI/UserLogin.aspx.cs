using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
namespace WebApplication_LibraryManagementProject.UI
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string encrypwd;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                encryption1();
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where user_id='" + MemberIdTextBox.Text.Trim() + "'AND password='" + PasswordTextBox.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful');</script>");
                        Session["user_id"] = dr.GetValue(8).ToString();
                        Session["first_name"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                    }
                    Response.Redirect("Homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }

            }

            catch (Exception ex)
            {

            }
            void encryption1()
            {
                string strmsg = string.Empty;
                byte[] encode = new byte[PasswordTextBox.Text.ToString().Length];
                encode = Encoding.UTF8.GetBytes(PasswordTextBox.Text);
                strmsg = Convert.ToBase64String(encode);
                encrypwd = strmsg;

            }



        }


      
    }
}
