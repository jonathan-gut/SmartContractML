pragma solidity ^0.5.0;

contract Wrapped4 {
function bug_unchk_send4() payable public{
      msg.sender.transfer(1 ether);}

}