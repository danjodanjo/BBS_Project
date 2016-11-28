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
    public partial class ViewDonors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*string connectionString = WebConfigurationManager.ConnectionStrings["BBSConnectionString"].ConnectionString;
            //SqlDataSource dataSource = new SqlDataSource();
            //dataSource.ID = "DonorListDataSource";
            dataSource.ConnectionString = connectionString;

            string query = "SELECT * FROM [Registration]";
            */
        }

        protected void AddAppointmentBtn_Click(object sender, EventArgs e)
        {
            
        }

        protected void ViewDonorGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow selectedRow = ViewDonorGridView.Rows[Convert.ToInt32(e.CommandArgument)];

            Build_AppointmentForm(selectedRow);
        }

        protected void Build_AppointmentForm(GridViewRow selectedRow) 
        {
            Response.Redirect("~/AppointmentForm.aspx?donorID=" + ((Label)selectedRow.Cells[0].FindControl("DonorIDLbl")).Text);
        }
    }
}