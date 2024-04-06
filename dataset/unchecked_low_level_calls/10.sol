pragma solidity ^0.5.0;

contract Wrapped10 {
function bug_unchk_send10() payable public{
      msg.sender.transfer(1 ether);}

}