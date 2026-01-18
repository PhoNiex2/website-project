$(document).ready(function () {

    console.log("jQuery loaded");

    // FAQ toggle
    $(document).on('click', '.faq-question', function () {
        $(this).next('.faq-answer').slideToggle();
    });

    // BMI calculator
    $(document).on('click', '#btnCalcBMI', function (e) {
        e.preventDefault();

        var h = parseFloat($('#txtHeight').val());
        var w = parseFloat($('#txtWeight').val());

        if (isNaN(h) || isNaN(w)) {
            $('#bmiResult').text('Please enter valid numbers.');
            return;
        }

        var bmi = w / ((h / 100) * (h / 100));
        var category = "";

        if (bmi < 18.5) category = "Underweight";
        else if (bmi < 25) category = "Normal weight";
        else if (bmi < 30) category = "Overweight";
        else category = "Obesity";

        $('#bmiResult').text('BMI: ' + bmi.toFixed(2) + ' (' + category + ')');
    });

    // Membership price calculator
    $(document).on('click', '#btnCalcCost', function (e) {
        e.preventDefault();

        var monthlyPrice = parseFloat($('#selPlan').val());
        var months = parseInt($('#txtMonths').val(), 10);

        if (isNaN(monthlyPrice) || isNaN(months) || months <= 0) {
            $('#costResult').css('color', 'red')
                .text('Please select a plan and enter a valid number of months.');
            return;
        }

        var total = monthlyPrice * months;

        $('#costResult').css('color', 'green')
            .text('Total cost: €' + total.toFixed(2));
    });


    // Testimonial rotator
    (function rotateTestimonials() {
        var $items = $('#testimonial-rotator .testimonial-item');
        if ($items.length <= 1) return;
        var idx = 0;
        setInterval(function () {
            $items.eq(idx).fadeOut(400).removeClass('active');
            idx = (idx + 1) % $items.length;
            $items.eq(idx).fadeIn(400).addClass('active');
        }, 5000);
    })();

    // Newsletter feedback
    $(document).on('click', '#btnNewsletter', function (e) {
        e.preventDefault();
        var email = $('#newsletterEmail').val();
        if (!email || email.indexOf('@') === -1) {
            $('#newsletterMsg').css('color', 'red').text('Enter a valid email.');
            return;
        }
        $('#newsletterMsg').css('color', 'green').text('Thanks — you are subscribed (demo).');
        $('#newsletterEmail').val('');
    });

});
