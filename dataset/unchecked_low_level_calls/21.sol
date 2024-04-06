pragma solidity ^0.5.0;

contract Wrapped21 {
function bug_unchk_send21() payable public{
      msg.sender.transfer(1 ether);}

}