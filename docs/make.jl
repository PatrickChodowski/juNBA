using Documenter, juNBA

makedocs(;
    modules=[juNBA],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/PatrickChodowski/juNBA.jl/blob/{commit}{path}#L{line}",
    sitename="juNBA.jl",
    authors="Patrick Chodowski",
    assets=[],
)

deploydocs(;
    repo="github.com/PatrickChodowski/juNBA.jl",
)
