pragma solidity ^0.5.0;

contract Wrapped5 {
function bug_unchk_send5() payable public{
      msg.sender.transfer(1 ether);}

}