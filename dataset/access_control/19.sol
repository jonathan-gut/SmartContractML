pragma solidity ^0.8.0;

contract Wrapped19 {
function transferTo_txorigin19(address to, uint amount,address owner_txorigin19) public {
  require(tx.origin == owner_txorigin19);
  to.call{value:amount}("");
}

}