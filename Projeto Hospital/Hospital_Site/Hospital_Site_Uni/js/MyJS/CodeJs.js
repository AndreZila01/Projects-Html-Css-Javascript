var prevScrollpos = window.pageYOffset;
window.onscroll = function () {
    var currentScrollPos = window.pageYOffset;
    if (prevScrollpos > currentScrollPos) {
        document.getElementById("navbar").style.top = "0";
    } else {
        document.getElementById("navbar").style.top = "-60px";
    }
    prevScrollpos = currentScrollPos;
}

function onloa() {
    $('#login-button').click(function () {
        $('#login-button').fadeOut("slow", function () {
            $("#container").fadeIn();
            TweenMax.from("#container", .4, {
                scale: 0,
                ease: Sine.easeInOut
            });
            TweenMax.to("#container", .4, {
                scale: 1,
                ease: Sine.easeInOut
            });
            document.getElementById("login-button").setAttribute('style', 'visibility: hidden;');
        });
    });

    $(".close-btn").click(function () {
        TweenMax.from("#container", .4, {
            scale: 1,
            ease: Sine.easeInOut
        });
        TweenMax.to("#container", .4, {
            left: "0px",
            scale: 0,
            ease: Sine.easeInOut
        });
        $("#container, #forgotten-container").fadeOut(800, function () {
            $("#login-button").fadeIn(800);
            setTimeout(function () {
                document.getElementById("login-button").setAttribute('style', 'visibility: visible;');
            }, 200);


        });
    });

    /* Forgotten Password */
    $('#forgotten').click(function () {
        $("#container").fadeOut(function () {
            $("#forgotten-container").fadeIn();
        });
    });
}

function RequestPostCheckUser() {
    jQuery.ajax({
        method: "POST",
        url: "LoginC.html/checkUser",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify({ username: 'testar', password: 'testas' }),
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log("Error", errorThrown);
        },
        success: function (result) {
            console.log("success", result);
        }
    });
}

function RequestPostForgetUser() {
    jQuery.ajax({
        method: "POST",
        url: "LoginS.html/newcode",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify({
            email: document.getElementsByName('email')[1].value }),
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log("Error", errorThrown);
        },
        success: function (result) {
            console.log("success", result);
        }
    });
}

function onloaadS() {
			
    /* Forgotten Password */
    $('#forgotten').click(function () {
        $("#container").fadeOut(function () {
            $("#forgotten-container").fadeIn();
        });
    });
    $(".close-btn").click(function () {
        TweenMax.from("#container", .4, {
            scale: 1,
            ease: Sine.easeInOut
        });
        TweenMax.to("#container", .4, {
            left: "0px",
            scale: 0,
            ease: Sine.easeInOut
        });
        $("#container, #forgotten-container").fadeOut(800, function () {
            $("#container").fadeIn(800);
            setTimeout(function () {
                document.getElementById("container").setAttribute('style', 'visibility: visible;');
            }, 200);


        });
    });
}