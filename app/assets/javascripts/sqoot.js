function initSqoot() {
	$.ajax("http://api.sqoot.com/v2/deals?api_key=w40j1z").done(function(data){
		$.ajax({
		  method: "POST",
		  url: "/rewards",
		  data: { deals: data.deals }
		})
		  .done(function(){

		  	
		  })
		  .fail(console.log("Failure to send data"));
	}).fail(function(){
		console.log("Failure to retrieve data");
	});
};






