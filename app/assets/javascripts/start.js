$(document).ready(function () {

	$(window).keydown(function (event) {
		playerButtonClicked(event.which);
	});

	$('.choice').click(function() {
		playerChoiceClicked(this);
	});

	setInterval(updateTimer, 500);
});
