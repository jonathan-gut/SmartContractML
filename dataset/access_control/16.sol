pragma solidity ^0.8.0;

contract Wrapped16 {
    function bug_txorigin16(address owner_txorigin16) public{
        require(tx.origin == owner_txorigin16);
    }

}