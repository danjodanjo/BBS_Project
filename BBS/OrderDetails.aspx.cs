using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.Configuration;

namespace BBS
{
    public partial class OrderDetails : System.Web.UI.Page
    {
        static string connString = WebConfigurationManager.ConnectionStrings["BBSConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Load_request_data();
            Load_to_deliver_data();
            Load_my_order_data();
        }


        protected void Load_request_data() 
        {
            SqlDataSource reqDataSource = new SqlDataSource();
            reqDataSource.ID = "RequestDataSource";
            reqDataSource.ConnectionString = connString;
            reqDataSource.SelectCommand = "SELECT b.HospitalName, b.HospitalID, a.Blood, a.Rhesus, a.Qty, a.RequiredDate, a.Attachment FROM [Request] a JOIN [Hospital] b ON a.FromHospital_ID = b.HospitalID "
                + "WHERE a.ToHospital_ID = " + Int64.Parse(Request.Cookies["HospitalID"].Value) + " AND a.isAccepted = 0";

            this.Page.Controls.Add(reqDataSource);
        }

        protected void Load_to_deliver_data() 
        {
            SqlDataSource delivDataSource = new SqlDataSource();
            delivDataSource.ID = "DeliverDataSource";
            delivDataSource.ConnectionString = connString;
            delivDataSource.SelectCommand =  "SELECT b.HospitalName, a.Blood, a.Rhesus, a.Qty, a.RequiredDate AS 'Time Remaining' From [Request] a JOIN [Hospital] b ON a.ToHospital_ID = b.HospitalID "
                + "WHERE a.ToHospital_ID = " + Int64.Parse(Request.Cookies["HospitalID"].Value) + " AND a.isAccepted = 1";

            this.Page.Controls.Add(delivDataSource);
        }

        protected void Load_my_order_data() 
        { 
            
        
        }


        protected void PendingRequestGridView_RowCommand(object sender, GridViewCommandEventArgs e) 
        {
            if (e.CommandName == "Accept") {

                if (PendingRequestFormView.CurrentMode == FormViewMode.ReadOnly)
                {
                    GridView pendGridView = (GridView)PendingRequestFormView.FindControl("PendingRequestGridView");
                    if (pendGridView != null)
                    {
                        // Retrieve the row index stored in the 
                        // CommandArgument property.
                        int index = Convert.ToInt32(e.CommandArgument);

                        // Retrieve the row that contains the button 
                        // from the Rows collection.
                        GridViewRow row = pendGridView.Rows[index];

                        accept_and_update_record(row);
                    }
                    else {
                        Response.Write("PendingRequestGridView Not found");
                    }
                }
            // if command is rejected
            }
            else if (e.CommandName == "Reject") {
                Response.Write("Rejected");
            }
 
        }

        protected void accept_and_update_record(GridViewRow row) 
        {
            SqlConnection sqlConn = new SqlConnection(connString);

            string query = "UPDATE [Request] SET [isAccepted] = @accepted, WHERE [FromHospital_ID] = @FrHospital_ID, [ToHospital_ID] = @ToHospital_ID ";
            sqlConn.Open();
            SqlCommand command = new SqlCommand(query, sqlConn);
            command.Parameters.AddWithValue("@accepted", 1);
            command.Parameters.AddWithValue("@FrHospital_ID", Int64.Parse(row.Cells[1].Text));
            command.Parameters.AddWithValue("@ToHospital_ID", Int64.Parse(Request.Cookies["HospitalID"].Value));

            command.ExecuteNonQuery();
            sqlConn.Close();                 
        }
    }
}