function initNotifications() {
  $("#notify-trigger").on("click", function() {
    $("#new-notification").fadeIn(1000);
    setTimeout(function() {
      $(".user-points h3").text("72900 carrats").fadeIn(1000);
    }, 300);
  });
}