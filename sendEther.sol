//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract sendMoney {
    address payable public recipientAddr;
    uint public etherAmount;
    uint public weiAmount;
    uint public gweiAmount;

    function setRecipient(address payable addrValue) external {
        recipientAddr = addrValue ;
    }

    function sendEther() external payable {
         recipientAddr.transfer(msg.value);
         etherAmount = recipientAddr.balance / 1 ether;
         weiAmount = etherAmount * (10e18);
         gweiAmount = etherAmount * (10e9);
    }

}
