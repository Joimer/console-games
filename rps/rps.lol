HAI 1.3
	CAN HAS STDIO?

	BTW Welcome the user to the game.
	VISIBLE "Rock, paper, scissors; best of five!"

	BTW Declare variables.
	I HAS A wins ITZ 0
	I HAS A losses ITZ 0
	I HAS A cpu ITZ 0
	I HAS A choice ITZ A YARN
	I HAS A result ITZ 2
	I HAS A seed ITZ 65537

	BTW Get a seed for the PRNG.
	VISIBLE "Give me a number between 1000 and 65537!"
	GIMMEH seed
	seed R MAEK seed A NUMBR
	DIFFRINT seed AN BIGGR OF seed AN 1000, O RLY?
		YA RLY, seed R 32768
		NO WAI
	OIC

	BTW Pseudo-Random Number generator.
	I HAS A COUNTER ITZ 1
	HOW IZ I WAS_MESS YR NUMBER
		I HAS A THING ITZ MAEK NUMBER A NUMBAR
		IM IN YR LOOP UPPIN YR ROUNDS WILE DIFFRINT ROUNDS AN NUMBER
				THING R MOD OF PRODUKT OF 75 AN SUM OF THING AN COUNTER AN seed
				COUNTER R SUM OF COUNTER AN 1
		IM OUTTA YR LOOP
		FOUND YR MOD OF THING AN NUMBER
	IF U SAY SO

	BTW This is the main game loop.
	IM IN YR rps
		VISIBLE "Choose an action [rock, paper, scissors]"
		result R 2
  		cpu R I IZ WAS_MESS YR 3 MKAY
  		cpu R MAEK cpu A NUMBR
  		GIMMEH choice
  		choice, WTF?
			OMG "rock"
				cpu, WTF?
					OMG 0 BTW paper
						result R -1
						VISIBLE "The CPU chose paper"
						GTFO
					OMG 1 BTW scissors
						result R 1
						VISIBLE "The CPU chose scissors"
						GTFO
					OMG 2 BTW rock
						result R 0
						VISIBLE "The CPU chose rock"
						GTFO
					OIC
				GTFO
			OMG "paper"
				cpu, WTF?
					OMG 0 BTW paper
						result R 0
						VISIBLE "The CPU chose paper"
						GTFO
					OMG 1 BTW scissors
						result R -1
						VISIBLE "The CPU chose scissors"
						GTFO
					OMG 2 BTW rock
						result R 1
						VISIBLE "The CPU chose rock"
						GTFO
					OIC
				GTFO
			OMG "scissors"
				cpu, WTF?
					OMG 0 BTW paper
						result R 1
						VISIBLE "The CPU chose paper"
						GTFO
					OMG 1 BTW scissors
						result R 0
						VISIBLE "The CPU chose scissors"
						GTFO
					OMG 2 BTW rock
						result R -1
						VISIBLE "The CPU chose rock"
						GTFO
					OIC
				GTFO
		OIC

		result, WTF?
			OMG -1
				losses R SUM OF losses AN 1
				VISIBLE SMOOSH "You lose! (" AN wins AN " - " AN losses AN ")" MKAY
				GTFO
			OMG 0
				VISIBLE SMOOSH "It's a tie! (" AN wins AN " - " AN losses AN ")" MKAY
				GTFO
			OMG 1
				wins R SUM OF wins AN 1
				VISIBLE SMOOSH "You win! (" AN wins AN " - " AN losses AN ")" MKAY
				GTFO
		OIC

		BOTH SAEM wins AN 3, O RLY?
			YA RLY
				VISIBLE "You won the game!"
				GTFO
			NO WAI
		OIC

		BOTH SAEM losses AN 3, O RLY?
			YA RLY
				VISIBLE "You lost the game..."
				GTFO
			NO WAI
		OIC
	IM OUTTA YR rps
KTHXBYE
