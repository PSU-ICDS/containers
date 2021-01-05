help([[The CLIMB container has Julia 1.0.5, R 3.6.3, tidyverse, and CLIMB installed.

In order to interact with the climb container, simply use 
the following command:
$ climb-exec <command> <arguments> <flags>

If you run into any issues while using this container
then please contact Jason at the i-ASK center by emailing
iask@ics.psu.edu

IMPORTANT: This container will only work properly in a RHEL7 environment.

To obtain the containers source code, you can visit the following URL:
https://github.com/NucciTheBoss/i-ASK]])

whatis("Description: A container with Julia 1.0.5, R 3.6.3, tidyverse, and CLIMB installed")
whatis("R Version: 3.6.3 (Holding the Windsock)")
whatis("Julia Version: 1.0.5")
whatis("URL: https://github.com/NucciTheBoss/i-ASK")

local climbExec = "$(command -v singularity) -s exec ${HOME}/work/sw7/CLIMB/climb.sif $@"

set_shell_function("climb-exec", climbExec)
