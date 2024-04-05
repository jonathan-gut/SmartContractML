pragma solidity ^0.8.0;

contract Wrapped8 {
    mapping(address => uint) balances_re_ent8;
    function withdraw_balances_re_ent8 () public {
       (bool success,) = msg.sender.call{value:balances_re_ent8[msg.sender ]}("");
       if (success)
          balances_re_ent8[msg.sender] = 0;
      }

}