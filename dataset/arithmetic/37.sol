pragma solidity ^0.4.11;

contract Wrapped37 {
mapping(address => uint) public lockTime_intou37;

function increaseLockTime_intou37(uint _secondsToIncrease) public {
        lockTime_intou37[msg.sender] += _secondsToIncrease;  //overflow
    }
function withdraw_intou37() public {
        require(block.timestamp > lockTime_intou37[msg.sender]);
        uint transferValue_intou37 = 10;           
        msg.sender.transfer(transferValue_intou37);
    }

}