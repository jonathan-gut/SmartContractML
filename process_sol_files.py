import os
import re

# Set the directory containing your .sol files
source_directory = './dataset/reentrancy'


# Function to check if the file content has a pragma directive
def has_pragma(content):
    return re.search(r'^\s*pragma\s+solidity', content, re.MULTILINE) is not None


# Function to check if the content is already wrapped in a contract or library
def is_wrapped(content):
    return re.search(r'contract\s+\w+|library\s+\w+', content, re.MULTILINE) is not None


# Function to wrap content in a contract and add pragma
def wrap_and_add_pragma(content, filename):
    contract_name = "Wrapped" + os.path.splitext(os.path.basename(filename))[0].capitalize()
    return f"pragma solidity ^0.8.0;\n\ncontract {contract_name} {{\n{content}\n}}"


# Iterate over all .sol files in the directory
for filename in os.listdir(source_directory):
    if filename.endswith('.sol'):
        file_path = os.path.join(source_directory, filename)
        with open(file_path, 'r') as file:
            content = file.read()

            # Check if the file is missing a pragma directive and is not wrapped
            if not has_pragma(content) and not is_wrapped(content):
                # Update the content
                new_content = wrap_and_add_pragma(content, filename)

                # Write the updated content back to the file
                with open(file_path, 'w') as mod_file:
                    mod_file.write(new_content)
                print(f"Updated {filename}")

print("Processing complete.")
