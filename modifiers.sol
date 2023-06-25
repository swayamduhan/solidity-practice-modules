// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mod{

    address admin;
    uint c;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin {
        require (admin == msg.sender, "only admin can access");
        _;
    }

    function add(uint a, uint b) public onlyAdmin {
      c = a + b;
    }

    function getNumber() public view onlyAdmin returns(uint) {
        return c;
    }
}
