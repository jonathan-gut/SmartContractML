pragma solidity ^0.4.11;

contract Wrapped25 {
mapping(address => uint) public lockTime_intou25;

function increaseLockTime_intou25(uint _secondsToIncrease) public {
        lockTime_intou25[msg.sender] += _secondsToIncrease;  //overflow
    }
function withdraw_intou25() public {
        require(block.timestamp > lockTime_intou25[msg.sender]);
        uint transferValue_intou25 = 10;           
        msg.sender.transfer(transferValue_intou25);
    }

}