pragma solidity ^0.8.0;

contract Wrapped12 {
function my_func_uncheck12(address payable dst) public payable{
        dst.call{value:msg.value}("");
    }

}