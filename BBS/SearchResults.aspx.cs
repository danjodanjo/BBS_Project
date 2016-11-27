using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BBS
{
    public partial class SearchResults : System.Web.UI.Page
    {

        static string conditions = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            search_from_database();
        }

        protected void build_conditions() {

            if (Request.QueryString["blood"] != null) {
                conditions += "Type = '" + Request.QueryString["blood"] + "' AND ";
            }
            if (Request.QueryString["qty"] != null) {
                conditions += "Qty >= " + Request.QueryString["qty"] + " AND ";
            }
            if (Request.QueryString["rhesus"] != null) {
                conditions += "Rhesus ='" + Request.QueryString["rhesus"] + "' AND "; 
            }
            if (Request.QueryString["hospID"] != null) 
            {
                conditions += "HospitalID = " + Request.QueryString["hospID"] + " AND ";
            }
            if (Request.QueryString["hospName"] != null) 
            {
                conditions += "HospitalName = '" + Request.QueryString["hospName"] + "' AND ";
            }
        }

        protected void OrderBloodBtn_Click(object sender, EventArgs e)
        {
            // insert order appointment list in database
            insert_order_to_appointment();

            // show alert message
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "OrderCompleteAlertMessage", "alert('Order complete')", true);
        }

        protected void search_from_database() {
            SqlDataSource dataSource = new SqlDataSource();
            dataSource.ID = "SResultDataSource";
            this.Page.Controls.Add(dataSource);

            dataSource.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["BBSConnectionString"].ConnectionString;

            // make sure conditions are set to empty
            conditions = "";

            // build conditions based on the 6 search terms
            build_conditions();
 
            // Remove the last AND word
            if (conditions == "")
                Response.Redirect("~/BloodRequest.aspx");
            conditions = conditions.Remove(conditions.Length - 4);

            dataSource.SelectCommand = "Select a.HospitalName,  a.HospitalID, a.HospitalAddress, a.HospitalContactNumber, c.Qty FROM " +
                "[Hospital] a JOIN [Inventory] b ON a.HospitalID = b.Inventory_HospitalID JOIN [Blood] c ON c.Blood_InventoryID = b.InventoryID " +
                "WHERE " + conditions;
        }

        // order, and request record is added
        protected void insert_order_to_appointment() {

            string connectionString = WebConfigurationManager.ConnectionStrings["BBSConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "INSERT INTO [Request](FromHospital_ID, ToHospital_ID, Blood, Rhesus, Qty, isAccepted, Attachment, RequiredDate, Status) VALUES " +
                "(@FRHospital, @TOHospital, @Blood, @Rhesus, @Qty, @isAccepted, @Attachment, @RequiredDate, @Status)";
            
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@FRHospital", Request.Cookies["HospitalID"].Value);
            command.Parameters.AddWithValue("@TOHospital", SearchResultGridView.SelectedRow.Cells[2].Text);
            command.Parameters.AddWithValue("@Blood", Request.QueryString["blood"]);
            command.Parameters.AddWithValue("@Rhesus", Request.QueryString["rhesus"]);
            command.Parameters.AddWithValue("@Qty", Request.QueryString["qty"]);
            command.Parameters.AddWithValue("@isAccepted", 0);
            command.Parameters.AddWithValue("@Attachment", "attachment file");
            command.Parameters.AddWithValue("@RequiredDate", Request.QueryString["delivery"]);
            command.Parameters.AddWithValue("@Status", "Pending");

            command.ExecuteNonQuery();
            connection.Close();
        }

        protected void RequestAdminBtn_Click(object sender, EventArgs e)
        {
            // show alert message
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "RequestAdminAlertMessage", "alert('Your request has been placed')", true);
        }

        protected void ResearchLnkBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BloodRequest.aspx");
        }        
    }
}