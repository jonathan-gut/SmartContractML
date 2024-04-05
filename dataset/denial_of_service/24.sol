pragma solidity ^0.8.0;

contract Wrapped24 {
function my_func_uncheck24(address payable dst) public payable{
        dst.call{value:msg.value}("");
    }

}