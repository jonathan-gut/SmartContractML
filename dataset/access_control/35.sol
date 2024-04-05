pragma solidity ^0.8.0;

contract Wrapped35 {
function transferTo_txorigin35(address to, uint amount,address owner_txorigin35) public {
  require(tx.origin == owner_txorigin35);
  to.call{value:amount}("");
}

}