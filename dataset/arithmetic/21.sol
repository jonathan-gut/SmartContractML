pragma solidity ^0.4.11;

contract Wrapped21 {
mapping(address => uint) public lockTime_intou21;

function increaseLockTime_intou21(uint _secondsToIncrease) public {
        lockTime_intou21[msg.sender] += _secondsToIncrease;  //overflow
    }
function withdraw_intou21() public {
        require(block.timestamp > lockTime_intou21[msg.sender]);
        uint transferValue_intou21 = 10;           
        msg.sender.transfer(transferValue_intou21);
    }

}