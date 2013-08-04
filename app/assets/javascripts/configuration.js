var game = {
	player: [
		{
			name: 'Player1',
			score: 0
		},
		{
			name: 'Player2',
			score: 0
		},
		{
			name: 'Player3',
			score: 0
		}
	],

	questions:null,
	questionCount: 0,

	maxRoundTime: 30, //in seconds
	maxSelectTime: 10, //in seconds

	round: {
		startTime: null,
		state: 'wait', // Wait for any player press a button (wait), Selection mode (select)
		current_player: null,
		playerStartTime: null,
		current_question: null,
		alreadyPlayed:[]
	}
};
