$(function() {
  $("#edit").on("click", function() {
     $("#your_id").show();
     $("#edit").hide();
  });
});

$(function() {
  $(".exit").on("click", function() {
    $("#your_id").hide();
    $("#edit").show();
   });
 });

$(function() {
  $("#new-note").on("click", function() {
     $("#new-n").show();
     $("#new-note").hide();
  });
});

$(function() {
  $(".exit").on("click", function() {
    $("#new-n").hide();
    $("#new-note").show();
   });
 });

 $(function() {
   $("#new-bucketlist").on("click", function() {
      $("#new-b").show();
      $("#new-bucketlist").hide();
   });
 });

 $(function() {
   $(".exit").on("click", function() {
     $("#new-b").hide();
     $("#new-bucketlist").show();
    });
  });

  $(function() {
    $("#new-brainstorm").on("click", function() {
       $("#new-bs").show();
       $("#new-brainstorm").hide();
    });
  });

  $(function() {
    $(".exit").on("click", function() {
      $("#new-bs").hide();
      $("#new-brainstorm").show();
     });
   });


$(document).ready(function() {
setTimeout(popup, 3000);
function popup() {
$("#logindiv").css("display", "block");
}
$("#login #cancel").click(function() {
$(this).parent().parent().hide();
});


// Login form popup login-button click event.
$("#loginbtn").click(function() {
var name = $("#username").val();
var password = $("#password").val();
if (username == "" || password == ""){
alert("Username or Password was Wrong");
}else{
$("#logindiv").css("display", "none");
}
});
});
