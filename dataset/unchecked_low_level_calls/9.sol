pragma solidity ^0.5.0;

contract Wrapped9 {
function bug_unchk_send9() payable public{
      msg.sender.transfer(1 ether);}

}