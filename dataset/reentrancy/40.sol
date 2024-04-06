pragma solidity ^0.8.0;

contract Wrapped40 {
mapping(address => uint) userBalance_re_ent40;
function withdrawBalance_re_ent40() public{
        // send userBalance[msg.sender] ethers to msg.sender
        // if mgs.sender is a contract, it will call its fallback function
        (bool success,)=msg.sender.call{value:userBalance_re_ent40[msg.sender]}("");
        if( ! success ){
            revert();
        }
        userBalance_re_ent40[msg.sender] = 0;
    }

}