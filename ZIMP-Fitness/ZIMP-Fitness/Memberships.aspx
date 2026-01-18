<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Memberships.aspx.cs" Inherits="ZIMP_Fitness.Memberships" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <h2>Membership Plans</h2>

<div class="pricing">
    <div class="plan">
        <h3>Basic</h3>
        <p class="price">€20 / month</p>
        <ul>
            <li>Gym access</li>
            <li>Cardio & weights</li>
        </ul>
    </div>

    <div class="plan featured">
        <h3>Standard</h3>
        <p class="price">€30 / month</p>
        <ul>
            <li>All Basic features</li>
            <li>Group classes</li>
        </ul>
    </div>

    <div class="plan">
        <h3>Premium</h3>
        <p class="price">€40 / month</p>
        <ul>
            <li>All Standard features</li>
            <li>Personal trainer</li>
        </ul>
    </div>
</div>

</asp:Content>
