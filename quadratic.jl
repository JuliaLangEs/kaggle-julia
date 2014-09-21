# In quadratic.jl
#
# Date: 9/20/14
# Revised: 9/20/14
# Created by NDG

include("derivative.jl")


function quadratic(f)
    # Compute the first derivative of f
    f1 = derivative(f)

    # Get the y intercept (explictly passing a floating point number)
    c = f(0.0)

    # Get the y intercept of the first derivative
    b = f1(0.0)
    a = f(1.0) - b - c

    # Julia lets you return multiple values (separate by a comma)
    return (-b + sqrt(b^2 -4a*c + 0im))/ 2a, (-b - sqrt(b^2 - 4a*c + 0im))/2a
end
