pragma solidity ^0.8.0;

contract Wrapped3 {
function transferTo_txorigin3(address to, uint amount,address owner_txorigin3) public {
  require(tx.origin == owner_txorigin3);
  to.call{value:amount}("");
}

}