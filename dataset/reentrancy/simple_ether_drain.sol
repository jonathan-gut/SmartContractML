
pragma solidity ^0.4.22;
contract SimpleEtherDrain {
  function withdrawAllAnyone() {
    msg.sender.transfer(address(this).balance);
  }
  function () public payable {
  }
}
