'use strict';

let readline = require('readline');
let rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout
});

function color (color) {
	let colors = {
		'black': '30m',
		'blue': '34m',
		'green': '32m',
		'cyan': '36m',
		'red': '31m',
		'purple': '35m',
		'brown': '33m',
		'lightgray': '37m',
		'darkgray': '1;30m',
		'lightblue': '1;34m',
		'lightgreen': '1;32m',
		'lightcyan': '1;36m',
		'lightred': '1;31m',
		'lightpurple': '1;35m',
		'yellow': '1;33m',
		'white': '1;37m',
		'none': '0m'
	};
	let c = (colors[color]) ? colors[color] : '0m';
	return "\x1B[" + c;
}

let wins = 0;
let losses = 0;
let actions = ['rock', 'paper', 'scissors'];
let results = {
	'rock': {'rock': 0, 'paper': -1, 'scissors': 1},
	'paper': {'rock': 1, 'paper': 0, 'scissors': -1},
	'scissors': {'rock': -1, 'paper': 1, 'scissors': 0}
};
let resultText = {'-1': color('red') + 'You lose!', '0': color('purple') + "It's a tie!", '1': color('green') + 'You win!'};
let onGoing = true;
let finished = false;

console.log(color('white') + 'Rock, paper, scissors; best of five!' + color());
console.log('Choose an action [rock, paper, scissors]');

rl.on('line', function (answer) {
	if (actions.indexOf(answer) !== -1) {
		let cpu = actions[Math.floor(Math.random() * 3)];
		console.log('The CPU chose ' + cpu);
		let result = results[answer][cpu];
		if (result === 1) wins++;
		else if (result === -1) losses++;
		console.log(resultText[result] + color() + ' (' + wins + ' - ' + losses + ')');
		if (wins > 2 || losses > 2) {
			if (wins > losses) {
				console.log(color('lightgreen') + 'You won the game!!' + color());
			} else {
				console.log(color('lightred') + 'You lost the game...' + color());
			}
			rl.close();
		} else {
			console.log('Choose a new action.');
		}
	} else {
		console.log(color('red') + 'Wrong action!' + color());
	}
});
