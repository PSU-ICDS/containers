help([[A collection of scripts to help out i-ASK
The list of current scripts in the package:
  - collecter
  - gathero
  - relink_work_scratch
  - setup_comsol_symlink
  - setup_conda_symlink 

For a guide on how to use these tools, please visit this URL:
]])

whatis("Description: A collection of scripts to help out i-ASK")
whatis("Nuccitils Version: v1.0")

local scriptRoot = "/gpfs/group/dml129/default/sw/scripts"
local scriptPath = pathJoin(scriptRoot, "bin")

prepend_path("PATH", scriptPath)
