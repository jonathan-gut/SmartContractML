pragma solidity ^0.5.0;

contract Wrapped3 {
function bug_unchk_send3() payable public{
      msg.sender.transfer(1 ether);}

}