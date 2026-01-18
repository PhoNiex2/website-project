<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="ZIMP_Fitness.Members" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Registered Members</h2>
    <p class="page-desc">
        Below is a list of members who have joined FitZone.
    </p>

    <asp:GridView 
        ID="gvMembers"
        runat="server"
        AutoGenerateColumns="False"
        CssClass="members-table"
        HeaderStyle-CssClass="members-header"
        RowStyle-CssClass="members-row"
        AlternatingRowStyle-CssClass="members-alt"
        GridLines="None">

        <Columns>
            <asp:BoundField DataField="MemberID" HeaderText="ID" />
            <asp:BoundField DataField="FullName" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="MembershipType" HeaderText="Membership" />
            <asp:BoundField DataField="StartDate" HeaderText="Joined On"
                            DataFormatString="{0:dd/MM/yyyy}" />
        </Columns>

    </asp:GridView>

</asp:Content>
