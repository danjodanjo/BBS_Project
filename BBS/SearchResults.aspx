<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="BBS.SearchResults" %>
<asp:Content ID="SearchScript" ContentPlaceHolderID="JScript" runat="server">
    <script>
        function showWindow() {
            return confirm("Are you sure you want to order?");
        }

    </script>
</asp:Content>

<asp:Content ID="ResultContent" ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <asp:FormView runat="server" ID="ResultformView" DataSourceID="SResultDataSource">     
        <EmptyDataTemplate>
            No Results found.
            Currently there is no hospital that has blood packet you're requested.
            Please contact hospital admin   
            <asp:Button runat="server" ID="ResearchLnkBtn" Text="Search Again" OnClick="ResearchLnkBtn_Click"></asp:Button>
            <asp:Button runat="server" ID="RequestAdminBtn" Text="Request Hospital Admin" OnClick="RequestAdminBtn_Click" />
        </EmptyDataTemplate>

        <HeaderTemplate>
             <div>
                Search Result:
            </div>
        </HeaderTemplate>

        <ItemTemplate>
            
        </ItemTemplate>
    </asp:FormView>

    <div>
                <asp:GridView ID="SearchResultGridView" runat="server" DataSourceID="SResultDataSource" AutoGenerateSelectButton="true" SelectedIndex="0">
                    <SelectedRowStyle BackColor="Red" />
                </asp:GridView>
            </div>

            <div>
                <asp:Button ID="OrderBloodBtn" Text="Order" runat="server" OnClientClick="return showWindow()" OnClick="OrderBloodBtn_Click" />
            </div>


</asp:Content>
