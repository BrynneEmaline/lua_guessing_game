-- logic for random number generation
function randomize()
    math.randomseed(os.time()) -- random initialize
    math.random();
    math.random();
    math.random() -- warming up generator by discarding first few values

    for x = 1, 20 do -- do this 20 times
        return math.random(1, 100); -- random generating
    end
end