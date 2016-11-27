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
            Object userSession = authCmd.ExecuteScalar();


            // there are two possibilities, either the donour doesn't exists, or the user is actually a staff
            if (userSession == null)
            {
                authenticationQuery = "select a.FirstName, b.HospitalID, b.HospitalName, c.InventoryID from [Staff] a JOIN [Hospital] b ON a.Staff_HospitalID = b.HospitalID JOIN [Inventory] c ON c.Inventory_HospitalID = b.HospitalID where Username='" + txtUsernameLogin.Text + "' AND Password ='" + txtPasswordLogin.Text + "'";
                authCmd = new SqlCommand(authenticationQuery, connection);
                SqlDataReader staffSession = authCmd.ExecuteReader();

                // if it's null, then neither the username is a donour nor a hospital admin, sent error message
                if (!staffSession.Read())
                {
                    Response.Write("Username or password is incorrect!");
                }
                // the user who performs the login is a hospital staff
                else
                {
                    Response.Cookies["Type"].Value = "Staff";
                    Response.Cookies["Username"].Value = txtUsernameLogin.Text;
                    Response.Cookies["HospitalID"].Value = staffSession["HospitalID"].ToString();
                    Response.Cookies["HospitalName"].Value = staffSession["HospitalName"].ToString();
                    Response.Cookies["InventoryID"].Value = staffSession["InventoryID"].ToString();
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