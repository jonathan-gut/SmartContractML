pragma solidity ^0.8.0;

contract Wrapped3 {
function bug_unchk3(address payable addr) public
      {addr.send (42 ether); }

}