
contract TelcoinSaleCapEscrow {

    mapping(address => uint256) public deposited;

    function reject(address _participant) public {
        uint256 weiAmount = deposited[_participant];
        deposited[_participant] = 0;
        require(_participant.call.value(weiAmount)());
    }
}