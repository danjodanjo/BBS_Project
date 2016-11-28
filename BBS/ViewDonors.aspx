<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ViewDonors.aspx.cs" Inherits="BBS.ViewDonors" %>
<asp:Content ID="ViewDonorScript" ContentPlaceHolderID="JScript" runat="server">
    <script type="text/javascript">
        function targetNew()
        {
            document.forms[0].target = "_blank";
        }

    </script>
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
<asp:Content ID="ViewDonorsNav" ContentPlaceHolderID="NavPlaceHolder" runat="server">
    <ul id="navigation">
        <li class="menu"><asp:HyperLink runat="server" Text="Blood Inventory" ID="BloodInventoryLink" NavigateUrl="~/BloodInventory.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Blood Request" ID="BlooDRequestLink" NavigateUrl="~/BloodRequest.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Order Details" ID="OrderDetailsLink" NavigateUrl="~/OrderDetails.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Appointment List" ID="AppointmentListLink" NavigateUrl="~/AppointmentList.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="View Donors" ID="ViewDonourLink" NavigateUrl="~/ViewDonors.aspx" CssClass="link-menu"></asp:HyperLink></li>
    </ul>
</asp:Content>
<asp:Content ID="ViewDonorContent" ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <asp:GridView runat="server" ID="ViewDonorGridView" AutoGenerateColumns="false" DataKeyNames="donorID" DataSourceID="DonorListDataSource" OnRowCommand="ViewDonorGridView_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="Donor ID">
                <ItemTemplate>
                    <asp:Label runat="server" ID="DonorIDLbl" Text='<% # Eval("donorID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Donor Name">
                <ItemTemplate>
                    <asp:Label runat="server" ID="DonorFirstNameLbl" Text='<% # Eval("DFirstName") %>'></asp:Label>
                    <asp:Label runat="server" ID="DonorLastNameLbl" Text='<% # Eval("DLastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <ItemTemplate>
                    <asp:Label runat="server" ID="AddressLbl" Text='<% # Eval("DAddress") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label runat="server" ID="DonorEmailLbl" Text='<% # Eval("DEmail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact Number">
                <ItemTemplate>
                    <asp:Label runat="server" ID="DonorCNumberLbl" Text='<% # Eval("DCNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Blood Type">
                <ItemTemplate>
                    <asp:Label runat="server" ID="DonorBlTypeLbl" Text='<% # Eval("DBloodType") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Rhesus">
                <ItemTemplate>
                    <asp:Label runat="server" ID="DonorRhTypeLbl" Text='<% # Eval("DRhesus") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Birth Date">
                <ItemTemplate>
                    <asp:Label runat="server" ID="DBirthDate" Text='<% # Eval("DRhesus") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Appointment Form">
                <ItemTemplate>
                    <asp:Button runat="server" ID="AddAppointmentBtn" Text="Add Appointment" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="AddAppointment"></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="DonorListDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BBSConnectionString %>" SelectCommand="SELECT [DFirstName], [DLastName], [donorID], [DAddress], [DCNumber], [DEmail], [DBloodType], [DRhesus], [DBirthdate] FROM [Registration]"></asp:SqlDataSource>
</asp:Content>
