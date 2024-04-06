pragma solidity ^0.4.11;

contract Wrapped23 {
    address lastPlayer_re_ent23;
    uint jackpot_re_ent23;

    function buyTicket_re_ent23() public {
        if (!(lastPlayer_re_ent23.send(jackpot_re_ent23)))
            revert();
        lastPlayer_re_ent23 = msg.sender; // Assign msg.sender directly to address type
        jackpot_re_ent23 = address(this).balance;
    }
}
