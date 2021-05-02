using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_LibraryManagementProject.UI
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                LogoutNavLinkButton_Click(sender, e);
            }
            try
            {
                if (Session["role"].Equals(""))
                {
                    ViewBooksNavLinkButton.Visible = true;
                    UserLoginNavLinkButton.Visible = true;
                    SignUpNavLinkButton.Visible = true;
                    LogoutNavLinkButton.Visible = false;
                    HelloUserNavLinkButton.Visible = false;
                }
                else if (Session["role"].Equals("user"))
                {
                    ViewBooksNavLinkButton.Visible = true;
                    UserLoginNavLinkButton.Visible = false;
                    SignUpNavLinkButton.Visible = false;
                    LogoutNavLinkButton.Visible = true;
                    HelloUserNavLinkButton.Text = "Hello, " + Session["first_name"];

                }
                else if (Session["role"].Equals("admin"))
                {
                    ViewBooksNavLinkButton.Visible = true;
                    UserLoginNavLinkButton.Visible = false;
                    SignUpNavLinkButton.Visible = false;
                    LogoutNavLinkButton.Visible = true;
                    HelloUserNavLinkButton.Text = "Hello, Admin";

                }
            }
            catch (Exception)
            {
            }
        }


        protected void UserLoginNavLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void SignUpNavLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignUp.aspx");
        }

        protected void LogoutNavLinkButton_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["status"] = "";
            Session["role"] = "";
            Response.Redirect("HomePage.aspx");
        }

       
        protected void ViewBooksNavLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBooks.aspx");
        }

       
        protected void AdminLoginFooterLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
}