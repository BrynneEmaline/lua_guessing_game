dofile("randomize.lua")


function gameLoop()

    print("~~~ Guessing Game ~~~");

    guessCount = 0;
    randomNumber = randomize(); -- calls function to generate random number for the game loop
    print("random number generated: " .. randomNumber); -- for testing purposes, can be removed later

    while guessCount < 7 do

        print("\nGuess a number between 1 and 100");
        userGuess = tonumber(io.read());

        -- error handling for invalid inputs
        while userGuess == nil do
            print("Please enter a valid number between 1 and 100");
            userGuess = tonumber(io.read());
        end

        -- incorrect guess condition
        if userGuess ~= randomNumber then
            guessCount = guessCount + 1;
            if guessCount < 7 then
                print("Wrong, try again!");
            end
        end

        -- win condtion
        if userGuess == randomNumber then
            guessCount = guessCount + 1;
            print("Woohoo, you win! The correct number was " .. randomNumber);
            if guessCount == 1 then
                print("It took you " .. guessCount .. " guess");
                break;
            else
                print("It took you " .. guessCount .. " guesses");
                break;
            end

        else
            if guessCount == 7 then
                print("You lose ): The correct number was " .. randomNumber);
                break;
            end
        end
    end
end
