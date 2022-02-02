// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Task3Token {
    mapping(address => uint256) _balances;

    constructor() {
        _balances[msg.sender] = 100000;
    }

    function transfer(address recipient, uint256 amount) public {
        // ...
    }

    function balanceOf(address account) public view returns (uint256) {
        // ...
    }
}
