pragma solidity ^0.4.11;

contract Wrapped17 {
mapping(address => uint) public lockTime_intou17;

function increaseLockTime_intou17(uint _secondsToIncrease) public {
        lockTime_intou17[msg.sender] += _secondsToIncrease;  //overflow
    }
function withdraw_intou17() public {
        require(block.timestamp > lockTime_intou17[msg.sender]);
        uint transferValue_intou17 = 10;           
        msg.sender.transfer(transferValue_intou17);
    }

}