pragma solidity ^0.8.0;

contract Wrapped39 {
function transferTo_txorigin39(address to, uint amount,address owner_txorigin39) public {
  require(tx.origin == owner_txorigin39);
  to.call{value:amount}("");
}

}