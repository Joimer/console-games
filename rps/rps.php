<?php
function color ($color='none') {
	$colors = [
		'black' => '30m',
		'blue' => '34m',
		'green' => '32m',
		'cyan' => '36m',
		'red' => '31m',
		'purple' => '35m',
		'brown' => '33m',
		'lightgray' => '37m',
		'darkgray' => '1;30m',
		'lightblue' => '1;34m',
		'lightgreen' => '1;32m',
		'lightcyan' => '1;36m',
		'lightred' => '1;31m',
		'lightpurple' => '1;35m',
		'yellow' => '1;33m',
		'white' => '1;37m',
		'none' => '0m'
	];
	$c = (isset($colors[$color])) ? $colors[$color] : '0m';
	return "\033[" . $c;
}
echo color('white') . "Rock, paper, scissors; best of five!\n" . color();
echo color() . "Choose an action [rock, paper, scissors]\n" . color();
$wins = 0;
$losses = 0;
$actions = ['rock', 'paper', 'scissors'];
$results = [
	'rock' => ['rock' => 0, 'paper' => -1, 'scissors' => 1],
	'paper' => ['rock' => 1, 'paper' => 0, 'scissors' => -1],
	'scissors' => ['rock' => -1, 'paper' => 1, 'scissors' => 0]
];
$resultText = [-1 => color('red') . 'You lose!', 0 => color('purple') . "It's a tie!", 1 => color('green') . 'You win!'];
while ($c = fread(STDIN, 10)) {
	$c = strtolower(trim($c));
	if (in_array($c, $actions)) {
		$cpu = $actions[mt_rand(0, 2)];
		echo "The CPU chose {$cpu}\n";
		$result = $results[$c][$cpu];
		if ($result === 1) $wins++;
		else if ($result === -1) $losses++;
		echo $resultText[$result] . color() . " ({$wins} - {$losses})\n";
		if ($wins > 2 || $losses > 2) {
			if ($wins > $losses) {
				echo color('lightgreen') . "You won!!\n" . color();
			} else {
				echo color('lightred') . "You lost...\n" . color();
			}
			break;
		} else {
			echo "Choose a new action.\n";
		}
	} else {
		echo color('red') . "Wrong action!\n" . color();
	}
}
