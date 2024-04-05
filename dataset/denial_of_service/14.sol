pragma solidity ^0.8.0;

contract Wrapped14 {
function unhandledsend_unchk14(address payable callee) public {
    callee.send(5 ether);
  }

}