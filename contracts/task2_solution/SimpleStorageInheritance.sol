// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Ownable {
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}

contract SimpleStorageInheritance is Ownable {
    uint256 private _data;

    event newData(uint256 data);

    function setData(uint256 data) public onlyOwner {
        _data = data;
        emit newData(data);
    }

    function getData() public view returns (uint256) {
        return _data;
    }
}
