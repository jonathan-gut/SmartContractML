pragma solidity ^0.8.0;

contract Wrapped32 {
    function bug_txorigin32(  address owner_txorigin32) public{
        require(tx.origin == owner_txorigin32);
    }

}