<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Join.aspx.cs" Inherits="ZIMP_Fitness.Join" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Join ZIMP Fitness</h2>
        <div class="card" style="max-width:480px;">
            <asp:Label ID="lblMessage" runat="server" EnableViewState="false"></asp:Label>

            <div class="form-field">
                <asp:Label runat="server" AssociatedControlID="txtName" Text="Full Name"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" />
            </div>

            <div class="form-field">
                <asp:Label runat="server" AssociatedControlID="txtEmail" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />
            </div>

            <div class="form-field">
                <asp:Label runat="server" AssociatedControlID="ddlPlan" Text="Membership Type"></asp:Label>
                <asp:DropDownList ID="ddlPlan" runat="server">
                    <asp:ListItem Text="Basic" Value="Basic" />
                    <asp:ListItem Text="Plus" Value="Plus" />
                    <asp:ListItem Text="Pro" Value="Pro" />
                </asp:DropDownList>
            </div>

            <div class="form-field">
                <asp:Label runat="server" AssociatedControlID="txtStart" Text="Start Date"></asp:Label>
                <asp:TextBox ID="txtStart" runat="server" TextMode="Date" />
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="cta" OnClick="btnSubmit_Click" />
        </div>
    </div>
</asp:Content>

