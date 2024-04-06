pragma solidity ^0.5.0;

contract Wrapped20 {
function bug_unchk_send20() payable public{
      msg.sender.transfer(1 ether);}

}