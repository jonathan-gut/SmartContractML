pragma solidity ^0.5.0;

contract Wrapped32 {
function bug_unchk_send32() payable public{
      msg.sender.transfer(1 ether);}

}