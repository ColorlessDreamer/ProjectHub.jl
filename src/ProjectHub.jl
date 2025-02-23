module ProjectHub

export hello_world, show_menu, run_project, guessing_game, start_hub, timeit

function hello_world()
    return ("Hello, Julia!")
end


function show_menu()
    println("\nWelcome to the Project Hub!")
    println("Choose an option:")
    println("1. Hello World")
    println("2. Number Guessing Name")
    println("3. Arrays")
    println("4. Bubble Sort")
    println("5. Quick Sort")
    println("6. Matrix Multiplication")
    println("7. Modular Math")
    println("8. Fibonacci Number")
    println("9. Probability Distribution")
    println("10. Statistics")
    println("11. Binary Search")
    println("12. Encoding")
    println("13. String Algorithms")
    println("14. Binary Trees")
    println("15. Shortest Path Finding")
    println("16. Balanced Tree")
    println("17. Edge Graphs")
    println("18. Trie String")
    println("19. Linear Regression")
    println("20. Logistic Regression")
    println("0. Exit")
    print("Enter your choice: ")
    return readline()
end

function start_hub()
    while true
        choice = show_menu()
        run_project(choice)

        while true
            println("\nDo you want to exit? (y/n): ")
            exit_choice = lowercase(readline())
            if exit_choice == "n"
                break
            elseif exit_choice != "y"
                println("Invalid choice. Please enter 'y' to exit or 'n' to continue.")
            else
                println("\nExiting Project Hub. Goodbye!")
                return
            end
        end
    end
end

# Dispatch the chosen option.
function run_project(choice::String)
    if choice == "1"
        println(hello_world())
    elseif choice == "2"
        guessing_game()
    elseif choice == "3"
        println("Arrays demo: Sorry, this project still hasn't been completed!")
    elseif choice == "4"
        println("Bubble Sort demo: Sorry, this project still hasn't been completed!")
    elseif choice == "5"
        println("Quick Sort demo: Sorry, this project still hasn't been completed!")
    elseif choice == "6"
        println("Matrix Multiplication demo: Sorry, this project still hasn't been completed!")
    elseif choice == "7"
        println("Modular Math demo: Sorry, this project still hasn't been completed!")
    elseif choice == "8"
        println("Fibonacci Number demo: Sorry, this project still hasn't been completed!")
    elseif choice == "9"
        println("Probability Distribution demo: Sorry, this project still hasn't been completed!")
    elseif choice == "10"
        println("Statistics demo: Sorry, this project still hasn't been completed!")
    elseif choice == "11"
        println("Binary Search demo: Sorry, this project still hasn't been completed!")
    elseif choice == "12"
        println("Encoding demo: Sorry, this project still hasn't been completed!")
    elseif choice == "13"
        println("String Algorithms demo: Sorry, this project still hasn't been completed!")
    elseif choice == "14"
        println("Binary Trees demo: Sorry, this project still hasn't been completed!")
    elseif choice == "15"
        println("Shortest Path Finding demo: Sorry, this project still hasn't been completed!")
    elseif choice == "16"
        println("Balanced Tree demo: Sorry, this project still hasn't been completed!")
    elseif choice == "17"
        println("Edge Graphs demo: Sorry, this project still hasn't been completed!")
    elseif choice == "18"
        println("Trie String demo: Sorry, this project still hasn't been completed!")
    elseif choice == "19"
        println("Linear Regression demo: Sorry, this project still hasn't been completed!")
    elseif choice == "20"
        println("Logistic Regression demo: Sorry, this project still hasn't been completed!")    
    elseif choice == "0"
        return 
    else
        println("Invalid choice. Please try again.")    
    end
    

end


function guessing_game()
    print("Press Enter to start the guessing game...")
    readline()    
    println("Welcome to the Number Guessing game!")
    println("I'm thinking of a number between 1 and 30.")
    println("Try to guess it!")
    secret_number = rand(1:30)
    attempts = 0
    max_attempts = 5
    while true
        attempts += 1
        guess = 0
        try
            print("Enter your guess: ")
            guess = parse(Int, readline())
            println("You guessed: $guess")
        catch
            println("Invalid input. -$guess- is not a valid guess.")
            attempts -= 1
            continue
        end

        if guess == secret_number
            println("Congratulations! You guessed the correct number in $attempts attempts!")
            break
        elseif guess < secret_number
            println("Too low! Try again.")
        else
            println("Too high! Try again.")
        end

        println("You've made $attempts attempts.")

        if attempts >= max_attempts
            println("\nSorry, you've reached the maximum number of attempts.\nThe correct number was $secret_number.\nGoodbye!") 
            break
        end
    end
end

function timeit(f, args...; kwargs...)
    elapsed = @elapsed result = f(args...; kwargs...)
    println("Result: $result")
    println("Elapsed time: $elapsed seconds")
end

end