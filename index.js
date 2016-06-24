var page = require('webpage').create()

// TODO: create css cursor

// get display size

// open framebuffer


page.open('http://google.com', function() {
		page.includeJs('http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js', function() {
			page.evaluate(function() {
					// add a visual cursor
					const cursor = document.createElement('IMG')
					cursor.setAttribute('src', 'img/cursor.png')
					cursor.setAttribute('class', 'cursor')
					document.body.appendChild(cursor)
					cursor.style.position = 'absolute'

					$(document).mousemove(function(e){
						$("#image").stop().animate({left:e.pageX, top:e.pageY})
					})
				})
			})
	})	

setInterval(function() {
		// get cursor position
		
		// move the phantomjs cursor there
	    
		// render page
		page.render('page.png')
		// draw to framebuffer
		
	}, 30)
