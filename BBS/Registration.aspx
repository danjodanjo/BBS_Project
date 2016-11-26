<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DotNet_Assignment2.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 187px;
        }
        .auto-style2 {
            width: 702px;
        }
        .auto-style3 {
            width: 100%;
            height: 643px;
        }
        .auto-style5 {
            width: 371px;
        }
        .auto-style8 {
            width: 371px;
            height: 40px;
        }
        .auto-style11 {
            width: 165px;
        }
        .newStyle1 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle2 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle3 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle4 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle5 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle6 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle7 {
            font-family: "Blackadder ITC";
        }
        .newStyle8 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle9 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle10 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle11 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle12 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle13 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle14 {
            font-family: "Bernard MT Condensed";
        }
        .newStyle15 {
            font-family: "Bernard MT Condensed";
        }
        .auto-style13 {
            width: 371px;
            height: 267px;
        }
        .newStyle16 {
            font-family: "Berlin Sans FB Demi";
        }
        .newStyle17 {
            font-family: "Bodoni MT Black";
        }
        .newStyle18 {
            font-family: "Tw Cen MT Condensed Extra Bold";
        }
        .auto-style16 {
            width: 198px;
        }
        .auto-style17 {
            width: 198px;
            height: 267px;
        }
        .auto-style18 {
            height: 40px;
            width: 198px;
        }
        .auto-style24 {
            font-family: "Bernard MT Condensed";
            color: #FF3300;
            height: 71px;
            font-size: 50pt;
            width: 573px;
            margin-top: 27px;
        }
        .auto-style28 {
            width: 702px;
            height: 51px;
        }
        .auto-style32 {
            width: 198px;
            height: 63px;
        }
        .auto-style33 {
            width: 371px;
            height: 63px;
        }
        .auto-style34 {
            width: 165px;
            height: 63px;
        }
        .auto-style38 {
            width: 113px;
        }
        .auto-style39 {
            width: 113px;
            height: 63px;
        }
        .auto-style40 {
            margin-top: 0px;
            margin-left: 40px;
        }
        .auto-style41 {
            width: 174px;
        }
        .auto-style42 {
            width: 174px;
            height: 63px;
        }
    </style>
</head>
<body style="height: 836px; width: 1606px; margin-left: 273px;">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style28">
                <asp:Image ID="ImgLogoResgister" runat="server" Height="84px" ImageUrl="~/Images/BBS-Icon-crop.png" Width="271px" />
            </td>
          
        </tr>
        <tr>
            <td class="auto-style2">
                <h1 class="auto-style24">Donors Registration</h1>
            </td>
          
        </tr>
    </table>
        <table class="auto-style3">
            <tr>
                <td class="auto-style16">&nbsp; </td>
                <td class="auto-style5">
                    <asp:Label ID="lblContactInformation" runat="server" style="font-weight: 700; text-align: center" Text="1. Contact Information" BackColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style41">
                    <asp:Label ID="lblCreateLogin" runat="server" style="font-weight: 700" Text="2. Create Login" BackColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style38">
                    &nbsp;</td>
                <td rowspan="11">
                    <asp:Image ID="ImgQuote" runat="server" Height="673px" ImageUrl="~/Images/quotes.jpg" Width="414px" CssClass="auto-style40" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="lblFirstName" runat="server" CssClass="newStyle2" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RFVFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name is required!" SetFocusOnError="true" ForeColor="Red" />
                    </strong>
                </td>
                <td class="auto-style11">
    <asp:Label ID="lblUsername" runat="server" CssClass="newStyle13" Text="Username:"></asp:Label>
                </td>
                <td class="auto-style41">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RFVUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required!" SetFocusOnError="true" ForeColor="Red" />
                    </strong>
                </td>
                <td class="auto-style38">
                    &nbsp;</td>
            </tr>
            <tr> 
                <td class="auto-style16">
                    <asp:Label ID="lblLastName" runat="server" CssClass="newStyle3" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RFVLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required!" SetFocusOnError="true" ForeColor="Red" />
                    </strong>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="lblPassword" runat="server" CssClass="newStyle14" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style41">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RFVPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required!" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" />
                    </strong>
                </td>
                <td class="auto-style38">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">
                    <asp:Label ID="lblIAm" runat="server" CssClass="newStyle4" Text="I Am:"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:RadioButtonList ID="RblGender" runat="server" Height="27px" RepeatDirection="Horizontal" Width="158px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <strong>
                    <asp:RequiredFieldValidator ID="RFVGender" runat="server" ControlToValidate="RblGender" ErrorMessage="Gender is required!" SetFocusOnError="true" ForeColor="Red" />
                    </strong>
                </td>
                <td class="auto-style34">
                    <asp:Label ID="lblConfirmPassword" runat="server" CssClass="newStyle15" Text="Confirm Password:"></asp:Label>
                </td>
                <td class="auto-style42">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" ></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RFVConfirmPassword" runat="server" ControlToValidate ="txtConfirmPassword" ErrorMessage="Password Confirmation is required!" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" />
                    </strong>
                </td>
                <td class="auto-style39">
                    <strong>
                    <asp:CompareValidator ID="ComparePasswords" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Your passwords do not match up!" Display="Dynamic" ForeColor="Red" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="lblBirthDate" runat="server" CssClass="newStyle5" Text="Birth Date:"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:Calendar ID="CldBirthDate" runat="server" Height="194px" Width="301px"></asp:Calendar>
                  
                </td>
                <td colspan="2">
                     <asp:ImageButton ID="ImgBtnSignUp" runat="server" Height="49px" ImageAlign="Right" ImageUrl="~/Images/SignUpBtn1.png" Width="139px" OnClick="ImgBtnSignUp_Click" />
                </td>
      
                
                <td class="auto-style38">
                     &nbsp;</td>
      
                
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="lblAddress" runat="server" CssClass="newStyle6" Text="Address"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtAddress" runat="server"  Width="253px" Height="55px" TextMode="MultiLine"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="lblZipCode" runat="server" CssClass="newStyle8" Text="Zip Code:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
                </td>
             
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="lblEmail" runat="server" CssClass="newStyle9" Text="E-mail:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required!" SetFocusOnError="true" ForeColor="Red" />
                    </strong>
                </td>

            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="lblContactNumber" runat="server" CssClass="newStyle10" Text="Mobile Number:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RFVContactNumber" runat="server" ControlToValidate="txtMobileNumber" ErrorMessage="Contact Number is required!" SetFocusOnError="true" ForeColor="Red" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="lblBloodType" runat="server" CssClass="newStyle11" Text="Blood Type:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DDLBloodType" runat="server" Height="21px" Width="68px">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>AB</asp:ListItem>
                        <asp:ListItem>O</asp:ListItem>
                    </asp:DropDownList>
                    <strong>
                    <asp:RequiredFieldValidator  ID="RFVBloodType" runat="server" ControlToValidate="DDlBloodType" ErrorMessage="Blood Type is required!" SetFocusOnError="true" ForeColor="Red" />
                    </strong>
                </td>
            
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="lblRhesus" runat="server" CssClass="newStyle12" Text="Rhesus:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:RadioButtonList ID="RblRhesus" runat="server" Height="29px" RepeatDirection="Horizontal" Width="141px">
                        <asp:ListItem>-</asp:ListItem>
                        <asp:ListItem>+</asp:ListItem>
                    </asp:RadioButtonList>
                    <strong>
                    <asp:RequiredFieldValidator ID="RFVRhesus" runat="server" ControlToValidate="RblRhesus" ErrorMessage="Rhesus is required!" SetFocusOnError="true" ForeColor="Red" />
                    </strong>
                </td>
         
            </tr>
        </table>
    </form>
    </body>
</html>
