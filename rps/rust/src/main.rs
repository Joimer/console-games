extern crate rand;

use std::io;
use std::collections::HashMap;
use rand::Rng;

fn main() {
	// `answers` needs to be mutable, since the structure must be able to be changed with insert etc.
	// We type hint to avoid repeating below u8 for each number. Looks prettier this way.
	let mut answers: HashMap<String, u8> = HashMap::new();
	// We put string literals with to_owned() so we can use collections::string::String instead of &str
	// This will be helpful later when we have to use a dynamic key on the hash map gotten from the stdin.
	answers.insert("rock".to_owned(), 0);
	answers.insert("paper".to_owned(), 1);
	answers.insert("scissors".to_owned(), 2);
	// We indicate the type so we don't make it think it's of _ type. Signed integer, 8 bits is more than enough.
	let multi: [[i8;3];3] = [[0, -1, 1], [1, 0, -1], [-1, -1, 0]];
	let cpu_names = ["rock", "paper", "scissors"];

	// Let's get started.
	println!("Rock, paper, scissors; best of five!");
	let mut wins: u8 = 0;
	let mut losses: u8 = 0;

	loop {
		println!("Choose an action[rock, paper, scissors].");

		let mut input = String::new();
		io::stdin().read_line(&mut input)
			.expect("Failed to read line.");
		input = input.trim().to_owned();

		// Check if the answer is correct. If it isn't, stop this iteration and go onto the next.
		if !answers.contains_key(&input) {
			println!("Wrong action!");
			continue;
		}

		// Choose random action.
		let cpu_action = rand::thread_rng().gen_range(0, 3) as usize;
		let player_action = answers.get(&input).unwrap().to_owned() as usize;
		let result = multi[player_action][cpu_action];
		println!("The CPU chose {}", cpu_names[cpu_action]);

		// Check what happens and show game status.
		match result {
			-1 => {
				losses += 1;
				println!("You lose! ({} - {})", wins, losses);
			},
			1 => {
				wins += 1;
				println!("You win! ({} - {})", wins, losses);
			},
			_ => {
				println!("It's a tie! ({} - {})", wins, losses);
			}
		}

		// Check if the game is over.
		if wins > 2 || losses > 2 {
			if wins > losses {
				println!("You won the game!");
			} else {
				println!("You lost the game...");
			}
			break;
		} else {
			println!("Choose a new action.");
		}
	}
}
