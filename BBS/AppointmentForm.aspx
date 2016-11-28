<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AppointmentForm.aspx.cs" Inherits="BBS.AppointmentForm" %>
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
<asp:Content ID="OrderDetailsNav" ContentPlaceHolderID="NavPlaceHolder" runat="server">
    <ul id="navigation">
        <li class="menu"><asp:HyperLink runat="server" Text="Blood Inventory" ID="BloodInventoryLink" NavigateUrl="~/BloodInventory.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Blood Request" ID="BlooDRequestLink" NavigateUrl="~/BloodRequest.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Order Details" ID="OrderDetailsLink" NavigateUrl="~/OrderDetails.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Appointment List" ID="AppointmentListLink" NavigateUrl="~/AppointmentList.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="View Donors" ID="ViewDonourLink" NavigateUrl="~/ViewDonors.aspx" CssClass="link-menu"></asp:HyperLink></li>
    </ul>
</asp:Content>
<asp:Content ID="AppointmentFormContent" ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <asp:FormView runat="server" DataSourceID="AppointmentFormSource" ID="AppointmentFormView" DataKeyNames="donorID" DefaultMode="Edit" OnItemUpdating="AppointmentFormView_ItemUpdating" OnDataBound="AppointmentFormView_DataBound">
        <HeaderTemplate>Appointment Form</HeaderTemplate>
        <EmptyDataTemplate>
            No Data to show.
        </EmptyDataTemplate>
        <EditItemTemplate>
            <table>
                <tr>
                    <td>Donor ID</td>
                    <td><asp:Label ID="DonorIDLbl" runat="server" Text='<% # Bind("donorID") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><asp:Label runat="server" ID="DonorFirstNameLbl" Text='<% # Bind("DFirstName") %>'></asp:Label>&nbsp;
                        <asp:Label runat="server" ID="DonorLastNameLbl" Text='<% # Bind("DLastName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>IC/Number</td>
                    <td><asp:Label runat="server" ID="ICLbl" Text='<% # Bind("DICNumber") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><asp:Label runat="server" ID="GenderLbl" Text='<% # Bind("DGender") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><asp:Label runat="server" ID="AddressLbl" Text='<% # Bind("DAddress") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td><asp:Label runat="server" ID="EmailLbl" Text='<% # Bind("DEmail") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>Contact number</td>
                    <td><asp:Label runat="server" ID="ContactLbl" Text='<% # Bind("DCNumber") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>Blood</td>
                    <td><asp:Label runat="server" ID="BloodLbl" Text='<% # Bind("DBloodType") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>Rhesus</td>
                    <td><asp:Label runat="server" ID="RhesusLbl" Text='<% # Bind("DRhesus") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>Arrival Time</td>
                    <td><asp:Textbox runat="server" ID="ArrivalTimeTxtBox" Text='<% # Bind("ArrivalTime") %>'></asp:Textbox></td>
                </tr>
                <tr>
                    <td>Remarks</td>
                    <td><asp:Textbox runat="server" ID="RemarksTxtBox" Text='<% # Bind("Remarks") %>'></asp:Textbox></td>
                </tr>
                <tr>
                    <td><asp:Button runat="server" Text="Add to Appointment list" CommandName="Update"></asp:Button></td>
                </tr>

                <asp:HiddenField runat="server" ID="AppointmentIDHidd" Value='<% # Eval("AppointmentID") %>' />
            </table>
        </EditItemTemplate>
    </asp:FormView>


</asp:Content>
