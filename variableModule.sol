//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract fourVars {
    uint number;
    string name;
    address etherAdd;
    bool trueOrFalse;

    function setNumber(uint newNumber) public {
        number = newNumber;
    }

    function getNumber() public view returns(uint) {
        return number;
    }

    function setName(string memory newName) public {
        name = newName;
    }

    function getName() public view returns(string memory) {
        return name;
    }

    function setEtherAdd(address newAdd) public {
        etherAdd = newAdd;
    }

    function getEtherAdd() public view returns(address) {
        return etherAdd;
    }

    function setTrueOrFalse(bool tf) public {
        trueOrFalse = tf;
    }

    function getTrueOrFalse() public view returns(bool) {
        return trueOrFalse;
    }
}
