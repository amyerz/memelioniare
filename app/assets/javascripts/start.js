$(document).ready(function () {

	var content = $('#welcome').html();
	update_container(content);

	$('#startGameButton').click(function () {
		load_questions();
	});
	$(window).keydown(function (event) {
		playerButtonClicked(event.which);
	});	

	setInterval(updateTimer, 500);
});
