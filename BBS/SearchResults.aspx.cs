using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBS
{
    public partial class SearchResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            search_from_database();
        }

        protected void OrderBloodBtn_Click(object sender, EventArgs e)
        {
            // show alert message
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "OrderCompleteAlertMessage", "alert('Order complete')", true);

            // insert order appointment list in database
            insert_order_to_appointment();
        }

        protected void search_from_database() 
        {
            establish_connection_to_database();
        
        
        }

        protected void establish_connection_to_database() {
            SqlDataSource dataSource = new SqlDataSource();
            dataSource.ID = "SResultDataSource";
            this.Page.Controls.Add(dataSource);

            dataSource.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["BBSConnectionString"].ConnectionString;

        }

        protected void insert_order_to_appointment() { 
        
        }

        protected void RequestAdminBtn_Click(object sender, EventArgs e)
        {
            // show alert message
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "RequestAdminAlertMessage", "alert('Your request has been placed')", true);
        }        
    }
}