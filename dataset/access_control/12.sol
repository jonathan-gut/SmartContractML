pragma solidity ^0.8.0;

contract Wrapped12 {
    function bug_txorigin12(address owner_txorigin12) public{
        require(tx.origin == owner_txorigin12);
    }

}