pragma solidity ^0.8.0;

contract Wrapped37 {
    address payable lastPlayer_re_ent37;
    uint jackpot_re_ent37;

    function buyTicket_re_ent37() public {
        if (!(lastPlayer_re_ent37.send(jackpot_re_ent37)))
            revert();
        lastPlayer_re_ent37 = payable(msg.sender); // Explicit conversion to address payable
        jackpot_re_ent37 = address(this).balance;
    }
}
