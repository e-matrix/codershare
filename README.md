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
    
## 3. Day

See path `./greeter`
- Play with tests
- write new tests
- pattern-matching
- play with `Elixir.Map`

```
    git pull
    mix test --trace --seed 0
```

Now we can call `.hello(%{name: ...})` and `.hello(%{name: ..., age: ...})` and
the program returns just "Hello, NAME!" if the map has only one key 'name'.
Otherwise, when the map contains a key 'name' and a key 'age' then we print
"My name is 'name'. I'm 'age'."

Notice the sequence of our pattern-matches.

1st we define the version with 'name' and 'age'. This version of our function
matchens only if our param has both, name and age. If so, it will print
"My name is ....". When done, Elixir will not continue to find another match.

Then we define the version with 'name' only after the 1st definition. 
This version matches if 'name' and whatever else is in the map. Thus it would 
also match for 'name' and 'age' because 'age' doesn't matter in this version.
But because our first definition with name and age already matched and was
executed, then this 2nd version will never be triggered.

Otherwise, if 'age' is missing for the 1st definition. This function will be
skipped and not being executed. Elixir continues to search for another match.
It will find our 2nd definition, where only 'name' must be given.

## 4. Day

We introduced `Enum` and lists.
Other than that we did some examples with recursion.

Hamza will review and practice captures 1 to 10 of the Elixir guide.
Next time we will recap this basics once more and start using that 
knowledge in a new project, "Learning Cards".


