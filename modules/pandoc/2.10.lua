help([[If you need to convert files from one markup format into another, 
pandoc is your swiss-army knife.]])

whatis("Description: If you need to convert files from one markup format into another, pandoc is your swiss-army knife.")
whatis("Pandoc Version: 2.10")

local root = "/gpfs/group/dml129/default/sw/pandoc-2.10"
local binpath = pathJoin(root, "bin")
local manpath = pathJoin(root, "share/man")

prepend_path("PATH", binpath)
prepend_path("MANPATH", manpath)
