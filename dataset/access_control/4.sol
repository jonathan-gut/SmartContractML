pragma solidity ^0.8.0;

contract Wrapped4 {
function bug_txorigin4(address owner_txorigin4) public{
        require(tx.origin == owner_txorigin4);
    }

}