HAI 1.2
  CAN HAS STDIO?

  BTW Welcome the user to the game.
  VISIBLE "Welcome to Tic-Tac-Toe!"

  BTW One variable for each square on the tic-tac-toe-board because we don't have arrays yet ;_;
  I HAS A one_one ITZ "_" BTW This is the upper-leftmost square
  I HAS A one_two ITZ "_" BTW This is the upper-mid square
  I HAS A one_three ITZ "_" BTW This is the upper-rightmost square
  I HAS A two_one ITZ "_" BTW This is the mid-leftmost square
  I HAS A two_two ITZ "_" BTW This is the mid-mid square
  I HAS A two_three ITZ "_" BTW This is the mid-rightmost square
  I HAS A three_one ITZ "_" BTW This is the bottom-leftmost square
  I HAS A three_two ITZ "_" BTW This is the bottom-mid square
  I HAS A three_three ITZ "_" BTW This is the bottom-rightmost square
  I HAS A player_won ITZ FAIL
  I HAS A free_places ITZ 9
  I HAS A game_status ITZ 1 BTW 1 is tie, 2 is cpu win. Player can't win lol.

  BTW This is the main game loop.
  IM IN YR tictactoegame
  	BTW Printing the board state.
  	VISIBLE "|" AN one_one AN "|" AN one_two AN "|" AN one_three AN "|:)|" AN two_one AN "|" AN two_two AN "|" AN two_three AN "|:)|" AN three_one AN "|" AN three_two AN "|" AN three_three AN "|"

  	BTW Check if the game has been won.
  	BOTH SAEM game_status AN 2, O RLY?
  		YA RLY, GTFO
  		NO WAI, BTW Keep playing.
  	OIC

  	BTW Check if we are out of spaces.
  	BOTH SAEM free_places AN 0, O RLY?
  		YA RLY, GTFO
  		NO WAI, BTW Keep playing as well.
  	OIC

  	BTW Define helper variables to get the proper game input.
  	I HAS A opt_row ITZ ""
  	I HAS A opt_column ITZ ""
  	I HAS A com_moves ITZ WIN

  	BTW Ask for the row for the movement.
  	VISIBLE "What is your move? Choose row (1, 2, 3)"
  	GIMMEH opt_row

  	BTW Ask for the column for the movement.
  	VISIBLE "Choose column now (1, 2, 3)"
  	GIMMEH opt_column

	BTW Modify the game board
	BTW Check if the place can be modified
	opt_row, WTF?
		OMG "1"
			opt_column, WTF?
				OMG "1"
					BOTH SAEM one_one AN "_", O RLY?
						YA RLY
							one_one R "X"
							free_places R DIFF OF free_places AN 1

							BTW Check for possible wins.
							BOTH SAEM one_two AN "X", O RLY?
								YA RLY
									BOTH SAEM one_three AN "_", O RLY?
										YA RLY
											com_moves R FAIL
											BTW We don't need to check more for computer move.
											one_three R "O"
											free_places R DIFF OF free_places AN 1
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM one_three AN "X", O RLY?
								YA RLY
									BOTH SAEM one_two AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													BTW We don't need to check more for computer move.
													one_two R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM two_one AN "X", O RLY?
								YA RLY
									BOTH SAEM three_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													three_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM three_one AN "X", O RLY?
								YA RLY
									BOTH SAEM two_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													two_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
						NO WAI
							VISIBLE "This place is already taken!"
							com_moves R FAIL
					OIC
					GTFO
				OMG "2"
					BOTH SAEM one_two AN "_", O RLY?
						YA RLY
							one_two R "X"
							free_places R DIFF OF free_places AN 1

							BOTH SAEM one_one AN "X", O RLY?
								YA RLY
									BOTH SAEM one_three AN "_", O RLY?
										YA RLY
											com_moves R FAIL
											one_three R "O"
											free_places R DIFF OF free_places AN 1
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM one_three AN "X", O RLY?
								YA RLY
									BOTH SAEM one_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													one_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM two_two AN "X", O RLY?
								YA RLY
									BOTH SAEM three_two AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													three_two R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM three_two AN "X", O RLY?
								YA RLY
									BOTH SAEM two_two AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													two_two R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
						NO WAI
							VISIBLE "This place is already taken!"
							com_moves R FAIL
					OIC
					GTFO
				OMG "3"
					BOTH SAEM one_three AN "_", O RLY?
						YA RLY
							one_three R "X"
							free_places R DIFF OF free_places AN 1

							BOTH SAEM one_one AN "X", O RLY?
								YA RLY
									BOTH SAEM one_two AN "_", O RLY?
										YA RLY
											com_moves R FAIL
											one_two R "O"
											free_places R DIFF OF free_places AN 1
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM one_two AN "X", O RLY?
								YA RLY
									BOTH SAEM one_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													one_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM two_three AN "X", O RLY?
								YA RLY
									BOTH SAEM three_three AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													three_three R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM three_three AN "X", O RLY?
								YA RLY
									BOTH SAEM three_two AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													three_two R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
						NO WAI
							VISIBLE "This place is already taken!"
							com_moves R FAIL
					OIC
					GTFO
				OMGWTF
					VISIBLE "Wrong column input!"
					com_moves R FAIL
			OIC
			GTFO
		OMG "2"
			opt_column, WTF?
				OMG "1"
					BOTH SAEM two_one AN "_", O RLY?
						YA RLY
							two_one R "X"
							free_places R DIFF OF free_places AN 1

							BOTH SAEM two_three AN "X", O RLY?
								YA RLY
									BOTH SAEM two_two AN "_", O RLY?
										YA RLY
											com_moves R FAIL
											two_two R "O"
											free_places R DIFF OF free_places AN 1
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM two_two AN "X", O RLY?
								YA RLY
									BOTH SAEM two_three AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													two_three R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM one_one AN "X", O RLY?
								YA RLY
									BOTH SAEM three_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													three_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM three_one AN "X", O RLY?
								YA RLY
									BOTH SAEM one_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													one_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
						NO WAI
							VISIBLE "This place is already taken!"
							com_moves R FAIL
					OIC
					GTFO
				OMG "2"
					BOTH SAEM two_two AN "_", O RLY?
						YA RLY
							two_two R "X"
							free_places R DIFF OF free_places AN 1

							BOTH SAEM one_one AN "X", O RLY?
								YA RLY
									BOTH SAEM three_three AN "_", O RLY?
										YA RLY
											com_moves R FAIL
											three_three R "O"
											free_places R DIFF OF free_places AN 1
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM one_three AN "X", O RLY?
								YA RLY
									BOTH SAEM three_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													three_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM three_one AN "X", O RLY?
								YA RLY
									BOTH SAEM one_three AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													one_three R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM three_three AN "X", O RLY?
								YA RLY
									BOTH SAEM one_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													one_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
						NO WAI
							VISIBLE "This place is already taken!"
							com_moves R FAIL
					OIC
					GTFO
				OMG "3"
					BOTH SAEM two_three AN "_", O RLY?
						YA RLY
							two_three R "X"
							free_places R DIFF OF free_places AN 1

							BOTH SAEM three_three AN "X", O RLY?
								YA RLY
									BOTH SAEM one_three AN "_", O RLY?
										YA RLY
											com_moves R FAIL
											one_three R "O"
											free_places R DIFF OF free_places AN 1
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM one_three AN "X", O RLY?
								YA RLY
									BOTH SAEM three_three AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													three_three R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM two_two AN "X", O RLY?
								YA RLY
									BOTH SAEM two_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													two_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM two_one AN "X", O RLY?
								YA RLY
									BOTH SAEM two_two AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													two_two R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
						NO WAI
							VISIBLE "This place is already taken!"
							com_moves R FAIL
					OIC
					GTFO
				OMGWTF
					VISIBLE "Wrong column input!"
			OIC
			GTFO
		OMG "3"
			opt_column, WTF?
				OMG "1"
					BOTH SAEM three_one AN "_", O RLY?
						YA RLY
							three_one R "X"
							free_places R DIFF OF free_places AN 1

							BOTH SAEM three_three AN "X", O RLY?
								YA RLY
									BOTH SAEM three_two AN "_", O RLY?
										YA RLY
											com_moves R FAIL
											three_two R "O"
											free_places R DIFF OF free_places AN 1
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM three_two AN "X", O RLY?
								YA RLY
									BOTH SAEM three_three AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													three_three R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM one_one AN "X", O RLY?
								YA RLY
									BOTH SAEM two_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													two_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM two_one AN "X", O RLY?
								YA RLY
									BOTH SAEM one_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													one_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM one_three AN "X", O RLY?
								YA RLY
									BOTH SAEM two_two AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													two_two R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM two_two AN "X", O RLY?
								YA RLY
									BOTH SAEM one_three AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													one_three R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
						NO WAI
							VISIBLE "This place is already taken!"
							com_moves R FAIL
					OIC
					GTFO
				OMG "2"
					BOTH SAEM three_two AN "_", O RLY?
						YA RLY
							three_two R "X"
							free_places R DIFF OF free_places AN 1

							BOTH SAEM three_one AN "X", O RLY?
								YA RLY
									BOTH SAEM three_three AN "_", O RLY?
										YA RLY
											com_moves R FAIL
											three_three R "O"
											free_places R DIFF OF free_places AN 1
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM three_three AN "X", O RLY?
								YA RLY
									BOTH SAEM three_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													three_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM two_two AN "X", O RLY?
								YA RLY
									BOTH SAEM one_two AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													one_two R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM one_two AN "X", O RLY?
								YA RLY
									BOTH SAEM two_two AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													two_two R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
						NO WAI
							VISIBLE "This place is already taken!"
							com_moves R FAIL
					OIC
					GTFO
				OMG "3"
					BOTH SAEM three_three AN "_", O RLY?
						YA RLY
							three_three R "X"
							free_places R DIFF OF free_places AN 1

							BOTH SAEM three_two AN "X", O RLY?
								YA RLY
									BOTH SAEM three_one AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													three_one R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM three_one AN "X", O RLY?
								YA RLY
									BOTH SAEM three_two AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													three_two R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM two_three AN "X", O RLY?
								YA RLY
									BOTH SAEM one_three AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													one_three R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
							BOTH SAEM one_three AN "X", O RLY?
								YA RLY
									BOTH SAEM two_three AN "_", O RLY?
										YA RLY
											BOTH SAEM com_moves AN WIN, O RLY?
												YA RLY
													com_moves R FAIL
													two_three R "O"
													free_places R DIFF OF free_places AN 1
												NO WAI
											OIC
										NO WAI
									OIC
								NO WAI
							OIC
						NO WAI
							VISIBLE "This place is already taken!"
							com_moves R FAIL
					OIC
					GTFO
				OMGWTF
					VISIBLE "Wrong column input!"
					com_moves R FAIL
			OIC
			GTFO
		OMGWTF
			VISIBLE "Wrong row input!"
			com_moves R FAIL
	OIC

	BTW Computers turn. As the second player, attempt to go for the tie / win always.
	BTW This part is only run when there is no direct counter-tactic in the code above.
	BOTH SAEM com_moves AN WIN, O RLY?
		YA RLY
			BTW First thing to check is the center
			BOTH SAEM two_two AN "_", O RLY?
				YA RLY
					BTW Place it in the center.
					two_two R "O"
					free_places R DIFF OF free_places AN 1
				MEBBE BOTH SAEM one_one AN "_"
					BTW Next, we are going for a corner. x--,---,---
					one_one R "O"
					free_places R DIFF OF free_places AN 1
				MEBBE BOTH SAEM three_three AN "_"
					BTW Next corner, let it be opposite one. x--,---,--x
					three_three R "O"
					free_places R DIFF OF free_places AN 1
				MEBBE BOTH SAEM one_three AN "_"
					BTW  x-x,---,--x
					one_three R "O"
					free_places R DIFF OF free_places AN 1
				MEBBE BOTH SAEM three_one AN "_"
					BTW  x-x,---,x-x
					three_one R "O"
					free_places R DIFF OF free_places AN 1
				MEBBE BOTH SAEM two_one AN "_"
					two_one R "O"
					free_places R DIFF OF free_places AN 1
				MEBBE BOTH SAEM two_three AN "_"
					two_three R "O"
					free_places R DIFF OF free_places AN 1
				NO WAI
					BTW We never get there because this BOTH SAEM only deals with move 1 of the machine or at the end.
			OIC
		NO WAI BTW Do nothing
	OIC

	BTW Check for possible Computer wins
	BOTH SAEM one_one AN "O", O RLY?
		YA RLY
			BTW Check for Upper row ooo,---,---
			BOTH SAEM one_two AN "O", O RLY?
				YA RLY
					BOTH SAEM one_three AN "O", O RLY?
						YA RLY
							game_status R 2
						NO WAI
					OIC
				NO WAI
			OIC
			BTW Check for left column o--,o--,o--
			BOTH SAEM two_one AN "O", O RLY?
				YA RLY
					BOTH SAEM three_one AN "O", O RLY?
						YA RLY
							game_status R 2
						NO WAI
					OIC
				NO WAI
			OIC
			BTW Check for diagonal left to right o--,-o-,--o
			BOTH SAEM two_two AN "O", O RLY?
				YA RLY
					BOTH SAEM three_three AN "O", O RLY?
						YA RLY
							game_status R 2
						NO WAI
					OIC
				NO WAI
			OIC
		MEBBE BOTH SAEM two_one AN "O"
			BTW Check for mid row ---,ooo,---
			BOTH SAEM two_two AN "O", O RLY?
				YA RLY
					BOTH SAEM two_three AN "O", O RLY?
						YA RLY
							game_status R 2
						NO WAI
					OIC
				NO WAI
			OIC
		MEBBE BOTH SAEM three_one AN "O"
			BTW Check for lower row ---,---,ooo
			BOTH SAEM three_two AN "O", O RLY?
				YA RLY
					BOTH SAEM three_three AN "O", O RLY?
						YA RLY
							game_status R 2
						NO WAI
					OIC
				NO WAI
			OIC
			BTW Check for diagonal --o,-o-,o--
			BOTH SAEM one_three AN "O", O RLY?
				YA RLY
					BOTH SAEM two_two AN "O", O RLY?
						YA RLY
							game_status R 2
						NO WAI
					OIC
				NO WAI
			OIC
		MEBBE BOTH SAEM three_three AN "O"
			BTW Check for right column --o, --o, --o
			BOTH SAEM one_three AN "O", O RLY?
				YA RLY
					BOTH SAEM two_three AN "O", O RLY?
						YA RLY
							game_status R 2
						NO WAI
					OIC
				NO WAI
			OIC
		NO WAI
	OIC

  IM OUTTA YR tictactoegame

  BTW Who's won?
  VISIBLE "The game has finished!"
  game_status, WTF?
	OMG 1
		VISIBLE "It was a tie!"
		GTFO
	OMG 2
		VISIBLE "The CPU won!"
		GTFO
  OIC
KTHXBYE
