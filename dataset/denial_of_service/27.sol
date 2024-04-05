pragma solidity ^0.8.0;

contract Wrapped27 {
function bug_unchk27(address payable addr) public
      {addr.send (42 ether); }

}