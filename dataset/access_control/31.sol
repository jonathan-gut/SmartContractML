pragma solidity ^0.8.0;

contract Wrapped31 {
function transferTo_txorigin31(address to, uint amount,address owner_txorigin31) public {
  require(tx.origin == owner_txorigin31);
  to.call{value:amount}("");
}

}