import os
import subprocess
import shutil
import glob
import click
from progress.bar import Bar
import tarfile
from zipfile import ZipFile
from termcolor import cprint, colored

# Global variables
home_env_var = os.getenv('HOME')
user_name = os.getenv('USER')


class Compression:
    def __init__(self, directory, user_info, output_directory):
        self.directory = directory
        self.user_info = user_info
        self.output_directory = output_directory

    def tozip(self):
        file_paths = self.__getallfilepaths()
        with ZipFile("{}.zip".format(self.user_info), "w") as zipfile:
            bar = Bar("Compressing files into zip archive", max=len(file_paths))
            for file in file_paths:
                zipfile.write(file)
                bar.next()

            bar.finish()

    def togzip(self):
        file_paths = self.__getallfilepaths()
        with tarfile.open("{}.tar.gz".format(self.user_info), "w:gz") as tarball:
            bar = Bar("Compressing files into tar.gz archive", max=len(file_paths))
            for file in file_paths:
                tarball.add(file)
                bar.next()

            bar.finish()

    def tobzip(self):
        file_paths = self.__getallfilepaths()
        with tarfile.open("{}.tar.bz2".format(self.user_info), "w:bz2") as tarball:
            bar = Bar("Compressing files into tar.bz2 archive", max=len(file_paths))
            for file in file_paths:
                tarball.add(file)
                bar.next()

            bar.finish()

    def toxz(self):
        file_paths = self.__getallfilepaths()
        with tarfile.open("{}.tar.xz".format(self.user_info), "w:xz") as tarball:
            bar = Bar("Compressing files into tar.xz archive", max=len(file_paths))
            for file in file_paths:
                tarball.add(file)
                bar.next()

            bar.finish()

    def totar(self):
        file_paths = self.__getallfilepaths()
        with tarfile.open("{}.tar".format(self.user_info), "w") as tarball:
            bar = Bar("Compressing files into tar archive", max=len(file_paths))
            for file in file_paths:
                tarball.add(file)
                bar.next()

            bar.finish()

    # Collect file paths to all files in $USER_info
    def __getallfilepaths(self):
        file_paths = []

        for root, directories, files in os.walk(self.directory):
            for filename in files:
                filepath = os.path.join(root, filename)
                file_paths.append(filepath)

        return file_paths

    @property
    def complete(self):
        return important_info("Please go to Files > Home Directory from \n"
                              "https://portal.aci.ics.psu.edu/, download the created \n"
                              "archive located in {}, and mail the archive \n"
                              "to iask@ics.psu.edu".format(self.output_directory))


# Open file and write its output in the same directory
def readfile(path, filename):
    fin = open(path, "rt")
    content = fin.read()
    fin.close()
    fout = open(filename, "wt")
    fout.write(content)
    fout.close()


# Special print functions
print_good = lambda x: cprint(x, "green")
print_info = lambda x: cprint(x, "blue")
print_bad = lambda x: cprint(x, "red")
important_info = lambda x: colored(x, "blue", attrs=["bold"])


@click.command()
@click.option("-v", "--version", is_flag=True, help="Print version info.")
@click.option("--license", is_flag=True, help="Print licensing info.")
@click.option("-c", "--compression", type=click.Choice(["gzip", "bz2", "xz", "tar", "zip"]),
              default="zip", help="Compression algorithm to use (default: zip).")
@click.option("-d", "--directory", default="{}/scratch".format(home_env_var),
              help="Directory to save output to (default: ~/scratch).")
def collector(version, license, compression, directory):
    """collector: A simple script to collect information about your environment."""
    if version:
        click.echo("collector v1.1  Copyright (C) 2020  Jason C. Nucciarone \n\n"
                   "This program comes with ABSOLUTELY NO WARRANTY; \n"
                   "for more details type \"collector --license\". This is free software, \n"
                   "and you are welcome to redistribute it under certain conditions; \n"
                   "type \"collector --license\" for more details.")

    elif license:
        click.echo("""collector: A simple script to collect information about your environment.\n
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
        # Change into directory specified by user to create $USER_info
        try:
            os.chdir(directory)

        except OSError:
            print_bad("Something went wrong when trying to change into {} ".format(directory) +
                      "Please contact i-ASK center at iask@ics.psu.edu.")
            exit()

        # Create $USER_info directory and then change into it
        user_info = "{}_info".format(user_name)
        full_path_to_dir = os.getcwd()

        try:
            os.mkdir(user_info)
            os.chdir(user_info)

        except FileExistsError:
            shutil.rmtree(user_info)
            os.mkdir(user_info)
            os.chdir(user_info)

        # Start gathering info on user's environment
        files_of_interest = [".bashrc", ".bash_history", ".bash_profile", ".bash_logout", ".bash_aliases",
                             "config.fish", ".cshrc", ".history", ".tcshrc", ".zshrc"]

        # Loop through each file of interest
        # .bashrc
        if os.path.isfile("{}/{}".format(home_env_var, files_of_interest[0])):
            readfile("{}/{}".format(home_env_var, files_of_interest[0]), "bashrc-{}.txt".format(user_name))
            print_good("Read .bashrc file at {}/{}".format(home_env_var, files_of_interest[0]))

        else:
            print_info("Did not find any .bashrc file")

        # .bash_history
        if os.path.isfile("{}/{}".format(home_env_var, files_of_interest[1])):
            readfile("{}/{}".format(home_env_var, files_of_interest[1]), "bash_history-{}.txt".format(user_name))
            print_good("Read .bash_history file at {}/{}".format(home_env_var, files_of_interest[1]))

        else:
            print_info("Did not find any .bash_history file")

        # .bash_profile
        if os.path.isfile("{}/{}".format(home_env_var, files_of_interest[2])):
            readfile("{}/{}".format(home_env_var, files_of_interest[2]), "bash_profile-{}.txt".format(user_name))
            print_good("Read .bash_profile file at {}/{}".format(home_env_var, files_of_interest[2]))

        else:
            print_info("Did not find any .bash_profile file")

        # .bash_logout
        if os.path.isfile("{}/{}".format(home_env_var, files_of_interest[3])):
            readfile("{}/{}".format(home_env_var, files_of_interest[3]), "bash_logout-{}.txt".format(user_name))
            print_good("Read .bash_logout file at {}/{}".format(home_env_var, files_of_interest[3]))

        else:
            print_info("Did not find any .bash_logout file")

        # .bash_aliases
        if os.path.isfile("{}/{}".format(home_env_var, files_of_interest[4])):
            readfile("{}/{}".format(home_env_var, files_of_interest[4]), "bash_aliases-{}.txt".format(user_name))
            print_good("Read .bash_aliases file at {}/{}".format(home_env_var, files_of_interest[4]))

        else:
            print_info("Did not find any .bash_aliases file")

        # config.fish
        if os.path.isfile("{}/{}".format(home_env_var, files_of_interest[5])):
            readfile("{}/.config/fish/{}".format(home_env_var, files_of_interest[5]),
                     "config.fish-{}.txt".format(user_name))
            print_good("Read config.fish file at {}/{}".format(home_env_var, files_of_interest[5]))

        else:
            print_info("Did not find any config.fish file")

        # .cshrc
        if os.path.isfile("{}/{}".format(home_env_var, files_of_interest[6])):
            readfile("{}/{}".format(home_env_var, files_of_interest[6]), "cshrc-{}.txt".format(user_name))
            print_good("Read .cshrc file at {}/{}".format(home_env_var, files_of_interest[6]))

        else:
            print_info("Did not find any .cshrc file")

        # .history
        if os.path.isfile("{}/{}".format(home_env_var, files_of_interest[7])):
            readfile("{}/{}".format(home_env_var, files_of_interest[7]), "history-{}.txt".format(user_name))
            print_good("Read .history file at {}/{}".format(home_env_var, files_of_interest[7]))

        else:
            print_info("Did not find any .history file")

        # .tcshrc
        if os.path.isfile("{}/{}".format(home_env_var, files_of_interest[8])):
            readfile("{}/{}".format(home_env_var, files_of_interest[8]), "tcshrc-{}.txt".format(user_name))
            print_good("Read .tcshrc file at {}/{}".format(home_env_var, files_of_interest[8]))

        else:
            print_info("Did not find any .tcshrc file")

        # .zshrc
        if os.path.isfile("{}/{}".format(home_env_var, files_of_interest[9])):
            readfile("{}/{}".format(home_env_var, files_of_interest[9]), "zshrc-{}.txt".format(user_name))
            print_good("Read .zshrc file at {}/{}\n".format(home_env_var, files_of_interest[9]))

        else:
            print_info("Did not find any .zshrc file\n")

        # Change into home directory and gather info about environment
        output_dir = os.getcwd()
        os.chdir(home_env_var)
        commands = ["check_aci_storage_quota", "ls -lha", "du -h --max-depth=1", "env"]

        bar = Bar("Collecting info on environment", max=len(commands))
        for command in commands:
            fout = open("{}/env_info-{}.txt".format(output_dir, user_name), "at")
            fout.write("\n\n#" + command + "\n\n")
            fout.close()
            subprocess.call("{} >> {}/env_info-{}.txt".format(command, output_dir, user_name), shell=True)
            bar.next()

        bar.finish()

        # Combine all the files in $USER_info together
        os.chdir(output_dir)
        text_files = glob.glob("*.txt")
        bar = Bar("Creating cumulative file", max=len(text_files))
        for text in text_files:
            fin = open(text, "rt")
            tmp = fin.read()
            fin.close()
            fout = open("all_info-{}.txt".format(user_name), "at")
            fout.write("# {}\n\n".format(text))
            fout.write(tmp + "\n\n")
            fout.close()
            bar.next()

        bar.finish()

        # Compress the $USER_info dir into an archive
        os.chdir(full_path_to_dir)
        compress_dir = output_dir.split("/")
        archive = Compression(compress_dir[-1], user_info, full_path_to_dir)

        if compression == "gzip":
            archive.togzip()

        elif compression == "bz2":
            archive.tobzip()

        elif compression == "xz":
            archive.toxz()

        elif compression == "tar":
            archive.totar()

        elif compression == "zip":
            archive.tozip()

        else:
            print_bad("There was an issue compressing your files! Please contact the i-ASK center at " +
                      "iask@ics.psu.edu")
            exit()

        # Wrap up and clean up
        print("\n" + archive.complete)
        shutil.rmtree(output_dir)


if __name__ == "__main__":
    collector()
