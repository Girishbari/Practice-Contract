//SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract Details_Solidity_Program_test {
    uint256 a;
    uint256 b;
    uint256 c;

    constructor(uint256 _a, uint256 _b) {
        a = _a;
        b = _b;
    }

    function fun1() public view returns (uint256, uint256) {
        return (a, b);
    }

    function fun2() public returns (uint256) {
        return c = a + b;
    }

    function fun3() public pure returns (uint256) {
        uint256 x = 50;
        return x;
    }
}
