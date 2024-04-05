pragma solidity ^0.8.0;

contract Wrapped15 {
function bug_unchk15(address payable addr) public
      {addr.send (42 ether); }

}