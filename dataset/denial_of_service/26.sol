pragma solidity ^0.8.0;

contract Wrapped26 {
function unhandledsend_unchk26(address payable callee) public {
    callee.send(5 ether);
  }

}