module juNBA

using DataFrames
using HTTP
using JSON

export
    get_playbyplay

abstract type Plugin end

include("get_playbyplay.jl")
include("parse_game_period.jl")


end
