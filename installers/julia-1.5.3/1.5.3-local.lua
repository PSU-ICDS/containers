help([[Julia is a high-level, high-performance dynamic programming language for 
numerical computing. It provides a sophisticated compiler, distributed
parallel execution, numerical accuracy, and an extensive mathematical
function library
]])

whatis("Description: Julia is a high-performance dynamic programming language for numerical computing")
whatis("URL: http://julialang.org")
whatis("Version: 1.5.3")

local root = "${HOME}/work/sw/julia-1.5.3"
local juliaBin = pathJoin(root, "bin")
local juliaLib = pathJoin(root, "lib")
local juliaInclude = pathJoin(root, "include")
local juliaMan = pathJoin(root, "share/man")

prepend_path("PATH", juliaBin)
prepend_path("LD_LIBRARY_PATH", juliaLib)
prepend_path("CPATH", juliaInclude)
prepend_path("MANPATH", juliaMan)
