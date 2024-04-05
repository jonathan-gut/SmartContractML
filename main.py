import os
from solcx import compile_files, install_solc, get_installed_solc_versions
import re
import json

# Define the source directory containing .sol files
source_directory = './dataset/reentrancy'  # Update this path to your source directory


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


# Initialize a dictionary to hold the ASTs
asts = {}

# Process each .sol file in the directory
for filename in os.listdir(source_directory):
    if filename.endswith('.sol'):
        file_path = os.path.join(source_directory, filename)
        print(file_path)

        # Extract the Solidity version required by the contract
        sol_version = extract_solidity_version(file_path)

        # Check if the required version is already installed
        if sol_version not in get_installed_solc_versions():
            install_solc(sol_version)

        # Compile the file to obtain its AST
        compiled_sol = compile_files([file_path], solc_version=sol_version, output_values=["ast"])

        # Iterate through compiled contracts
        for contract_name, compiled_data in compiled_sol.items():
            # Extract the AST as a dictionary
            asts[contract_name] = compiled_data['ast']



print("\n----------\n")
print("Contracts and their ASTs loaded:", list(asts.keys()))
