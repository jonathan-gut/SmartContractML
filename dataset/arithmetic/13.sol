pragma solidity ^0.4.11;

contract Wrapped13 {
mapping(address => uint) public lockTime_intou13;

function increaseLockTime_intou13(uint _secondsToIncrease) public {
        lockTime_intou13[msg.sender] += _secondsToIncrease;  //overflow
    }
function withdraw_intou13() public {
        require(block.timestamp > lockTime_intou13[msg.sender]);
        uint transferValue_intou13 = 10;           
        msg.sender.transfer(transferValue_intou13);
    }

}