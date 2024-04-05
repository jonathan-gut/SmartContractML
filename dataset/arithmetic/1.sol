pragma solidity ^0.4.11;

contract Wrapped1 {
mapping(address => uint) public lockTime_intou1;

function increaseLockTime_intou1(uint _secondsToIncrease) public {
        lockTime_intou1[msg.sender] += _secondsToIncrease;  //overflow
    }
function withdraw_ovrflow1() public {
        require(block.timestamp > lockTime_intou1[msg.sender]);
        uint transferValue_intou1 = 10;           
        msg.sender.transfer(transferValue_intou1);
    }

}