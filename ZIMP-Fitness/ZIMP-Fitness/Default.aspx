<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ZIMP_Fitness._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Home page: enhanced content -->
<section class="hero">
    <div class="container">
        <h1>Train Smarter at FitZone</h1>
        <p class="lead">Affordable, flexible gym memberships designed for real life. Get fitter, feel stronger — no nonsense.</p>
        <a href="Join.aspx" class="cta-link">Join Now</a>
        <a href="Memberships.aspx" class="cta-link">View Plans</a>
    </div>
</section>

<section class="home-features container">
    <div class="feature">
        <h3>Flexible Memberships</h3>
        <p>Plans from €20/month — pay monthly, cancel anytime.</p>
    </div>
    <div class="feature">
        <h3>Expert Coaches</h3>
        <p>Qualified trainers run small, friendly classes and one-to-one sessions.</p>
    </div>
    <div class="feature">
        <h3>Modern Facilities</h3>
        <p>Cardio, strength, free weights, and a dedicated studio for classes.</p>
    </div>
</section>

<section class="classes container">
    <h2>Weekly Classes</h2>
    <div class="classes-grid">
        <div class="class-card">
            <h4>Mon - HIIT</h4>
            <p>18:30 - 19:15 — High intensity interval training to burn calories fast.</p>
        </div>
        <div class="class-card">
            <h4>Tue - Yoga</h4>
            <p>18:00 - 19:00 — Mobility and recovery, suitable for all levels.</p>
        </div>
        <div class="class-card">
            <h4>Thu - Spin</h4>
            <p>19:00 - 19:45 — Cardio blast for endurance and power.</p>
        </div>
    </div>
</section>

<section class="why container">
    <h2>Why members choose FitZone</h2>
    <ul class="why-list">
        <li>Transparent pricing and no hidden fees</li>
        <li>Friendly community and small class sizes</li>
        <li>Simple, effective training programmes</li>
    </ul>
</section>

<section class="testimonials container">
    <h2>Member stories</h2>
    <div id="testimonial-rotator" class="testimonial-rotator">
        <div class="testimonial-item active">
            <p>“FitZone helped me stick to training — coaches are brilliant and the classes are fun.”</p>
            <cite>— Emma</cite>
        </div>
        <div class="testimonial-item">
            <p>“Great value and real results. I’ve been a member 10 months and I feel stronger.”</p>
            <cite>— Daniel</cite>
        </div>
        <div class="testimonial-item">
            <p>“Clean gym, friendly staff, and flexible hours that fit my job.”</p>
            <cite>— Laura</cite>
        </div>
    </div>
</section>

<section class="newsletter container">
    <h2>Get updates & specials</h2>
    <p>Sign up for our newsletter (optional):</p>
    <form id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="you@example.com" />
        <button id="btnNewsletter" class="cta-link">Subscribe</button>
        <div id="newsletterMsg" style="margin-top:8px;"></div>
    </form>
</section>

</section>

</asp:Content>
