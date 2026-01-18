<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ZIMP_Fitness.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="about-hero">
    <div class="container">
        <h1>About  FitZone</h1>
        <p class="lead">A friendly, affordable gym built for everyday people who want real results — no fuss, no contracts, just good training.</p>
    </div>
</section>

<section class="about-mission container">
    <div class="about-two-col">
        <div class="about-text">
            <h2>Our mission</h2>
            <p> FitZone exists to make fitness accessible and sustainable. We believe small, consistent steps beat big, short-lived efforts — so our facilities, classes and membership options are designed to fit real lives, not perfect schedules.</p>

            <h3>What we stand for</h3>
            <ul>
                <li><strong>Accessibility:</strong> fair pricing, flexible hours and friendly staff.</li>
                <li><strong>Quality:</strong> well-maintained equipment and qualified instructors.</li>
                <li><strong>Community:</strong> supportive environment for members of all levels.</li>
            </ul>
        </div>

        <div class="about-features">
            <h3>Facilities & services</h3>
            <ul class="feature-list">
                <li>Cardio zone with treadmills, bikes and rowers</li>
                <li>Free weights and resistance machines</li>
                <li>Studio for group classes (Yoga, HIIT, Spin)</li>
                <li>Personal training packages (optional)</li>
                <li>Locker rooms, showers and secure bike parking</li>
            </ul>

            <div class="quick-facts">
                <h4>Quick facts</h4>
                <p><strong>Opening hours:</strong> Mon–Fri 6:00–22:00, Sat–Sun 8:00–18:00</p>
                <p><strong>Memberships from:</strong> €20/month</p>
            </div>
        </div>
    </div>
</section>

<section class="about-story container">
    <h2>Our story</h2>
    <p>FitZone was founded by local trainers who saw too many people discouraged by expensive gyms and overly complicated programmes. Our approach is pragmatic: honest coaching, clear pricing and a welcoming space. We run regular community challenges, free taster classes, and partner with local health providers to support members beyond the gym.</p>
</section>

<section class="testimonials container">
    <h2>What members say</h2>

    <div class="testimonial-grid">
        <blockquote class="testimonial">
            <p>“I used to be intimidated by gyms — FitZone made it simple. The coaches explained everything and I started seeing progress in weeks.”</p>
            <cite>— Emma R., Member (12 months)</cite>
        </blockquote>

        <blockquote class="testimonial">
            <p>“Great value for money. Classes are fun, and the staff actually remember your name.”</p>
            <cite>— Daniel K., Member (8 months)</cite>
        </blockquote>
    </div>
</section>

<section class="cta container">
    <p>Want to try us out? <a href="Join.aspx" class="cta-link">Join now</a> or <a href="Memberships.aspx">see membership plans</a>.</p>
</section>

</asp:Content>
