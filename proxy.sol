// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SquareIt {
    uint public num;
    uint public squaredNum;

    function square(uint _num) public {
        num = _num;
        squaredNum = num*num;
    }
}

contract CallIt {
    uint public num;
    uint public squaredNum;

    function square(address _contract, uint _num) public {
        (bool success, bytes memory data) = _contract.delegatecall(abi.encodeWithSignature("square(uint256)", _num));
        require (success, "Delegate call failed!");
    }
}
