//SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract Program_on_String {
    string public str = "Hello Guys";

    function returnStateVariable() public view returns (string memory) {
        return str;
    }

    function returnLocalVariable() public pure returns (string memory) {
        string memory str1 = "Girish here";
        return str1;
    }
}
