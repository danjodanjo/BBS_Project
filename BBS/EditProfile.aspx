<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="DotNet_Assignment2.EditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 98%;
            height: 737px;
        }
        .auto-style2 {
            width: 187px;
        }
        .auto-style3 {
            width: 338px;
        }
        .auto-style4 {
            width: 428px;
        }
        .auto-style5 {
            width: 338px;
            height: 23px;
        }
        .auto-style6 {
            width: 428px;
            height: 23px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            width: 187px;
            text-align: center;
        }
        .newStyle1 {
            font-family: "Tw Cen MT Condensed Extra Bold";
        }
        .auto-style9 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: x-large;
        }
        .newStyle2 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: larger;
        }
        .newStyle3 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: x-large;
        }
        .newStyle4 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: x-large;
        }
        .newStyle5 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: larger;
        }
        .newStyle6 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: x-large;
        }
        .newStyle7 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: x-large;
        }
        .newStyle8 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: x-large;
        }
        .newStyle9 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: x-large;
        }
        .newStyle10 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: x-large;
        }
        .newStyle11 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: x-large;
        }
        .newStyle12 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: x-large;
        }
        .newStyle13 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: x-large;
        }
        .auto-style10 {
            font-size: 50pt;
            width: 1025px;
        }
        .newStyle14 {
            font-family: "Times New Roman";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8" rowspan="8">&nbsp;</td>
                <td class="auto-style7" colspan="2">
                    <h1 class="auto-style10"><span class="newStyle14">My Profile </span></h1>
                </td>
                <td>
                    <asp:ImageButton ID="ImgBtnBack" runat="server" Height="60px" ImageUrl="~/Images/backIcon.png" OnClick="ImgBtnBack_Click" Width="63px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblDonorIDEP" runat="server" CssClass="auto-style9" Text="Your ID:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="LabelID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblFirstNameEP" runat="server" CssClass="auto-style9" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelFirstName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblLastNameEP" runat="server" CssClass="newStyle3" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelLastName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblGenderEP" runat="server" CssClass="newStyle4" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelGender" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblBirthDateEP" runat="server" CssClass="newStyle3" Text="BirthDate:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelBirthDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblAddressEP" runat="server" CssClass="newStyle6" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelAddress" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblZipCodeEP" runat="server" CssClass="newStyle7" Text="Zip Code:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelZipCode" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblEmailEP" runat="server" CssClass="newStyle8" Text="E-mail:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblContactNumberEP" runat="server" CssClass="newStyle9" Text="Contact Number:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelContactNumber" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblBloodTypeEP" runat="server" CssClass="newStyle10" Text="Blood Type:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelBloodType" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblRhesusEP" runat="server" CssClass="newStyle11" Text="Rhesus:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelRhesus" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblUsernameEP" runat="server" CssClass="newStyle12" Text="Username:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelUsername" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblPasswordEP" runat="server" CssClass="newStyle13" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabelPassword" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
