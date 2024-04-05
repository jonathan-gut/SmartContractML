pragma solidity ^0.4.11;

contract Wrapped9 {
mapping(address => uint) public lockTime_intou9;

function increaseLockTime_intou9(uint _secondsToIncrease) public {
        lockTime_intou9[msg.sender] += _secondsToIncrease;  //overflow
    }
function withdraw_intou9() public {
        require(block.timestamp > lockTime_intou9[msg.sender]);
        uint transferValue_intou9 = 10;           
        msg.sender.transfer(transferValue_intou9);
    }

}