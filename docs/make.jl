using MyFirstPackage
using Documenter

DocMeta.setdocmeta!(MyFirstPackage, :DocTestSetup, :(using MyFirstPackage); recursive=true)

makedocs(;
    modules=[MyFirstPackage],
    authors="YidaiZhang",
    sitename="MyFirstPackage.jl",
    format=Documenter.HTML(;
        canonical="https://YidaiZhang.github.io/MyFirstPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/YidaiZhang/MyFirstPackage.jl",
    devbranch="main",
)
