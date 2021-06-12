# README e-Matrix's Codershare


This is a e-Matrix internal project.

## 1. Day

Set up environment for Elixir-development within a Debian-terminal in Windows

## First feature "Hello world"

    elixir -r hello.exs


## 1. 1/2 Day

Anna joins the team

## 2. Day

See path `./greeter`
- Play with the REPL
- Generate a simple mix - project
- Write the first tests (Greeter)

```
    git pull
    cd greeter
    asdf install
    mix test --trace --seed 0
    
==> GreeterTest [test/greeter_test.exs]
      * test Hello world if no name is provided [L#5]
      * test Hello world if no name is provided (0.01ms) [L#5]
      * test Informal hello if only first_name [L#9]   
      * test Informal hello if only first_name (0.00ms) [L#9]
      * test Formal greeting if first_name is a women's name [L#13]
      * test Formal greeting if first_name is a women's name (0.00ms) [L#13]
      * test formal greeting if first_name is a man's name [L#17]
      * test formal greeting if first_name is a man's name (0.00ms) [L#17]
     
      
    Finished in 0.05 seconds (0.00s async, 0.05s sync)
    4 tests, 0 failures
     
    Randomized with seed 0
```
    
