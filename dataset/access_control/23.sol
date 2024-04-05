pragma solidity ^0.8.0;

contract Wrapped23 {
function transferTo_txorigin23(address to, uint amount,address owner_txorigin23) public {
  require(tx.origin == owner_txorigin23);
  to.call{value:amount}("");
}

}