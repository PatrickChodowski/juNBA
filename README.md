# juNBA

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://PatrickChodowski.github.io/juNBA.jl/stable)
[![Latest](https://img.shields.io/badge/docs-latest-blue.svg)](https://PatrickChodowski.github.io/juNBA.jl/latest)
[![Build Status](https://travis-ci.com/PatrickChodowski/juNBA.jl.svg?branch=master)](https://travis-ci.com/PatrickChodowski/juNBA.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/PatrickChodowski/juNBA.jl?svg=true)](https://ci.appveyor.com/project/PatrickChodowski/juNBA-jl)
[![Codecov](https://codecov.io/gh/PatrickChodowski/juNBA.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/PatrickChodowski/juNBA.jl)
[![Coveralls](https://coveralls.io/repos/github/PatrickChodowski/juNBA.jl/badge.svg?branch=master)](https://coveralls.io/github/PatrickChodowski/juNBA.jl?branch=master)


**juNBA will be a Julia package for reading NBA stats data API in Julia. For now contains only get_playbyplay and exists mostly for me to learn Julia.**

**If you need NBA data, try to use my package called NBAr, which is located in next repo**

## Installation

```julia
pkg> add juNBA
```

## Usage

```julia
using juNBA

get_playbyplay(21800786)

```
