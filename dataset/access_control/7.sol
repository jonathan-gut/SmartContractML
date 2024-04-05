pragma solidity ^0.8.0;

contract Wrapped7 {
function transferTo_txorigin7(address to, uint amount,address owner_txorigin7) public {
  require(tx.origin == owner_txorigin7);
  to.call{value:amount}("");
}

}