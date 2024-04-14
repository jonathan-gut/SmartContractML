# Smart Contract Security Analysis with KNN

## Overview

This project employs a K-Nearest Neighbors (KNN) machine learning model to identify potential security vulnerabilities in smart contracts. It aims to improve the security of smart contracts by analyzing their characteristics and predicting vulnerabilities.

## Usage
1 - Clone this repository \
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


