pragma solidity ^0.5.0;

contract Wrapped12 {
function bug_unchk_send12() payable public{
      msg.sender.transfer(1 ether);}

}