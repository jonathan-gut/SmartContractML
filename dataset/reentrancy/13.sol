pragma solidity ^0.8.0;

contract Wrapped13 {
bool not_called_re_ent13 = true;
function bug_re_ent13() public{
        require(not_called_re_ent13);
        (bool success,)=msg.sender.call{value:1 ether}("");
        if( ! success ){
            revert();
        }
        not_called_re_ent13 = false;
    }   

}