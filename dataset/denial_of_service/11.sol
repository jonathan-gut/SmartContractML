pragma solidity ^0.8.0;

contract Wrapped11 {
 function my_func_unchk11(address payable dst) public payable{
        dst.send(msg.value);
    }

}