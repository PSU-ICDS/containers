#!/usr/bin/python3

import argparse
parser = argparse.ArgumentParser(description="Utility script")
parser.add_argument("-f", "--file", type=str, help="Txt file input")
args = parser.parse_args()
file = open(args.file, "r")
info = file.readline()
file.close()
info_list = info.split()
temp_user = info_list[1]
user = temp_user[5:]
print(user)