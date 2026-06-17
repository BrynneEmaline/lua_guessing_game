
-- logic for random number generation
function randomize()
    math.randomseed(os.time()) -- random initialize
    math.random(); math.random(); math.random() -- warming up generator by discarding first few values

    for x = 1, 20 do -- do this 20 times
       return math.random(1, 100); -- random generating
    end
end

print("~~~ Guessing Game ~~~");

    -- continues prompting for guesses until win / loss condition met
    -- then prompts to play again, if yes then restarts game loop with new random number and resets guess count, if no then ends program
    function gameLoop()
        guessCount = 0;
        randomNumber = randomize(); -- generate random number for the game loop
        print("random number generated: " .. randomNumber); -- for testing purposes, can be removed later

    while guessCount < 7 do
        print("\nGuess a number between 1 and 100");
        userGuess = tonumber(io.read());

        if userGuess == randomNumber then
            print("Woohoo, you win! The correct number was " .. randomNumber);
            guessCount = guessCount + 1; -- not really needed when they win, but in case I want to add functionality later to display how many guesses it took to win
            print("Start a new game? (y/n)");
            local playAgain = io.read();
            if playAgain == "y" then
                gameLoop(); -- start a new game 
            else
                print("Thanks for playing!");
                break;
            end

        else
            if userGuess ~= randomNumber then
                print("Wrong, try again!");
                guessCount = guessCount + 1;
            end

            if guessCount == 7 then
                print("You lose ): The correct number was " .. randomNumber);
                print("Start a new game? (y/n)");
                local playAgain = io.read();
                if playAgain == "y" then
                    gameLoop(); -- start a new game 
                else
                    print("Thanks for playing!");
                    break;
                end
            end
        end
    end
end

gameLoop(); 