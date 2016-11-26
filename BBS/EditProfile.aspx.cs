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
    public partial class EditProfile : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command;
            string str;
            connection.Open();
            str = "select * from [Registration] where DonorUsername='" + LabelUsername.Text + "' AND DonorPassword ='" + LabelPassword.Text + "'";
            command = new SqlCommand(str, connection);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                LabelID.Text = reader["donorID"].ToString();
                LabelFirstName.Text = reader["DFirstName"].ToString();
                LabelLastName.Text = reader["DLastName"].ToString();
                LabelGender.Text = reader["DGender"].ToString();
                LabelBirthDate.Text = reader["DBirthDate"].ToString();
                LabelAddress.Text = reader["DAddress"].ToString();
                LabelZipCode.Text = reader["DZipCode"].ToString();
                LabelEmail.Text = reader["DEmail"].ToString();
                LabelContactNumber.Text = reader["DCNumber"].ToString();
                LabelBloodType.Text = reader["DBloodType"].ToString();
                LabelRhesus.Text = reader["DRhesus"].ToString();
                LabelUsername.Text = reader["DonorUsername"].ToString();
                LabelPassword.Text = reader["DonorPassword"].ToString();
                reader.Close();
                connection.Close();
            }
            
        }

        protected void ImgBtnBack_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DonorHomePage.aspx");
        }

       
    }
}