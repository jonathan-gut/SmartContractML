pragma solidity ^0.8.0;

contract Wrapped28 {
    function bug_txorigin28(  address owner_txorigin28) public{
        require(tx.origin == owner_txorigin28);
    }

}