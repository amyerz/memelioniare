function load_questions() {

	game.questions = [
		{
			content:'http://www.google.com/images/srpr/logo4w.png',
			type:"",
			correct_choice: 2,
			choices: ['2','5','10','11']
		},
		{
			content:'https://www.gravatar.com/avatar/1417b16372e4b69e7fdde715cdb0d9ee?s=32&d=identicon&r=PG',
			type:"",
			correct_choice: 0,
			choices: ['foo','bar','baz','loo']
		}
	];
	game.questionCount = game.questions.length;

	getNextQuestion();

	return; // Just for now


	var xhr = $.get('/game/questions', function (data) {
		game.questions = data;
 		game.questionCount = game.questions.length;
		getNextQuestion();
	}, 'json');

	xhr.fail(function () {
		alert('Could not load from backend.');
	});
}
