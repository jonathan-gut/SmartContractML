pragma solidity ^0.4.11;

contract Wrapped5 {
mapping(address => uint) public lockTime_intou5;

function increaseLockTime_intou5(uint _secondsToIncrease) public {
        lockTime_intou5[msg.sender] += _secondsToIncrease;  //overflow
    }
function withdraw_intou5() public {
        require(block.timestamp > lockTime_intou5[msg.sender]);
        uint transferValue_intou5 = 10;           
        msg.sender.transfer(transferValue_intou5);
    }

}