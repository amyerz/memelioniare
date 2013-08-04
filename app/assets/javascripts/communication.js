function load_questions() {
//pulling data from the route / database and get in json format
	var xhr = $.get('/game/show.json', function (data) {
		game.questions = data;
 		game.questionCount = game.questions.length;
		getNextQuestion();
	}, 'json');

//if data cannot be pulled from backend
	xhr.fail(function () {
		alert('Could not load from backend.');
	});
}
