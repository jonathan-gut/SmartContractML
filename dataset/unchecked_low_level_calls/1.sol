pragma solidity ^0.5.0;

contract Wrapped1 {
function bug_unchk_send1() payable public{
      msg.sender.transfer(1 ether);}

}