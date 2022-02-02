// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract SimpleStorage {
    uint256 private data;
    address private owner;

    event newData(uint256 x);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function setData(uint256 x) public onlyOwner {
        data = x;
        emit newData(x);
    }

    function getData() public view returns (uint256) {
        return data;
    }
}
