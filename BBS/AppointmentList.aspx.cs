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
    public partial class AppointmentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Load_AppointmentList();
        }

        protected void Load_AppointmentList() 
        {
            SqlDataSource reqDataSource = new SqlDataSource();
            reqDataSource.ID = "AppointmentDataSource";
            reqDataSource.ConnectionString = WebConfigurationManager.ConnectionStrings["BBSConnectionString"].ConnectionString;
            reqDataSource.SelectCommand = "SELECT a.AppointmentID, a.ArrivalTime, b.DFirstName, b.DLastName, a.Status FROM [Appointment] a JOIN [Registration] b ON a.App_BloodID = b.donorID "
                + "WHERE a.ByHospital_ID = " + Int32.Parse(Request.Cookies["HospitalID"].Value);

            this.Page.Controls.Add(reqDataSource);
        
        }
    }
}