<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="ZIMP_Fitness.Calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Fitness Calculator</h2>

        <h3>BMI Calculator</h3>
        <div class="card" style="max-width:360px;">
            <div class="form-field">
                <label for="txtHeight">Height (cm)</label>
                <input type="text" id="txtHeight" />
            </div>
            <div class="form-field">
                <label for="txtWeight">Weight (kg)</label>
                <input type="text" id="txtWeight" />
            </div>
            <button class="cta" id="btnCalcBMI">Calculate BMI</button>
            <div id="bmiResult" style="margin-top:10px;"></div>
        </div>

        <h3 style="margin-top:20px;">Monthly Cost Calculator</h3>
        <div class="card" style="max-width:360px;">
            <div class="form-field">
                <label>Plan</label>
                <select id="selPlan">
                    <option value="25">Basic - €25</option>
                    <option value="35">Plus - €35</option>
                    <option value="45">Pro - €45</option>
                </select>
            </div>
            <div class="form-field">
                <label>Months</label>
                <input type="text" id="txtMonths" value="1" />
            </div>
            <button class="cta" id="btnCalcCost">Calculate Cost</button>
            <div id="costResult" style="margin-top:10px;"></div>
        </div>
    </div>
</asp:Content>

