pragma solidity ^0.5.0;

contract Wrapped24 {
function bug_unchk_send24() payable public{
      msg.sender.transfer(1 ether);}

}