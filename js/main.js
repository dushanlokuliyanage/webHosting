(function ($) {
  "use strict";

  // Spinner
  var spinner = function () {
    setTimeout(function () {
      if ($("#spinner").length > 0) {
        $("#spinner").removeClass("show");
      }
    }, 1);
  };
  spinner(0);

  // Fixed Navbar
  $(window).scroll(function () {
    if ($(window).width() < 992) {
      if ($(this).scrollTop() > 55) {
        $(".fixed-top").addClass("shadow");
      } else {
        $(".fixed-top").removeClass("shadow");
      }
    } else {
      if ($(this).scrollTop() > 55) {
        $(".fixed-top").addClass("shadow").css("top", -55);
      } else {
        $(".fixed-top").removeClass("shadow").css("top", 0);
      }
    }
  });

  // Back to top button
  $(window).scroll(function () {
    if ($(this).scrollTop() > 300) {
      $(".back-to-top").fadeIn("slow");
    } else {
      $(".back-to-top").fadeOut("slow");
    }
  });
  $(".back-to-top").click(function () {
    $("html, body").animate({ scrollTop: 0 }, 1500, "easeInOutExpo");
    return false;
  });

  // Testimonial carousel
  $(".testimonial-carousel").owlCarousel({
    autoplay: true,
    smartSpeed: 2000,
    center: false,
    dots: true,
    loop: true,
    margin: 25,
    nav: true,
    navText: [
      '<i class="bi bi-arrow-left"></i>',
      '<i class="bi bi-arrow-right"></i>',
    ],
    responsiveClass: true,
    responsive: {
      0: {
        items: 1,
      },
      576: {
        items: 1,
      },
      768: {
        items: 1,
      },
      992: {
        items: 2,
      },
      1200: {
        items: 2,
      },
    },
  });

  // vegetable carousel
  $(".vegetable-carousel").owlCarousel({
    autoplay: true,
    smartSpeed: 1500,
    center: false,
    dots: true,
    loop: true,
    margin: 25,
    nav: true,
    navText: [
      '<i class="bi bi-arrow-left"></i>',
      '<i class="bi bi-arrow-right"></i>',
    ],
    responsiveClass: true,
    responsive: {
      0: {
        items: 1,
      },
      576: {
        items: 1,
      },
      768: {
        items: 2,
      },
      992: {
        items: 3,
      },
      1200: {
        items: 4,
      },
    },
  });

  // Modal Video
  $(document).ready(function () {
    var $videoSrc;
    $(".btn-play").click(function () {
      $videoSrc = $(this).data("src");
    });
    console.log($videoSrc);

    $("#videoModal").on("shown.bs.modal", function (e) {
      $("#video").attr(
        "src",
        $videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0"
      );
    });

    $("#videoModal").on("hide.bs.modal", function (e) {
      $("#video").attr("src", $videoSrc);
    });
  });

  // Product Quantity
  $(".quantity button").on("click", function () {
    var button = $(this);
    var oldValue = button.parent().parent().find("input").val();
    if (button.hasClass("btn-plus")) {
      var newVal = parseFloat(oldValue) + 1;
    } else {
      if (oldValue > 0) {
        var newVal = parseFloat(oldValue) - 1;
      } else {
        newVal = 0;
      }
    }
    button.parent().parent().find("input").val(newVal);
  });
})(jQuery);

function changeView() {
  var signUpBox = document.getElementById("signUpBox");
  var signInBox = document.getElementById("signInBox");

  signUpBox.classList.toggle("d-none");
  signInBox.classList.toggle("d-none");
}

function signup() {
  var fname = document.getElementById("fname");
  var lname = document.getElementById("lname");
  var email = document.getElementById("email");
  var password = document.getElementById("password");
  var mobile = document.getElementById("mobile");
  var gender = document.getElementById("gender");

  var form = new FormData();
  form.append("f", fname.value);
  form.append("l", lname.value);
  form.append("e", email.value);
  form.append("p", password.value);
  form.append("m", mobile.value);
  form.append("g", gender.value);

  var request = new XMLHttpRequest();

  request.onreadystatechange = function () {
    if ((request.status == 200) & (request.readyState == 4)) {
      var response = request.responseText.trim();

      if (response == "Success") {
       //  document.getElementById("msg").innerHTML = "Registration Successfull !";
       // document.getElementById("msg").className = "alert alert-success";
       // document.getElementById("msgdiv").className = "d-block";

       const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        didOpen: (toast) => {
          toast.onmouseenter = Swal.stopTimer;
          toast.onmouseleave = Swal.resumeTimer;

          setTimeout(function () {
            window.location.reload();
          }, 3000);
        },
      });
      Toast.fire({
        icon: "success",
        title: "SignUped in successfully",
      });

      } else {
        document.getElementById("msg").innerHTML = response;
        document.getElementById("msgdiv").className = "d-block";
      }
    }
  };

  request.open("POST", "signUpProcess.php", true);
  request.send(form);
}

function signin() {
  var email = document.getElementById("email2");
  var password = document.getElementById("password2");
  var rememberme = document.getElementById("rememberme");

  var form = new FormData();
  form.append("e", email.value);
  form.append("p", password.value);
  form.append("r", rememberme.checked);

  var request = new XMLHttpRequest();

  request.onreadystatechange = function () {
    if ((request.status == 200) & (request.readyState == 4)) {
      var response = request.responseText;

      if (response == "success") {
        window.location = "index.php";
      } else {
        document.getElementById("msg1").innerHTML = response;
        document.getElementById("msgdiv1").className = "d-block";
      }
    }
  };

  request.open("POST", "signInProcess.php", true);
  request.send(form);
}

var forgotPasswordModal;

function forgotPassword() {
  var email = document.getElementById("email2");

  var request = new XMLHttpRequest();

  request.onreadystatechange = function () {
    if ((request.status == 200) & (request.readyState == 4)) {
      var text = request.responseText;

      if (text == "Success") {
        console.log();
        alert( "Verification code has sent successfully. Please check your Email." );

        var modal = document.getElementById("fpmodal");
        forgotPasswordModal = new bootstrap.Modal(modal);
        forgotPasswordModal.show();
      } else {
        document.getElementById("msg1").innerHTML = text;
        document.getElementById("msgdiv1").className = "d-block";
      }
    }
  };

  request.open("GET", "forgotPasswordProcess.php?e=" + email.value, true);
  request.send();
}

function showPassword1() {
  var textfield = document.getElementById("np");
  var button = document.getElementById("npb");

  if (textfield.type == "password") {
    textfield.type = "text";
    button.innerHTML = "Hide";
  } else {
    textfield.type = "password";
    button.innerHTML = "Show";
  }
}

function showPassword2() {
  var textfield = document.getElementById("rnp");
  var button = document.getElementById("rnpb");

  if (textfield.type == "password") {
    textfield.type = "text";
    button.innerHTML = "Hide";
  } else {
    textfield.type = "password";
    button.innerHTML = "Show";
  }
}

function resetPassword() {
  var email = document.getElementById("email2");
  var newPassword = document.getElementById("np");
  var retypePassword = document.getElementById("rnp");
  var Verification = document.getElementById("vcode");

  var form = new FormData();
  form.append("e", email.value);
  form.append("n", newPassword.value);
  form.append("r", retypePassword.value);
  form.append("v", Verification.value);

  var request = new XMLHttpRequest();

  request.onreadystatechange = function () {
    if ((request.status == 200) & (request.readyState == 4)) {
      var response = request.responseText;
      if (response == "success") {
        alert("Password Updated Successfully");
        forgotPasswordModal.hide();
        window.location = "index.php";
      } else {
        alert(response);
      }
    }
  };

  request.open("POST", "resetPasswordProcess.php", true);
  request.send(form);
}

function profail(){
alert("Sucess");
}

// Loop shape modal - Use return

function showAlert(tittle, text, icon) {
  return Swal.fire({
    title: tittle,
    text: text,
    icon: icon,
    color: "#fff",
  });
}


