pragma solidity ^0.8.0;

contract Wrapped1 {
function callnotchecked_unchk1(address payable callee) public {
    callee.call{value:2 ether}("");
  }

}