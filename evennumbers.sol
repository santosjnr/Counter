// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EvenOddChecker{

    function checkEvenOddNumber(uint256 digit) public pure returns (string memory){
        if(digit % 2 == 0){
            return "Even";
        }else {
            return "Odd";
        }
    }
}