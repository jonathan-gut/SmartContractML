pragma solidity ^0.8.0;

contract Wrapped15 {
function transferTo_txorigin15(address to, uint amount,address owner_txorigin15) public {
  require(tx.origin == owner_txorigin15);
  to.call{value:amount}("");
}

}