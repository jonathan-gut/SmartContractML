# Smart Contract Security Analysis with KNN

## Overview

This project employs a K-Nearest Neighbors (KNN) machine learning model to identify potential security vulnerabilities in smart contracts. It aims to improve the security of smart contracts by analyzing their characteristics and predicting vulnerabilities.

## Usage
1 - Clone this directory \
2 - Open .ipynb file or .py file\
3 - Install required packages `pip install --user -r requirements.txt`\
4 - Run code!



## Features

- Predictive analysis using the KNN algorithm.
- Examination of smart contract features for vulnerability detection.
- Enhancements to smart contract security within the blockchain ecosystem.

## Dataset
The solidity smart contracts for this project has come from the following public datasets:
1. https://swcregistry.io/
2. https://github.com/DependableSystemsLab/SolidiFI
3. https://github.com/smartbugs/smartbugs-curated
4. https://github.com/Messi-Q/Smart-Contract-Dataset

We have a total of 1713 smart contracts, here they are based on vulnerability
* Time Manipulation - 430
* Safe (No Vulnerability) - 364
* Reentrancy - 346
* Integer Overflow/Underflow (Arithmetic) - 323
* Unchecked Low-level Calls - 137
* Access Control - 59
* Denial of Service - 54

## Results

### Classification Report

| Class                    | Precision | Recall | F1-Score | Support |
|--------------------------|-----------|--------|----------|---------|
| `access_control`         | 0.92      | 0.71   | 0.80     | 17      |
| `arithmetic`             | 0.48      | 0.51   | 0.50     | 113     |
| `denial_of_service`      | 0.94      | 0.83   | 0.88     | 18      |
| `reentrancy`             | 0.63      | 0.68   | 0.65     | 121     |
| `safe`                   | 0.74      | 0.63   | 0.68     | 41      |
| `time_manipulation`      | 0.70      | 0.73   | 0.71     | 143     |
| `unchecked_low_level_calls` | 0.86  | 0.75   | 0.80     | 81      |
|                          |           |        |          |         |
| **Accuracy**             |           |        | 0.67     | 534     |
| **Macro Avg**            | 0.75      | 0.69   | 0.72     | 534     |
| **Weighted Avg**         | 0.68      | 0.67   | 0.67     | 534     |



## Refrences/Previous Work Done
https://www.hindawi.com/journals/scn/2021/5798033/

https://www.nature.com/articles/s41598-023-47219-0

## Notes
4/5/23 - Added functionality to turn solidity contracts into ASTs. However, I had to do a lot of manual editing to get the contracts to compile. No big changes but a lot of contracts now have small changes from their original version. Don't know if this will make a difference in end classification results. Next steps is to do the same for some safe smart contracts with no vulnerabilities

4/6/23 - Added about 1000 more vulnerable smart contracts and about 400 safe ones. Also removed those vulnerabilities which had less than 50 samples. All smart contracts are able to be turned into ASTs.

4/14/23 - Moved code to a jupyter notebook for easier executing. Added functionality to turn ASTs into feature vectors. Had to downsize dataset b/c it would of taken over 200 hours to compute all common nodes for all contracts. Moved down from ~1700 to ~1400 solidity files. Total of ~1700 total contracts (some .sol have multiple contracts)\

4/14/12 - Finished!


## Next Steps
Train KNN Model

