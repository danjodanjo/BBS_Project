using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

namespace BBS
{
    public partial class BloodInventory : System.Web.UI.Page
    {
        string[] blood = { "A", "B", "O", "AB" };
        string[] date = { "Latest", "Oldest" };
        protected void Page_Load(object sender, EventArgs e)
        {
            HospitalIDLbl.Text = Request.Cookies["HospitalID"].Value;
            HospitalNameLbl.Text = Request.Cookies["HospitalName"].Value;
        }

        protected void DDLCategoryKey_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDLCategoryKey.SelectedItem.Text == "BloodType") 
            {
                DDLCategoryValue.DataSource = blood; 
            }
            else if (DDLCategoryKey.SelectedItem.Text == "Date") 
            {
                DDLCategoryValue.DataSource = date;
            }
            DDLCategoryValue.DataBind();
            DDLCategoryValue.Visible = DDLCategoryKey.SelectedValue != "Select Category";
        }

        protected void DDLCategoryValue_SelectedIndexChanged(object sender, EventArgs e)
        {
            string connString = WebConfigurationManager.ConnectionStrings["BBSConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connString);

            string query = "SELECT Type, Rhesus, DateTaken, Qty FROM [Blood] WHERE Type='" + DDLCategoryValue.SelectedItem.Value + "' AND Blood_InventoryID = " + Request.Cookies["InventoryID"].Value;

            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader dataReader = command.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dataReader);

            InventoryGridView.DataSource = dt;
            InventoryGridView.DataBind();

            connection.Close();
        }

    }
}