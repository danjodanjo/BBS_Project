<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BBS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 131%;
            height: 111px;
        }
        .auto-style6 {
            width: 771px;
            height: 82px;
        }
        .auto-style7 {
            height: 82px;
            width: 427px;
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
        .auto-style17 {
            width: 55px;
            height: 82px;
        }
        .auto-style18 {
            width: 37px;
            height: 82px;
        }
        .auto-style21 {
            height: 120px;
            width: 1665px;
        }
        .newStyle1 {
            font-family: "Tw Cen MT Condensed Extra Bold";
        }
        .newStyle2 {
            font-family: "Tw Cen MT Condensed Extra Bold";
        }
        .auto-style22 {
            width: 146px;
            height: 82px;
        }
        .auto-style23 {
            width: 153px;
            height: 82px;
        }
        .auto-style24 {
            font-family: "Tw Cen MT Condensed Extra Bold";
            font-size: large;
        }
    </style>
</head>
<body style="height: 117px; width: 1724px;">
    <form id="form1" runat="server">
    <div class="auto-style21">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Image ID="ImgLogo" runat="server" Height="88px" ImageUrl="~/Images/BBS-Icon-crop.png" Width="282px" />
                </td>
                <td class="auto-style17">
                    <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="auto-style24"></asp:Label>
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtUsernameLogin" runat="server" style="margin-left: 0px"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RFVUsername" runat="server" ControlToValidate="txtUsernameLogin" ErrorMessage="Username is required!" SetFocusOnError="true" ForeColor="Red" />
                    </strong>
                </td>
                <td class="auto-style18">
                    <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="auto-style24"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtPasswordLogin" runat="server" TextMode="Password"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RFVPassword" runat="server" ControlToValidate="txtPasswordLogin" ErrorMessage="Password is required!" SetFocusOnError="true" ForeColor="Red" />
                    </strong>
                </td>
                <td class="auto-style7">
                    <asp:ImageButton ID="ImgBtnLogin" runat="server" Height="28px" ImageUrl="~/Images/LoginBtn.png" style="margin-top: 9px" Width="100px" OnClick="ImgBtnLogin_Click" />
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
                    <asp:ImageButton ID="ImgBtnRegister" runat="server" Height="49px" ImageAlign="Right" ImageUrl="~/Images/RegisterNowBtn.png" OnClick="ImgBtnRegister_Click" Width="197px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
