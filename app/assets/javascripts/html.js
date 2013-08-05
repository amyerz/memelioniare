function update_container(html) {
	$('#container').html(html);
}

function fillInQuestion(question) {
	var content = $('#question_template').html();
	update_container(content);

	$('#question_img').attr('src', 'assets/memes/' + question.content);

	$('#choice1').html(question.choices[0]);
	$('#choice2').html(question.choices[1]);
	$('#choice3').html(question.choices[2]);
	$('#choice4').html(question.choices[3]);
}


function updateScores() {
	$('#player1_score').html(game.player[0].score);
	$('#player2_score').html(game.player[1].score);
	$('#player3_score').html(game.player[2].score);
}

function updateTitle() {
	$('#gametitle').html('Question #' + (game.questionCount - game.questions.length + 1));
}

function updateMode() {
	var player1_name = $('#player1name').val().toUpperCase();
	var player2_name = $('#player2name').val().toUpperCase();
	var player3_name = $('#player3name').val().toUpperCase();

	if (game.round.state == 'wait') {
		$('#mode').html('Please press one of these buttons to buzz-in: ' +  player1_name + ' ("A"), ' + player2_name + ' ("G"), ' + player3_name + ' ("L")');
	} else {
		$('#mode').html('Player "' + game.round.current_player.name + '", please select an answer!');
	}
}

function updateTimer() {

  if (isGameRunning()) {
		var now = new Date();
		var startTime = 0;
		var maxTime = 0;

		if (game.round.state == 'wait') {
			maxTime = game.maxRoundTime;
			startTime = game.round.startTime;
		} if (game.round.state == 'select') {
			maxTime = game.maxSelectTime;
			startTime = game.round.playerStartTime;
		}

		var timeElapsedMs = now.getTime() - startTime;
		var timeLeft = Math.floor(maxTime - (timeElapsedMs / 1000));

		$('#timer').html(timeLeft + ' seconds left');

		if (timeLeft <= 0) timeOut();

	} else {
		$('#timer').html('');
	}
}

function showNotBad() {
	showMessage($('#not_bad'), 2000, function () {
		getNextQuestion();
	});
}

function showNotImpressed() {
	showMessage($('#not_impressed'), 2000, function () {
		playerReset();
	});
}

function showNotYou() {
	showMessage($('#not_you'), 1500, function () {
	});
}

function showYouWon() {
	showMessage($('#you_won'), 5000, function () {
		$('#won-player').html(playerWithHighestScore().name);
		playVideo();
	});
}

function showMessage($el, delay, fn) {
	$('#mask').show();

	centerElement($el);
	$el.show();

	setTimeout(function() {
		$('#mask').hide();
		$el.hide();
		fn();
	}, delay);
}



function centerElement($el) {
	$el.css("position","absolute");
	$el.css("top", Math.max(0, (($(window).height() - $($el).outerHeight()) / 2) + $(window).scrollTop()) + "px");
	$el.css("left", Math.max(0, (($(window).width() - $($el).outerWidth()) / 2) + $(window).scrollLeft()) + "px");
}