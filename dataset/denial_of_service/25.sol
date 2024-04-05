pragma solidity ^0.8.0;

contract Wrapped25 {
function callnotchecked_unchk25(address payable callee) public {
    callee.call{value:1 ether}("");
  }

}