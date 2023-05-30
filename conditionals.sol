//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Conditionals{

    function conditionalTest(uint x) public pure returns(string memory) {
        if (x > 30) {
            return "passed";
        } else {
            return "failed";
        }
    }

    function ternaryTest(uint y) public pure returns(string memory) {
        return y > 30 ? "passed" : "failed";
    }
}
