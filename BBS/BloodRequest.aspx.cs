using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBS
{
    public partial class BloodRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DocUploadBtn_Click(object sender, EventArgs e)
        {

        }

        protected void OrderBloodBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchResults.aspx?" + ConstructQuery());
        }

        protected string ConstructQuery() { 
            string query = "";
            if (BloodTypeDDL.SelectedValue != "Choose an option") {
                query += "blood=" + BloodTypeDDL.SelectedValue + "&";
            }
            if (QtyTxtBox.Text != "") {
                query += "qty=" + QtyTxtBox.Text + "&";
            }
            if (RhesusRBL.SelectedIndex > -1) {
                query += "rhesus=" + (RhesusRBL.SelectedValue == "+" ? "1" : "0") + "&";  
            }
            if (HospitalIDTxtBox.Text != "")
            {
                query += "hospID=" + HospitalIDTxtBox.Text + "&";
            }
            if (HospitalNameTxtBox.Text != "") 
            {
                query += "hospName=" + HospitalNameTxtBox.Text + "&"; 
            }
            if (DeliveryCalendar.SelectedDate.CompareTo(new DateTime(1, 1, 1)) != 0) 
            {
                query += "delivery=" + DeliveryCalendar.SelectedDate.ToShortDateString() + "&";
            }

            // remove the last &
            query = query.Remove(query.Length - 1);

            return query;
        } 
    }
}