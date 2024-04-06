pragma solidity ^0.5.0;

contract Wrapped11 {
function bug_unchk_send11() payable public{
      msg.sender.transfer(1 ether);}

}