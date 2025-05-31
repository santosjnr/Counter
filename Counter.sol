// SPDX-License-Identifier: MIT

// Pragma Declaration
pragma solidity ^0.8.0;

// Contract Declaration
contract Counter {
    // Variable Declaration
    uint256 count;
    address owner;

    // Event
    event CountUpdated(uint256 newValue);

    // Modifier
    modifier onlyOwner(){
        require(msg.sender == owner, "Unauthorized access denied");
        _;
    }

    // Constructor
    constructor(){
        owner = msg.sender;
    }

    // Function 1
    function setCount(uint256 val) public {
        count = val;
        emit CountUpdated(count);
    }

    // Function 2
    function getCount() public view returns(uint256){
        return count;
    }
}