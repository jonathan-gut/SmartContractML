pragma solidity ^0.8.0;

contract Wrapped13 {
function callnotchecked_unchk13(address callee) public {
    callee.call{value:1 ether}("");
  }

}