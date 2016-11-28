using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace BBS
{
    public partial class AppointmentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            insert_new_appointment();
            SqlDataSource appointDataSource = new SqlDataSource();
            appointDataSource.ID = "AppointmentFormSource";
            appointDataSource.ConnectionString = WebConfigurationManager.ConnectionStrings["BBSConnectionString"].ConnectionString;
            appointDataSource.SelectCommand = "SELECT a.AppointmentID, a.donorID, a.DFirstName, a.DLastName, a.DICNumber, a.DGender, a.DAddress, a.DEmail, a.DCNumber, a.DBloodType, a.DRhesus, b.ArrivalTime, b.Remarks FROM [Registration] a JOIN [Appointment] b ON a.donorID = b.App_BloodID WHERE donorID = " + Convert.ToInt32(Request.QueryString["donorID"]);

            appointDataSource.UpdateCommand = "UPDATE [Appointment] SET [ArrivalTime] = "
                + ((TextBox)AppointmentFormView.FindControl("ArrivalTimeTxtBox")).Text + ", [Remarks] = " + ((TextBox)AppointmentFormView.FindControl("RemarksTxtBox")).Text
                + " WHERE [AppointmentID] = " + ((HiddenField)AppointmentFormView.FindControl("AppointmentIDHidd")).Value;

            this.Page.Controls.Add(appointDataSource);
        }

        protected void AppointmentFormView_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {

            // show alert message
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AppointmentCompleteAlertMessage", "alert('Appointment Made')", true);
            Response.Redirect("~/AppointmentList.aspx");    
        }

        protected void insert_new_appointment() {
            string connectionString = WebConfigurationManager.ConnectionStrings["BBSConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "INSERT INTO [Appointment](App_BloodID, Status, ByHospital_ID) VALUES " +
                "(@App_BloodID, @Status, @ByHospital_ID)";

            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@App_BloodID", Request.QueryString["donorID"]);
            command.Parameters.AddWithValue("@Status", "Appointment Made");
            command.Parameters.AddWithValue("@ByHospital_ID", Convert.ToInt32(Request.Cookies["HospitalID"].Value));

            command.ExecuteNonQuery();
            connection.Close();

          
        
        }

        protected void AppointmentFormView_DataBound(object sender, EventArgs e)
        {

        }


    }
}