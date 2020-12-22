import os
import subprocess
import multiprocessing
import shutil
import click
from progress.bar import Bar
import tarfile
from zipfile import ZipFile
from termcolor import cprint, colored

# Global variables
home_env_var = os.getenv('HOME')

# Special print functions
print_good = lambda x: cprint(x, "green")
print_info = lambda x: cprint(x, "blue")
print_bad = lambda x: cprint(x, "red")
important_info = lambda x: colored(x, "blue", attrs=["bold"])


def checkjob(checkjob_path, job_id, root_dir):
    """Execute checkjob on the command line and then write to output file"""
    print_info("Running checkjob on {}".format(job_id))
    checkjob_out = subprocess.run(["sudo", "{}".format(checkjob_path), "{}".format(job_id), "-v", "--timeout=300"],
                                  capture_output=True, text=True)

    # Change into output directory and create output file
    os.chdir(root_dir)
    fout = open("{}_checkjob_output.txt".format(job_id), "wt")
    fout.write(str(checkjob_out.stdout))
    fout.close()


@click.command()
@click.option("-v", "--version", is_flag=True, help="Print version info.")
@click.option("--license", is_flag=True, help="Print licensing info.")
@click.argument("job", default=None, nargs=-1, help="Job(s) to gather information on.")
@click.option("-n", "--name", default="gathero_output", help="Name of output directory and archive (default: "
                                                             "gathero_output).")
@click.option("-c", "--compression", type=click.Choice(["gzip", "bz2", "xz", "tar", "zip"]),
              default="zip", help="Compression algorithm to use (default: zip).")
@click.option("-d", "--directory", default="{}/scratch".format(home_env_var),
              help="Directory to save output to (default: ~/scratch).")
def gathero(version, license, job, name, compression, directory):
    """gathero: A script to collect essential information about a user's job(s)."""
    if version:
        click.echo("gathero v1.2  Copyright (C) 2020  Jason C. Nucciarone \n\n"
                   "This program comes with ABSOLUTELY NO WARRANTY; \n"
                   "for more details type \"gathero --license\". This is free software, \n"
                   "and you are welcome to redistribute it under certain conditions; \n"
                   "type \"gathero --license\" for more details.")

    elif license:
        click.echo("""gathero: A script to collect essential information about a user's job(s).\n
    Copyright (C) 2020  Jason C. Nucciarone
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.""")

    else:
        # Change into the directory specified by the user to create $NAME
        try:
            os.chdir(directory)

        except OSError:
            print_bad("Something went wrong when trying to change into {} ".format(directory) +
                      "Please contact i-ASK center at iask@ics.psu.edu.")
            exit()

        # Create $NAME directory and then move into it.
        # Also save path above output dir because we
        # will need it later.
        dir_above_output = os.getcwd()
        try:
            os.mkdir(name)
            os.chdir(name)

        except FileExistsError:
            shutil.rmtree(name)
            os.mkdir(name)
            os.chdir(name)

        # Get system path to checkjob executable
        checkjob_path = subprocess.getoutput("command -v checkjob")

        # If the user specified no job ids on the command line
        if job is None:
            print_bad("No job ID found. Please enter job ID(s). \n"
                      "Use \"gathero -h\" or contact the i-ASK center \n"
                      "at iask@ics.psu.edu if you need help.")
            exit()

        for jobs in job:
            try:
                process = multiprocessing.Process(target=checkjob,
                                                  args=(checkjob_path, jobs, os.getcwd()))
                process.start()

            except multiprocessing.ProcessError:
                print_bad("Something went wrong running checkjob. \n"
                          "Please contact i-ASK center for help!")

        # Once checkjob has finished running
        print_good("All checkjobs have been successful!")


if __name__ == "__main__":
    gathero()
