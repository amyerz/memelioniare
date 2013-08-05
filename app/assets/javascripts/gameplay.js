function isGameRunning() {
	return (game.round.startTime !== null);
}

function playerWithHighestScore() {
	var maxPlayer = game.player[0];

	for(var i = 1; i < game.player.length; i++) {
		if (game.player[i].score > maxPlayer.score) {
			maxPlayer = game.player[i];
		}
	}

	return maxPlayer;
}

function timeOut() {
	if (game.round.state == 'wait') {
		getNextQuestion();
	} else if (game.round.state == 'select') {
		playerReset();
	}
}

function getNextQuestion() {

	if (game.questions.length == 0) {
    stopTheme();
    game.round.startTime = null;
		alert('Game over! Winner of this game:' + playerWithHighestScore().name);
		playVideo();
    load_questions();

	} else {
		var current_question = game.questions.shift();
		game.current_question = current_question;

		game.round.state = 'wait';
		game.round.startTime = new Date();
		game.round.alreadyPlayed = [];

		updateScores();
		updateTitle();
		updateMode();
    playTheme();

		fillInQuestion(current_question);

		$('.choice').click(function() {
			playerChoiceClicked(this);
		});
	}
}

function selectPlayer(player) {
  game.round.alreadyPlayed.push(player);
	game.round.current_player = player;
	game.round.state = 'select';
	game.round.playerStartTime = new Date();
	updateMode();
}

function playerReset() {
	game.round.current_player = null;
	game.round.state = 'wait';
	updateMode();
}

function playerButtonClicked(key) {

	if ((game.round.state != 'wait') || (!isGameRunning())) return;

  var currentPlayer = null;

  if (key == 65) { // A
  	currentPlayer = game.player[0];
  } else if (key == 71) { // G
  	currentPlayer = game.player[1];
  } else if (key == 76) { // L
  	currentPlayer = game.player[2];
  }

  if (!currentPlayer) return;

  playBuzzer();

  if (game.round.alreadyPlayed.indexOf(currentPlayer) != -1) {
  	alert('Hey! Not you!');
  	return ;
  }

  selectPlayer(currentPlayer);
}
function playerChoiceClicked(choice) {

	if ((game.round.state != 'select') || (!isGameRunning())) return;

	var $el = $(choice);
	var index = $el.data('id');

	if (game.current_question.correct_choice == index) {
		game.round.current_player.score += 1;
		alert('Right');
		getNextQuestion();
	} else {
		alert('Meeep');
		playerReset();
	}
}


