pragma solidity ^0.8.0;

contract Wrapped47 {
 function my_func_unchk47(address payable dst) public payable{
        dst.send(msg.value);
    }

}