help([[Calc is an interactive calculator which provides 
for easy large numeric calculations, but which also can 
be easily programmed for difficult or long calculations. 
It can accept a command line argument, in which case it 
executes that single command and exits. Otherwise, 
it enters interactive mode. In this mode, it accepts 
commands one at a time, processes them, and displays 
the answers. In the simplest case, commands are simply 
expressions which are evaluated.

If you run into any issues regarding the use of this
container then please contact Jason at iask@ics.psu.edu]])

whatis("Calc Version: 2.12.7.1")
whatis("URL: http://www.isthe.com/chongo/tech/comp/calc/")

calcExec = "$(command -v singularity) exec ${HOME}/work/sw/calc/calc_latest.sif calc $@"

set_shell_function("calc", calcExec)
