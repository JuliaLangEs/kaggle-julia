# In main.jl
#
# Date: 9/19/14
# Revised: 9/20/14
# Created by NDG

function is_divisible(n, i)
    return n % i == 0
end


function is_prime(n::Int64)
    if n==1
        return false
    end

    if n <= 3 && n > 0 && n!==1
        return true
    end

    if is_divisible(n, 2)
        return false
    end

    # initialize a counter variable
    i = 3

    while i <= sqrt(n)
        if n % 1 == 0
            return false
        end

        i += 2
    end

    return true
end

# Prints the output of our function, when called with 100
println(is_prime(1028391739201927129))
