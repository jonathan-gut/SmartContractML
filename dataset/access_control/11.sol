pragma solidity ^0.8.0;

contract Wrapped11 {
function transferTo_txorigin11(address to, uint amount,address owner_txorigin11) public {
  require(tx.origin == owner_txorigin11);
  to.call{value:amount}("");
}

}