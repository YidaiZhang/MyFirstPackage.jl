module MyFirstPackage
# import packages
using LinearAlgebra

# export interfaces
export Lorenz, integrate_step
export Point, Point2D, Point3D
export RungeKutta, Euclidean
export equilibrium_density, collide, example_d2q9, velocity, flip_direction_index, stream!, curl, LatticeBoltzmann, step!

# `include` other source files into this module
include("lorenz.jl")

include("fluid.jl")

end

