function initClock() {
  var challenges = $("#challenges-list").children().find("div");
  for (var i=0; i < challenges.length; i++) {
    var challengeId = challenges[i].id.slice(16);
    var randomHours = Math.random() * 45000;
    $("#countdown-clock-"+challengeId).FlipClock(randomHours, {
      countdown: true
    });
  }  
}