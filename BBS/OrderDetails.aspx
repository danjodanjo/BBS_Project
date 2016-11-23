<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="BBS.OrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="JScript" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavPlaceHolder" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <asp:FormView ID="PendingRequestFormView" runat="server">
        <HeaderTemplate>
            Pending Request
        </HeaderTemplate>
        <EmptyDataTemplate>
            No Pending request.
        </EmptyDataTemplate>

        <ItemTemplate>
            <asp:GridView ID="PendingRequestGridView" runat="server">

            </asp:GridView>
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

</asp:Content>
