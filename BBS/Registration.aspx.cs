using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace DotNet_Assignment2
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                connection.Open();
                string checkuser = "select count(*) from [Registration] where UserName='"+txtUsername.Text+"'";
                //SqlCommand command = new SqlCommand(checkuser, connection);
               // int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                //if(temp == 1)
                //{
                //    Response.Write("User already Exists!");
                //}
                connection.Close();
            }
        }

        protected void ImgBtnSignUp_Click(object sender, ImageClickEventArgs e)
        {
            if (IsPostBack)
            {
                try
                {

                    Guid newGUID = Guid.NewGuid();
                    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    connection.Open();
                    string insertQuery = "insert into Registration (donorID, DFirstName, DLastName, DGender, DBirthdate, DAddress, DZipCode, DEmail, DCNumber, DBloodType, DRhesus, DonorUsername, DonorPassword) values (@Id, @Dfirstname, @Dlastname, @Dgender, @Dbirthdate, @Daddress, @Dzipcode, @Demail, @Dcnumber, @Dbloodtype, @Drhesus, @donorusername, @donorpassword)";
                    SqlCommand command = new SqlCommand(insertQuery, connection);
                    command.Parameters.AddWithValue("@ID", newGUID.ToString());
                    command.Parameters.AddWithValue("@Dfirstname", txtFirstName.Text);
                    command.Parameters.AddWithValue("@Dlastname", txtLastName.Text);
                    command.Parameters.AddWithValue("@Dgender", RblGender.SelectedValue);
                    command.Parameters.AddWithValue("@Dbirthdate", CldBirthDate.SelectedDate);
                    command.Parameters.AddWithValue("@Daddress", txtAddress.Text);
                    command.Parameters.AddWithValue("@Dzipcode", txtZipCode.Text);
                    command.Parameters.AddWithValue("@Demail", txtEmail.Text);
                    command.Parameters.AddWithValue("@Dcnumber", txtMobileNumber.Text);
                    command.Parameters.AddWithValue("@Dbloodtype", DDLBloodType.SelectedValue);
                    command.Parameters.AddWithValue("@Drhesus", RblRhesus.SelectedValue);
                    command.Parameters.AddWithValue("@donorusername", txtUsername.Text);
                    command.Parameters.AddWithValue("@donorpassword", txtPassword.Text);
                    command.ExecuteNonQuery();
                    Response.Redirect("DonorHomePage.aspx");
                    Response.Write("Registration is successful");

                    connection.Close();
                }
                catch(Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }



        
    }
}