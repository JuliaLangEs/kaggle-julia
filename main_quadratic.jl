# main_quadratic.jl
#
# Date: 9/20/14
# Revised: 9/20/14
# Created by NDG

include("quadratic.jl")

# actually calling the quadratic function we created

# very simple way of creating a function in julia
ex = (x) -> x^2 + 6x + 9

println(ex(1))
println(quadratic(ex))
