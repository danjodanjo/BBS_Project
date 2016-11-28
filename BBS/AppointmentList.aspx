<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AppointmentList.aspx.cs" Inherits="BBS.AppointmentList" %>
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

<asp:Content ID="AppointmentListNav" ContentPlaceHolderID="NavPlaceHolder" runat="server">
    <ul id="navigation">
        <li class="menu"><asp:HyperLink runat="server" Text="Blood Inventory" ID="BloodInventoryLink" NavigateUrl="~/BloodInventory.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Blood Request" ID="BlooDRequestLink" NavigateUrl="~/BloodRequest.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Order Details" ID="OrderDetailsLink" NavigateUrl="~/OrderDetails.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Appointment List" ID="AppointmentListLink" NavigateUrl="~/AppointmentList.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="View Donors" ID="ViewDonourLink" NavigateUrl="~/ViewDonors.aspx" CssClass="link-menu"></asp:HyperLink></li>
    </ul>
</asp:Content>
<asp:Content ID="AppointmentListContent" ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <asp:FormView ID="AppointmentListFormView" DataKeyNames="AppointmentID" DataSourceID="AppointmentDataSource" runat="server">
        <HeaderTemplate>
            Appointment Lists
        </HeaderTemplate>
        <EmptyDataTemplate>
            No Appointment with Donours
        </EmptyDataTemplate>

        <ItemTemplate>
            <asp:GridView ID="AppointmentListGridView" AutoGenerateEditButton="true" AutoGenerateColumns="false" runat="server" DataKeyNames="AppointmentID" DataSourceID="AppointmentDataSource">
                <Columns>
                    <asp:TemplateField HeaderText="Arrival Time">
                        <ItemTemplate>
                            <asp:Label ID="ArrivalHospitalLbl" runat="server" Text='<% # Eval("ArrivalTime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="FirstNameLbl" runat="server" Text='<% # Eval("DFirstName") %>'></asp:Label>&nbsp;
                            <asp:Label ID="LastNameLbl" runat="server" Text='<%# Eval("DLastName") %>'></asp:Label> 
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Appointment Form">
                        <ItemTemplate>
                            <asp:LinkButton ID="appFormLinkButton" runat="server" Text='<% # Eval("AppointmentID") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label ID="RhesusLbl" runat="server" Text='<% # Eval("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
