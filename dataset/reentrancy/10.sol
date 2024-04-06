pragma solidity ^0.8.0;

contract Wrapped10 {
mapping(address => uint) balances_re_ent10;
function withdrawFunds_re_ent10 (uint256 _weiToWithdraw) public {
        require(balances_re_ent10[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        address payable sender = payable(msg.sender);
        require(sender.send(_weiToWithdraw));  //bug
        balances_re_ent10[msg.sender] -= _weiToWithdraw;
    }

}