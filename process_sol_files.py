import os
import re

source_directory = './dataset/unchecked_low_level_calls'


# Function to check if the file content has a pragma directive
def has_pragma(content):
    return re.search(r'^\s*pragma\s+solidity', content, re.MULTILINE) is not None


# Function to check if the content is already wrapped in a contract or library
def is_wrapped(content):
    return re.search(r'contract\s+\w+|library\s+\w+', content, re.MULTILINE) is not None


# Function to wrap content in a contract and add pragma
def wrap_and_add_pragma(content, filename):
    contract_name = "Wrapped" + os.path.splitext(os.path.basename(filename))[0].capitalize()
    return f"pragma solidity ^0.5.0;\n\ncontract {contract_name} {{\n{content}\n}}"

"""
# Iterate over all .sol files in the directory
for filename in os.listdir(source_directory):
    if filename.endswith('.sol'):
        file_path = os.path.join(source_directory, filename)
        with open(file_path, 'r') as file:
            content = file.read()

            if not has_pragma(content) and not is_wrapped(content):
                # Update the content
                new_content = wrap_and_add_pragma(content, filename)

                with open(file_path, 'w') as mod_file:
                    mod_file.write(new_content)
                print(f"Updated {filename}")
"""
def version_to_tuple(version):
    """Convert a version string into a tuple of integers."""
    return tuple(map(int, version.split('.')))

def is_version_below_target(file_path, target_version='0.4.11'):
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()
        match = re.search(r'pragma solidity \^(\d+\.\d+\.\d+);', content)
        if match:
            file_version = version_to_tuple(match.group(1))
            target_version_tuple = version_to_tuple(target_version)
            return file_version < target_version_tuple
    return False

def delete_old_solidity_files(directory):
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.sol'):
                file_path = os.path.join(root, file)
                if is_version_below_target(file_path):
                    os.remove(file_path)
                    print(f"Deleted {file_path} because its version is below the target.")
# Replace '/path/to/your/directory' with the path to your directory containing the Solidity files
delete_old_solidity_files("./dataset/unchecked_low_level_calls")
print("Processing complete.")
