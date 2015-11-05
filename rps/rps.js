'use strict';

let readline = require('readline');
let rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout
});
let wins = 0;
let losses = 0;
let actions = ['rock', 'paper', 'scissors'];
let results = {
	'rock': {'rock': 0, 'paper': -1, 'scissors': 1},
	'paper': {'rock': 1, 'paper': 0, 'scissors': -1},
	'scissors': {'rock': -1, 'paper': 1, 'scissors': 0}
};
let resultText = {'-1': 'You lose!', '0': "It's a tie!", '1': 'You win!'};
let onGoing = true;
let finished = false;

console.log('Rock, paper, scissors; best of five!');
console.log('Choose an action [rock, paper, scissors]');

rl.on('line', function (answer) {
	if (actions.indexOf(answer) !== -1) {
		let cpu = actions[Math.floor(Math.random() * 3)];
		console.log('The CPU chose ' + cpu);
		let result = results[answer][cpu];
		if (result === 1) wins++;
		else if (result === -1) losses++;
		console.log(resultText[result] + ' (' + wins + ' - ' + losses + ')');
		if (wins > 2 || losses > 2) {
			if (wins > losses) {
				console.log('You won the game!!');
			} else {
				console.log('You lost the game...');
			}
			rl.close();
		} else {
			console.log('Choose a new action.');
		}
	} else {
		console.log('Wrong action!');
	}
});
