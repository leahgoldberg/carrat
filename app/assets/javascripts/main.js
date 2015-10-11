$(document).ready(function(){
	alert("HI");
  $(document).foundation();


  $.ajax({
    type: "GET",
    url:"http://api.sqoot.com/v2/deals?api_key=6jfpwl&callback=women_fashion"}
    ).done(function(response){
      console.log(response)
    })
});