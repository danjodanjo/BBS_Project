<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="BloodInventory.aspx.cs" Inherits="BBS.BloodInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="JScript" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavPlaceHolder" runat="server">

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
