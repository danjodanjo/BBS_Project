<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AppointmentList.aspx.cs" Inherits="BBS.AppointmentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="JScript" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="AppointmentListContent" ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <asp:FormView ID="AppointmentListFormView" DataKeyNames="AppointmentID" DataSourceID="AppointmentDataSource" runat="server">
        <HeaderTemplate>
            Appointment Lists
        </HeaderTemplate>
        <EmptyDataTemplate>
            No Appointment with Donours
        </EmptyDataTemplate>

        <ItemTemplate>
            <asp:GridView ID="AppointmentListGridView" AutoGenerateEditButton="true" AutoGenerateColumns="false" runat="server" DataKeyNames="AppointmentID" DataSourceID="AppointmentDataSource">
                <Columns>
                    <asp:TemplateField HeaderText="Arrival Time">
                        <ItemTemplate>
                            <asp:Label ID="ArrivalHospitalLbl" runat="server" Text='<% # Eval("ArrivalTime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="FirstNameLbl" runat="server" Text='<% # Eval("DFirstName") %>'></asp:Label>&nbsp;
                            <asp:Label ID="LastNameLbl" runat="server" Text='<%# Eval("DLastName") %>'></asp:Label> 
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Appointment Form">
                        <ItemTemplate>
                            <asp:LinkButton ID="appFormLinkButton" runat="server" Text='<% # Eval("AppointmentID") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label ID="RhesusLbl" runat="server" Text='<% # Eval("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
