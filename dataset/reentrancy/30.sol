pragma solidity ^0.4.11;

contract Wrapped30 {
    address lastPlayer_re_ent30;
    uint jackpot_re_ent30;

    function buyTicket_re_ent30() public {
        if (!(lastPlayer_re_ent30.send(jackpot_re_ent30)))
            revert();
        lastPlayer_re_ent30 = msg.sender;
        jackpot_re_ent30 = address(this).balance;
    }
}
