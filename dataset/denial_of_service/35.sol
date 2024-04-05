pragma solidity ^0.8.0;

contract Wrapped35 {
 function my_func_unchk35(address payable dst) public payable{
        dst.send(msg.value);
    }

}