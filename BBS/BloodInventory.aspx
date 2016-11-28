<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="BloodInventory.aspx.cs" Inherits="BBS.BloodInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="JScript" runat="server">
    
    <style type="text/css">
        #navigation li {
}

.menu {
    list-style-type: none;
    display:inline-block;
    margin-right: 10px;
    text-decoration:none;
}

.link-menu {
    text-decoration:none;
}
    </style>
</asp:Content>

<asp:Content ID="BloodRequestNav" ContentPlaceHolderID="NavPlaceHolder" runat="server">
    <ul id="navigation">
        <li class="menu"><asp:HyperLink runat="server" Text="Blood Inventory" ID="BloodInventoryLink" NavigateUrl="~/BloodInventory.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Blood Request" ID="BlooDRequestLink" NavigateUrl="~/BloodRequest.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Order Details" ID="OrderDetailsLink" NavigateUrl="~/OrderDetails.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Appointment List" ID="AppointmentList" NavigateUrl="~/AppointmentList.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="View Donors" ID="ViewDonourLink" NavigateUrl="~/ViewDonors.aspx" CssClass="link-menu"></asp:HyperLink></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <div>
        <table>
            <tr>
                <td>Hospital ID</td>
                <td><asp:Label runat="server" ID="HospitalIDLbl"></asp:Label></td>
            </tr>
            <tr>
                <td>Hospital Name</td>
                <td><asp:Label runat="server" ID="HospitalNameLbl"></asp:Label></td>
            </tr>
            <tr>
                <td>Sort by:</td>
                <td><asp:DropDownList runat="server" ID="DDLCategoryKey" OnSelectedIndexChanged="DDLCategoryKey_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem>Select Category</asp:ListItem>
                    <asp:ListItem>BloodType</asp:ListItem>
                    <asp:ListItem>Date</asp:ListItem>
                    </asp:DropDownList></td>
                <td><asp:DropDownList runat="server" ID="DDLCategoryValue" AutoPostBack="true" Visible="False" OnSelectedIndexChanged="DDLCategoryValue_SelectedIndexChanged"></asp:DropDownList></td>
            </tr>
        </table>
    </div>

    <div>
    <asp:GridView runat="server" ID="InventoryGridView">


    </asp:GridView>
    </div>
</asp:Content>
