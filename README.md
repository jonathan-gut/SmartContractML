# Smart Contract Security Analysis with KNN

## Overview

This project employs a K-Nearest Neighbors (KNN) machine learning model to identify potential security vulnerabilities in smart contracts. It aims to improve the security of smart contracts by analyzing their characteristics and predicting vulnerabilities.

## Usage
1 - Install required packages
`py-solc-x`

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


## Refrences/Previous Work Done
https://www.hindawi.com/journals/scn/2021/5798033/

https://www.nature.com/articles/s41598-023-47219-0

## Notes
4/5/23 - Added functionality to turn solidity contracts into ASTs. However, I had to do a lot of manual editing to get the contracts to compile. No big changes but a lot of contracts now have small changes from their original version. Don't know if this will make a difference in end classification results. Next steps is to do the same for some safe smart contracts with no vulnerabilities


