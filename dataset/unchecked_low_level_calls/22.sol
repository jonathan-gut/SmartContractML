pragma solidity ^0.5.0;

contract Wrapped22 {
function bug_unchk_send22() payable public{
      msg.sender.transfer(1 ether);}

}