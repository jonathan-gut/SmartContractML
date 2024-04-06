import os
from solcx import compile_files, install_solc, get_installed_solc_versions
import re
import json

# Function to extract the pragma version from a Solidity file, defaulting to 0.4.23
def extract_solidity_version(file_path):
    pragma_pattern = re.compile(r'pragma solidity (\^?)(\d+\.\d+\.\d+);')
    with open(file_path, 'r') as file:
        for line in file:
            pragma_match = pragma_pattern.search(line)
            if pragma_match:
                # Ignore the range indicator and return the version part
                return pragma_match.group(2)
    # Return default version if no pragma is found
    return '0.4.23'

# Function to traverse directories and process .sol files
def process_directory(parent_directory):
    asts = {}  # Initialize a dictionary to hold the ASTs
    for root, dirs, files in os.walk(parent_directory):
        subdirectory = os.path.relpath(root, parent_directory)  # Get relative path from parent_directory
        for filename in files:
            if filename.endswith('.sol'):
                file_path = os.path.join(root, filename)
                print("Processing:", file_path)

                # Extract the Solidity version required by the contract
                sol_version = extract_solidity_version(file_path)

                # Check if the required version is already installed
                if sol_version not in get_installed_solc_versions():
                    install_solc(sol_version)

                # Compile the file to obtain its AST
                compiled_sol = compile_files([file_path], solc_version=sol_version, output_values=["ast"])

                # Initialize AST dictionary for the subdirectory if not exists
                if subdirectory not in asts:
                    asts[subdirectory] = {}

                # Iterate through compiled contracts
                for contract_name, compiled_data in compiled_sol.items():
                    # Extract the AST as a dictionary and store it in the corresponding subdirectory
                    asts[subdirectory][contract_name] = compiled_data['ast']
    return asts

# Define the parent directory containing subdirectories with .sol files
parent_directory = 'dataset'  # Update this to your parent directory
asts = process_directory(parent_directory)

# Output the loaded contracts and their ASTs organized by subdirectory
print("\n----------\n")
print("Contracts and their ASTs loaded")
print("\n----------\n")
