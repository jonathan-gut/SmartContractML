pragma solidity ^0.4.11;

contract Wrapped29 {
mapping(address => uint) public lockTime_intou29;

function increaseLockTime_intou29(uint _secondsToIncrease) public {
        lockTime_intou29[msg.sender] += _secondsToIncrease;  //overflow
    }
function withdraw_intou29() public {
        require(block.timestamp > lockTime_intou29[msg.sender]);
        uint transferValue_intou29 = 10;           
        msg.sender.transfer(transferValue_intou29);
    }

}