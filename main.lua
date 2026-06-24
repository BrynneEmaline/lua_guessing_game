dofile("gameLoop.lua")

--[[
Brynne Alexander
~~~
Lua based Guessing Game
- The program generates a random number between 1 and 100. (print statement displaying the generated random number is for testing purposes) 
- The user has 7 guesses to guess the correct number
- If the user guesses the correct number within 7 guesses, they win 
- If the user doesn't get the correct number within 7 guesses, they lose
- The user is prompted to play again after both win and lose conditions
]]

-- determines if the user wants to play again, ensures game loop will always run at least once
play = true;

while play do
    gameLoop();

    print("Play again? (y/n)");
    answer = io.read();

    -- error handling for invalid inputs
    while answer ~= "y" and answer ~= "n" do
        print("Please chose either y or n")
        answer = io.read();
    end

    if answer == "n" then
        play = false;
    end
end

print("Thanks for playing!");

