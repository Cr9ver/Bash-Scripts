
path_name = input("Enter the path: ")

output = path_name.replace("\\", "/")
new_output= output.replace("C:", "/mnt/c")

print(f"The new path is : {new_output}")

with open ("file.txt", "w") as file:
    file.write(new_output)


#FOR LINUX TO SWITCH FILEPATH
"""


#!/usr/bin/env python3

import os

path_name = input("Enter the path: ")

output = path_name.replace("\\", "/")
new_output = output.replace("C:", "/mnt/c")

# print(f"The new path is : {new_output}")

# Change the current working directory to the new path
try:
    os.chdir(new_output)
    print(f"Changed working directory to: {os.getcwd()}")
except FileNotFoundError:
        print("Directory not found. Unable to change working directory.")
except PermissionError:
        print("Permission denied. Unable to change working directory.")
except Exception as e:
        print(f"An error occurred: {str(e)}")
finally:
        print('''
#############################
#############################
''')
        print(f"cd {new_output}")
"""