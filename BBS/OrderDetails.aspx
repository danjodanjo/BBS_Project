<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="BBS.OrderDetails" Theme="RedTheme" StylesheetTheme="RedTheme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="JScript" runat="server">
    
    <style type="text/css">
        #navigation li {
}

.menu {
    list-style-type: none;
    display:inline-block;
    margin-right: 10px;
    text-decoration:none;
}

.link-menu {
    text-decoration:none;
}
    </style>
</asp:Content>
<asp:Content ID="OrderDetailsNav" ContentPlaceHolderID="NavPlaceHolder" runat="server">
    <ul id="navigation">
        <li class="menu"><asp:HyperLink runat="server" Text="Blood Inventory" ID="BloodInventoryLink" NavigateUrl="~/BloodInventory.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Blood Request" ID="BlooDRequestLink" NavigateUrl="~/BloodRequest.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Order Details" ID="OrderDetailsLink" NavigateUrl="~/OrderDetails.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="Appointment List" ID="AppointmentListLink" NavigateUrl="~/AppointmentList.aspx" CssClass="link-menu"></asp:HyperLink></li>
        <li class="menu"><asp:HyperLink runat="server" Text="View Donors" ID="ViewDonourLink" NavigateUrl="~/ViewDonors.aspx" CssClass="link-menu"></asp:HyperLink></li>
    </ul>
</asp:Content>
<asp:Content ID="OrderDetailsComponent" ContentPlaceHolderID="BodyPlaceHolder" runat="server">
   
    <h2> Order Requests </h2>
    <asp:FormView ID="PendingRequestFormView" DataKeyNames="RequestID" DataSourceID="RequestDataSource" runat="server">
        <HeaderTemplate>
            Pending Request(S)
        </HeaderTemplate>
        <EmptyDataTemplate>
            No Pending request.
        </EmptyDataTemplate>

        <ItemTemplate>
            <asp:GridView ID="PendingRequestGridView" AutoGenerateColumns="false" runat="server" DataKeyNames="RequestID" DataSourceID="RequestDataSource" OnRowCommand="PendingRequestGridView_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Hospital Name">
                        <ItemTemplate>
                            <asp:Label ID="HospitalNameLbl" runat="server" Text='<% # Eval("HospitalName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hospital ID">
                        <ItemTemplate>
                            <asp:Label ID="HospitalIDLbl" runat="server" Text='<% # Eval("HospitalID") %>'></asp:Label> 
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Blood">
                        <ItemTemplate>
                            <asp:Label ID="BloodLbl" runat="server" Text='<% # Eval("Blood") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rhesus">
                        <ItemTemplate>
                            <asp:Label ID="RhesusLbl" runat="server" Text='<% # Eval("Rhesus") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:Label ID="QtyLbl" runat="server" Text='<% # Eval("Qty") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Required Date">
                        <ItemTemplate>
                            <asp:Label ID="ReqDateLbl" runat="server" Text='<% # Eval("RequiredDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Attachment">
                        <ItemTemplate>
                            <asp:Label ID="AttLbl" runat="server" Text='<% # Eval("Attachment") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="AcceptBtn" runat="server" Text="Accept" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Accept" />
                            <asp:Button ID="RejectBtn" runat="server" Text="Reject" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Reject" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ItemTemplate>
    </asp:FormView>

    <h2>On Delivery</h2>
    <asp:FormView ID="ToDeliverFormView" DataSourceID="DeliverDataSource" runat="server">
        <HeaderTemplate>
            Deliver to Hospital
        </HeaderTemplate>
        <EmptyDataTemplate>
            You don't have any blood packets to deliver
        </EmptyDataTemplate>

        <ItemTemplate>
            <asp:GridView ID="DeliverRequestGridView" AutoGenerateColumns="False" runat="server" DataSourceID="DeliverDataSource">
                <Columns>
                    <asp:TemplateField HeaderText="Hospital Name">
                        <ItemTemplate>
                            <asp:Label ID="HospNameLbl" runat="server"
                                Text='<%# Eval("HospitalName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Blood">
                        <ItemTemplate>
                            <asp:Label ID="BloodLbl" runat="server"
                                Text='<%# Eval("Blood") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rhesus">
                        <ItemTemplate>
                           <asp:Label runat="server" ID="RhesusLbl" Text='<% # Eval("Rhesus") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:Label ID="QtyLbl" runat="server"
                                Text='<%# Eval("Qty") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time Remaining">
                        <ItemTemplate>
                            <asp:Label ID="RequiredDate" runat="server"
                                Text='<% # Eval("Time Remaining") %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ItemTemplate>
    </asp:FormView>

    <h2>My Order</h2>
    <asp:FormView ID="MyOrderFormView" runat="server" DataKeyNames="RequestID" DataSourceID="MyOrderDataSource">
        <HeaderTemplate>
            Your hospital's order
        </HeaderTemplate>
        <EmptyDataTemplate>
            You haven't placed any order
        </EmptyDataTemplate>
        <ItemTemplate>
            <asp:GridView ID="MyOrderGridView" runat="server" DataSourceID="MyOrderDataSource">

            </asp:GridView>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
