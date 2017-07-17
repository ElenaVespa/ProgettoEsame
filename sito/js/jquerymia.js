
//caricamento immagini responsive!!!!!!!! okkkk
$(window).load(function() {	 
		  if (document.documentElement.clientWidth < 480) {
			  $("div[class='col-lg-4'] h4").each(function(){
				  console.log($(this).attr("data-src"));
				  $(this).after("<img alt='alt' src='"+$(this).attr("data-src")+"_small.jpg' class='img-circle lazy' width='250' height='250'>");
			  });
			   $("div[class='col-lg-4 col-lg-offset-2 text-center'] h4").each(function(){
				  console.log($(this).attr("data-src"));
				  $(this).after("<img alt='alt' src='"+$(this).attr("data-src")+"_small.jpg' class='img-circle lazy' height='150'>");
			  });
		  } else {
			  $("div[class='col-lg-4'] h4").each(function(){
				  console.log($(this).attr("data-src"));
				  $(this).after("<img alt='alt' src='"+$(this).attr("data-src")+".jpg' class='img-circle lazy' width='250' height='250'>");
			  });
			  $("div[class='col-lg-4 col-lg-offset-2 text-center'] h4").each(function(){
				  console.log($(this).attr("data-src"));
				  $(this).after("<img alt='alt' src='"+$(this).attr("data-src")+".jpg' class='img-circle lazy' height='180'>");
			  });
		  }
		});


/*giusta, ma non sembra funzionare, non legge la classe lazy?*/
$(document).ready(function(){	
$("img.lazy").lazyload();
});



/*giusta, ma index non legge la classe? o problema con selettori?*/
$(document).ready(function(){		
	$("div[class='col-lg-4'] img").on("mouseover", function(){	
	$("div[class='col-lg-4'] img").addClass("opaca");			
	});	  
	
	$("div[class='col-lg-4'] img").on("mouseout", function(){			
	$("div[class='col-lg-4'] img").removeClass("opaca");			
	});	 
	
});








/* NON FUNZIONA  MA NON IMPORTA LO FA GIA!!!!*/
$(document).ready(function(){		
	$("#form_prenota input").on("focus", function(){	
	$("#form_prenota input").removeAttribute("value");			
	});	  
	
});




/* VA MESSO?			
$('#form').validator().on('submit', function (e) {
  if (e.isDefaultPrevented()) {
    // handle the invalid form...
  } else {
    // everything looks good!
  }
}) */



