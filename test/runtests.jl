using Test
using MyFirstPackage

@testset "greet" begin
    @test greet("Julia") == "Hello, Julia!"
end

@testset "private sum" begin
    # because we have not exported the `private_sum` function,
    # we need to use the full path to call it
    @test MyFirstPackage.private_sum([1, 2, 3]) == 6
    @test MyFirstPackage.private_sum(Int[]) == 0
end
