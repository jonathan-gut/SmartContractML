pragma solidity ^0.8.0;

contract Wrapped36 {
    function bug_txorigin36(  address owner_txorigin36) public{
        require(tx.origin == owner_txorigin36);
    }

}