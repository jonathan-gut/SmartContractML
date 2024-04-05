pragma solidity ^0.8.0;

contract Wrapped48 {
function my_func_uncheck48(address payable dst) public payable{
        dst.call{value:msg.value}("");
    }

}