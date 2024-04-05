pragma solidity ^0.8.0;

contract Wrapped20 {
    function bug_txorigin20(address owner_txorigin20) public{
        require(tx.origin == owner_txorigin20);
    }

}