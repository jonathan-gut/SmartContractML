pragma solidity ^0.8.0;

contract Wrapped23 {
 function my_func_unchk23(address payable dst) public payable{
        dst.send(msg.value);
    }

}