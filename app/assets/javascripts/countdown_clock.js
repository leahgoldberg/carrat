function initClock() {
  var challenges = $("#challenges-list").children().find("div");
  for (var i=0; i < challenges.length; i++) {
    var challengeId = challenges[i].id.slice(16);
    $("#countdown-clock-"+challengeId).FlipClock(3600, {
      countdown: true
    });
  }  
}