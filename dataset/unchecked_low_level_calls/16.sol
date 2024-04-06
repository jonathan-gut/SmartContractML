pragma solidity ^0.5.0;

contract Wrapped16 {
function bug_unchk_send16() payable public{
      msg.sender.transfer(1 ether);}

}