pragma solidity ^0.8.0;

contract Wrapped2 {
function unhandledsend_unchk2(address payable callee) public {
    callee.send(5 ether);
  }

}