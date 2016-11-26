using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data.Sql;

namespace BBS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {


            }
        }

        protected void ImgBtnLogin_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["BBSConnectionString"].ConnectionString);


            connection.Open();
            string authenticationQuery = "select DonorUserName from [Registration] where DonorPassword='" + txtPasswordLogin.Text + "' AND DonorUsername ='" + txtUsernameLogin.Text + "'";
            SqlCommand authCmd = new SqlCommand(authenticationQuery, connection);
            Object session = authCmd.ExecuteScalar();

            if (session == null)
            {
                authenticationQuery = "select FirstName from [Staff] where Username='" + txtUsernameLogin.Text + "' AND Password ='" + txtPasswordLogin.Text + "'";
                authCmd = new SqlCommand(authenticationQuery, connection);
                SqlDataReader sessionDataReader = authCmd.ExecuteReader();

                // if it's null, then neither the username is a donour nor a hospital admin, sent error message
                if (session == null)
                {
                    Response.Write("Username or password is incorrect!");
                }

                else
                {
                    Response.Cookies["Type"].Value = "Staff";
                    Response.Cookies["Username"].Value = txtUsernameLogin.Text;
                    Response.Cookies["HospitalID"].Value = session.
                    Response.Redirect("~/BloodInventory.aspx");
                }


            }
            // there is a donour associated, sen
            else
            {
                //Session["New"] = txtUsernameLogin.Text;
                Response.Write("Password is Correct");
                Response.Cookies["Type"].Value = "Donour";
                Response.Cookies["Username"].Value = txtUsernameLogin.Text;

                Response.Redirect("DonorHomePage.aspx");
            }
            connection.Close();
        }

        protected void ImgBtnRegister_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

    }
}