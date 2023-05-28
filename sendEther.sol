//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract payment {
    uint public valueInWei;
    uint public valueInGwei;
    uint public valueInEther;

    function sendMoney(uint amount) external payable {
      
        valueInEther = amount;
        valueInWei = valueInEther * (10e18) ;
        valueInGwei = valueInEther * (10e9);
    }
}
