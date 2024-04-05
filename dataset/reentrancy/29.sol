pragma solidity ^0.8.0;

contract Wrapped29 {
    mapping(address => uint) balances_re_ent29;
    function withdraw_balances_re_ent29 () public {
       if (msg.sender.send(balances_re_ent29[msg.sender ]))
          balances_re_ent29[msg.sender] = 0;
      }	

}