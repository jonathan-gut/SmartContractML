pragma solidity ^0.5.0;

contract Wrapped25 {
function bug_unchk_send25() payable public{
      msg.sender.transfer(1 ether);}

}