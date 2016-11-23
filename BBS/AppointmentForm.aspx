<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AppointmentForm.aspx.cs" Inherits="BBS.AppointmentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="JScript" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <asp:FormView runat="server" ID="FormView">
        <HeaderTemplate></HeaderTemplate>
        <InsertItemTemplate>
            <table>
                <tr>
                    <td>Donor ID</td>
                    <td><asp:Label ID="DonorIDLbl" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><asp:Label ID="DonorNmLbl" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>IC/Number</td>
                    <td><asp:Label runat="server" ID="ICLbl"></asp:Label></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><asp:Label runat="server" ID="GenderLbl"></asp:Label></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><asp:Label runat="server" ID="AddressLbl"></asp:Label></td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td><asp:Label runat="server" ID="EmailLbl"></asp:Label></td>
                </tr>
                <tr>
                    <td>Contact number</td>
                    <td><asp:Label runat="server" ID="ContactLbl"></asp:Label></td>
                </tr>
                <tr>
                    <td>Blood</td>
                    <td><asp:Label runat="server" ID="BloodLbl"></asp:Label></td>
                </tr>
                <tr>
                    <td>Arrival Time</td>
                    <td><asp:TextBox runat="server" ID="ArrivalTimeTxtBox"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Remarks</td>
                    <td><asp:TextBox runat="server" ID="RemarksTxtBox"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:LinkButton runat="server" Text="Insert" CommandName="Insert"></asp:LinkButton></td>
                </tr>
            </table>
        </InsertItemTemplate>
    </asp:FormView>
</asp:Content>
