<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="ZIMP_Fitness.Team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Our Team</h2>
        <div class="team-grid">
            <div class="team-member">
                <img src="Images/staff1.jpg" alt="John Trainer" />
                <h4>John</h4>
                <p>Personal Trainer — strength & conditioning coach</p>
            </div>
            <div class="team-member">
                <img src="Images/staff2.jpg" alt="Sarah" />
                <h4>Sarah</h4>
                <p>Yoga & Mobility instructor</p>
            </div>
            <div class="team-member">
                <img src="Images/staff3.jpg" alt="Mike" />
                <h4>Mike</h4>
                <p>Cardio & HIIT specialist</p>
            </div>
        </div>
    </div>
</asp:Content>
