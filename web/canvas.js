

function setup() {
			var myCanvas = createCanvas(300, 400);

            myCanvas.parent('sketch-holder');

			background(200);

            let c = color(255, 204, 0);
            fill(c);
			
			rect(150, 200, 50, 50);
			arc(150, 200, 100, 100, PI + 2* QUARTER_PI, TWO_PI);
			triangle(150, 200, 125, 200, 150, 150);

        // <canvas id="canvas" onclick="clickCanvas()" style="background-color:#ffffff; border-radius: 20px;" width="300" height="300"></canvas>

			fill(0);
			line(50, 200, 250, 200);
			line(150, 100, 150, 300);
			
			line(150, 100, 160, 110);
			line(150, 100, 140, 110);
			
			line(250, 200, 240, 210);
			line(250, 200, 240, 190);
			}

		function draw() {
			//75 - коэффициент смещения из-за отсчета 
  			if (mouseIsPressed) {
    		ellipse(winMouseX - 4, winMouseY-178, 4, 4);
    		 document.getElementById("Yvalue").innerHTML = winMouseY - 75;
  			//  document.getElementById("Xvalue").innerHTML = winMouseX;
    	}
  			print(mouseIsPressed);
		}


		 setup();
        draw();

$(document).on("click", "#somebutton", function() {        // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    $.get("/areaCheck", function(responseJson) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
        var $table = $("<table>").appendTo($("#somediv")); // Create HTML <table> element and append it to HTML DOM element with ID "somediv".
        $.each(responseJson, function(index, product) {    // Iterate over the JSON array.
            $("<tr>").appendTo($table)                     // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
                .append($("<td>").text(product.id))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
                .append($("<td>").text(product.name))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
                .append($("<td>").text(product.price));    // Create HTML <td> element, set its text content with price of currently iterated product and append it to the <tr>.
        });
    });
});

// $.ajax({
//     url: "/areaCheck",
//     dataType:"json",
//     success:function(sessionRows){
//         var mass = sessionRows["rows"];
//         if(!(mass.length === undefined ||mass.length == null)){
//             createTable();
//             for (let row in mass){
//                 addRow(mass[row]);
//             }
//         }
//     },
//     xhrFields: {
//         withCredentials: true
//     }
// });

// //AJAX
// $(function() {
//     $(form).submit(function(e) {
//         e.preventDefault();
//         var $form = $(this);
//         $.ajax({
//             type: $form.attr('method'),
//             url: $form.attr('action'),
//             data: $form.serialize(),
//             dataType:"json",
//             response:"json",
//             beforeSend: function(){
//                 if (!validate()){
//                     return false
//                 }
//
//             },
//             success:addRow
//         }).done(function() {
//             console.log('success');
//         }).fail(function() {
//             console.log('fail');
//         });
//     });
// });