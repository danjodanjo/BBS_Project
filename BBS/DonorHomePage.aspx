<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonorHomePage.aspx.cs" Inherits="DotNet_Assignment2.DonorHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 114px;
        }
        .auto-style6 {
            width: 561px;
            height: 72px;
        }
        .auto-style10 {
            width: 105%;
            height: 700px;
        }
        .auto-style11 {
            height: 703px;
            width: 702px;
        }
        .auto-style12 {
            margin-top: 0px;
        }
        .auto-style13 {
            width: 702px;
            height: 23px;
        }
        .auto-style21 {
            height: 120px;
            width: 1964px;
        }
        .newStyle1 {
            font-family: "Tw Cen MT Condensed Extra Bold";
        }
        .newStyle2 {
            font-family: "Tw Cen MT Condensed Extra Bold";
        }
        .auto-style23 {
        width: 3246px;
        height: 72px;
    }
    .auto-style25 {
        width: 205px;
        height: 72px;
        font-size: xx-large;
    }
    .newStyle3 {
        font-family: "Bernard MT Condensed";
    }
        </style>
</head>
<body style="height: 117px; width: 1752px;">
    <form id="form1" runat="server">
    <div class="auto-style21">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style23">
                    <asp:Image ID="ImgLogo" runat="server" Height="88px" ImageUrl="~/Images/BBS-Icon-crop.png" Width="282px" />
                </td>
                
                <td class="auto-style25">
                    <span class="newStyle3">Welcome, <asp:Label ID="LblUsername" runat="server"></asp:Label>
                    </span>
                </td>
                
                <td class="auto-style6">
                    <asp:ImageButton ID="ImgBtnLogout" runat="server" Height="78px" ImageUrl="~/Images/logout-512.png" OnClick="ImgBtnLogout_Click" Width="64px" />
                </td>
                
            </tr>
        </table>
    
    </div>
        <table class="auto-style10">
            <tr>
                <td class="auto-style11">
                    <asp:Image ID="ImgAdvertisment" runat="server" CssClass="auto-style12" Height="656px" ImageUrl="~/BloodDonationEvent/1.jpg" Width="1806px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="47px" ImageAlign="Right" ImageUrl="~/Images/EditProfileBtn.png" OnClick="ImageButton1_Click" Width="122px" />
                </td>
            </tr>
        </table>
    </form>
    </body>
    </html>