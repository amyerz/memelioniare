function playBuzzer() {
	playElement($('#audio-buzzer'));
}

function playTheme() {
	playElement($('#audio-theme'));
}
function stopTheme() {
	$('#audio-theme').get(0).pause();
}

function playElement($el) {
	var el = $el.get(0);

	if (el.readyState != 0) {
		el.currentTime = 0;
		el.play();
	}
}

function playVideo() {
	var el = document.getElementById('ytplayer');
	var $el = $(el);

	$('#mask').show();

	el.src = 'https://www.youtube.com/embed/IAISUDbjXj0?autoplay=1&controls=0&loop=1&modestbranding=1&showinfo=0';
	$el.show(500);
	centerElement($el);
}