//SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract Program_on_if_else {
    function fun1(int256 a) public pure returns (string memory) {
        if (a > 0) {
            return "we have perfect value";
        } else {
            return "we dont have perfect valve";
        }
    }
}
