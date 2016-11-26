<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatabaseManager.aspx.cs" Inherits="DotNet_Assignment2.DatabaseManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="donorID" DataSourceID="SqlDataSourceRegistration" GridLines="None" Height="422px" Width="1079px">
            <Columns>
                <asp:BoundField DataField="donorID" HeaderText="donorID" ReadOnly="True" SortExpression="donorID" />
                <asp:BoundField DataField="DFirstName" HeaderText="DFirstName" SortExpression="DFirstName" />
                <asp:BoundField DataField="DLastName" HeaderText="DLastName" SortExpression="DLastName" />
                <asp:BoundField DataField="DGender" HeaderText="DGender" SortExpression="DGender" />
                <asp:BoundField DataField="DBirthdate" HeaderText="DBirthdate" SortExpression="DBirthdate" />
                <asp:BoundField DataField="DAddress" HeaderText="DAddress" SortExpression="DAddress" />
                <asp:BoundField DataField="DZipCode" HeaderText="DZipCode" SortExpression="DZipCode" />
                <asp:BoundField DataField="DEmail" HeaderText="DEmail" SortExpression="DEmail" />
                <asp:BoundField DataField="DCNumber" HeaderText="DCNumber" SortExpression="DCNumber" />
                <asp:BoundField DataField="DBloodType" HeaderText="DBloodType" SortExpression="DBloodType" />
                <asp:BoundField DataField="DRhesus" HeaderText="DRhesus" SortExpression="DRhesus" />
                <asp:BoundField DataField="DonorUsername" HeaderText="DonorUsername" SortExpression="DonorUsername" />
                <asp:BoundField DataField="DonorPassword" HeaderText="DonorPassword" SortExpression="DonorPassword" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
