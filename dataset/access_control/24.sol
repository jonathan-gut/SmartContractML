pragma solidity ^0.8.0;

contract Wrapped24 {
  function bug_txorigin24(  address owner_txorigin24) public{
        require(tx.origin == owner_txorigin24);
    }

}