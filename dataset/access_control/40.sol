pragma solidity ^0.8.0;

contract Wrapped40 {
      function bug_txorigin40(address owner_txorigin40) public{
        require(tx.origin == owner_txorigin40);
    }

}