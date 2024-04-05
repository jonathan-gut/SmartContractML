pragma solidity ^0.8.0;

contract Wrapped36 {
function my_func_uncheck36(address payable dst) public payable{
        dst.call{value:msg.value}("");
    }

}