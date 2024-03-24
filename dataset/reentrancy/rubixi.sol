
pragma solidity ^0.4.22;

contract Rubixi {
        uint private balance = 0;
        uint private collectedFees = 0;
        uint private feePercent = 10;
        uint private pyramidMultiplier = 300;
        uint private payoutOrder = 0;
        address private creator;
        function DynamicPyramid() {
                creator = msg.sender;
        }
        modifier onlyowner {
                if (msg.sender == creator) _;
        }
        struct Participant {
                address etherAddress;
                uint payout;
        }
        Participant[] private participants;
        function() {
                init();
        }
        function init() private {
                if (msg.value < 1 ether) {
                        collectedFees += msg.value;
                        return;
                }
                uint _fee = feePercent;
                if (msg.value >= 50 ether) _fee /= 2;
                addPayout(_fee);
        }
        function addPayout(uint _fee) private {
                participants.push(Participant(msg.sender, (msg.value * pyramidMultiplier) / 100));
                if (participants.length == 10) pyramidMultiplier = 200;
                else if (participants.length == 25) pyramidMultiplier = 150;
                balance += (msg.value * (100 - _fee)) / 100;
                collectedFees += (msg.value * _fee) / 100;
                while (balance > participants[payoutOrder].payout) {
                        uint payoutToSend = participants[payoutOrder].payout;
                        participants[payoutOrder].etherAddress.send(payoutToSend);
                        balance -= participants[payoutOrder].payout;
                        payoutOrder += 1;
                }
        }
        function collectAllFees() onlyowner {
                if (collectedFees == 0) throw;
                creator.send(collectedFees);
                collectedFees = 0;
        }
        function collectFeesInEther(uint _amt) onlyowner {
                _amt *= 1 ether;
                if (_amt > collectedFees) collectAllFees();
                if (collectedFees == 0) throw;
                creator.send(_amt);
                collectedFees -= _amt;
        }
        function collectPercentOfFees(uint _pcent) onlyowner {
                if (collectedFees == 0 || _pcent > 100) throw;
                uint feesToCollect = collectedFees / 100 * _pcent;
                creator.send(feesToCollect);
                collectedFees -= feesToCollect;
        }
        function changeOwner(address _owner) onlyowner {
                creator = _owner;
        }
        function changeMultiplier(uint _mult) onlyowner {
                if (_mult > 300 || _mult < 120) throw;
                pyramidMultiplier = _mult;
        }
        function changeFeePercentage(uint _fee) onlyowner {
                if (_fee > 10) throw;
                feePercent = _fee;
        }
}
