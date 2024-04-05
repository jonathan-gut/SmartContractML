pragma solidity ^0.8.0;

contract Wrapped27 {
function transferTo_txorigin27(address to, uint amount,address owner_txorigin27) public {
  require(tx.origin == owner_txorigin27);
  to.call{value:amount}("");
}

}