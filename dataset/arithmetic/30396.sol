contract Crowdsale{
  uint256 public endTime;

  function validPurchase() internal view returns (bool) {
    bool withinPeriod = block.timestamp <= endTime;
    return withinPeriod;
  }
}