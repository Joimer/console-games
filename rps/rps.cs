using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleRps
{
    class Rps
    {
        static string[] answers = new string[] { "rock", "paper", "scissors" };
        static Dictionary<string, Dictionary<string, int>> results = new Dictionary<string, Dictionary<string, int>>() {
            {"rock", new Dictionary<string, int>() {
                { "rock", 0 }, { "paper", -1 }, { "scissors", 1 }
            }},
            { "paper", new Dictionary<string, int>() {
                { "rock", 1 }, { "paper", 0 }, { "scissors", -1 }
            }},
            { "scissors", new Dictionary<string, int>() {
                { "rock", -1 }, { "paper", 1 }, { "scissors", 0 }
            }}
        };
        static Dictionary<int, string> resultTexts = new Dictionary<int, string>() {
            {-1, "You lose!"},
            {0, "It's a tie!"},
            {1, "You win!"}
        };
        static int wins = 0;
        static int losses = 0;
        static bool isPlaying = true;

        static void Main(string[] args)
        {
            Console.WriteLine("Rock, paper, scissors; best of five!");
            Console.WriteLine("Choose an action[rock, paper, scissors]");
            Random rnd = new Random();
            // Main game loop, to be broken only when game is finished.
            while (isPlaying)
            {
                String action = Console.ReadLine();
                if (answers.Contains(action))
                {
                    int cpu = rnd.Next(0, 3);
                    string cpuAction = answers[cpu];
                    Console.WriteLine("The CPU chose {0}", cpuAction);
                    int result = results[action][cpuAction];
                    if (result == 1)
                    {
                        wins++;
                    }
                    else if (result == -1)
                    {
                        losses++;
                    }
                    Console.WriteLine(resultTexts[result] + " ({0} - {1})", wins, losses);
                    if (wins > 2 || losses > 2)
                    {
                        if (wins > losses)
                        {
                            Console.WriteLine("You won the game!");
                        }
                        else
                        {
                            Console.WriteLine("You lost the game...");
                        }
                        isPlaying = false;
                    }
                    else
                    {
                        Console.WriteLine("Choose a new action.");
                    }
                }
                else
                {
                    Console.WriteLine("Wrong action!");
                }
            }
            // Out of game loop, add a new ReadLine so the player can read the result.
            Console.ReadLine();
        }
    }
}
