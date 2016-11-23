<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="BloodRequest.aspx.cs" Inherits="BBS.BloodRequest" %>


<asp:Content ID="RequestContent" ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    
    <div>
        <h2>REQUEST TO OTHER HOSPITAL</h2>
        <br />
        Search Term
        <table>
            <tr>
                <td>Blood type</td>
                <td><asp:DropDownList runat="server" ID="BloodTypeDDL">
                    <asp:ListItem>Choose an option</asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>O</asp:ListItem>
                    <asp:ListItem>AB</asp:ListItem>
                    </asp:DropDownList></td>
                <td>Quantity</td>
                <td><asp:TextBox runat="server" ID="QtyTxtBox"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Rhesus</td>
                <td>
                    <asp:RadioButtonList ID="RhesusRBL" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>+</asp:ListItem>
                        <asp:ListItem>-</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Hospital ID</td>
                <td><asp:TextBox runat="server" ID="HospitalIDTxtBox"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Hospital Name</td>
                <td><asp:TextBox runat="server" ID ="HospitalNameTxtBox"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Expected Delivery</td>
                <td><asp:Calendar ID="DeliveryCalendar" runat="server"></asp:Calendar></td>
            </tr>
            <tr>
                <td>Patients Documents</td>
                <td><asp:FileUpload runat="server" ID="PatientDocFile" />
                </td>
            </tr>
            <tr>
                <td><asp:Button runat="server" Text="Order" ID="OrderBldBtn" OnClick="OrderBloodBtn_Click" /></td>
            </tr>
        </table>
  
    </div>
</asp:Content>