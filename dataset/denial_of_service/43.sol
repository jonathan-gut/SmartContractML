pragma solidity ^0.8.0;

contract Wrapped43 {
function bug_unchk43() public{
address payable addr_unchk43;
if (!addr_unchk43.send (10 ether) || 1==1)
	{revert();}
}

}