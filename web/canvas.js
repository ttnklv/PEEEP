		function setup() {
			myCanvas = createCanvas(300, 400);
			background(200);

			var c = color(255, 204, 0); 
			fill(c); 
			
			rect(150, 200, 50, 50);
			arc(150, 200, 100, 100, PI + 2* QUARTER_PI, TWO_PI);
			triangle(150, 200, 125, 200, 150, 150);

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
    		ellipse(winMouseX, winMouseY - 75, 4, 4); 
    		// document.getElementById("Y").innerHTML = winMouseY - 75;
  			// document.getElementById("X").innerHTML = winMouseX;
    	}
  			print(mouseIsPressed);
		}

		setup();
		// draw();