using Makie: RGBA # for visualization
using Makie, GLMakie
using MyFirstPackage # our package

# Set up the visualization with Makie:
lb = example_d2q9()
vorticity = Observable(curl(velocity.(Ref(lb.config), lb.grid))')
fig, ax, plot = image(vorticity, colormap = :jet, colorrange = (-0.1, 0.1))

# Show barrier
barrier_img = map(x -> x ? RGBA(0, 0, 0, 1) : RGBA(0, 0, 0, 0), lb.barrier)
image!(ax, barrier_img')


