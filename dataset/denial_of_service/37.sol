pragma solidity ^0.8.0;

contract Wrapped37 {
function callnotchecked_unchk37(address payable callee) public {
    callee.call{value:1 ether}("");
  }

}