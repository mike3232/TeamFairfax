$(function(){ //<---don't erase

	//create pagination 
	for(var i = 1; i <=10; i++) { //creates 10 pages
				   $("#next-btn").before("<li id='page-" + i + "' class='page-btn'><a href='#'>" + i + "</a></li>");
			   }
		//add class for active page
		$("#page-1").addClass("active");


	//create an "animated" border for the box ("old time Vegas lights/Playhouse Square")
		//create jquery function that 
			//1. adds border to box
			//2. different thoughts: 
				//fadeIn()/fadeOut() || <---this works
				//opacity (revisit this)|| <--can't find it
				//hide()/show() -- hides everything -- doesn't work
				//|| toggle() --like hide/show doesn't work 
				//add/removeClass()<--- can't figure it out 
				
				
	//$(element name).click(function(){
		//your stuff here
		
	//});
	
	$("#border").hide();
	setInterval(function(){
		$("#border").fadeIn("slow").fadeOut("slow") //fadeIn then fadeOut
		}, 1000); //this is how long it runs (1000 = 1 second)

	
});//<--don't erase!



/* Unused Code

//$("button").click(function(){ //use botton in different circumstances 
//$(selector).addClass(classname,function(index,oldclass))





*/