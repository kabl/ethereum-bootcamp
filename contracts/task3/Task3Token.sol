pragma solidity ^0.5.16;

contract Task3Token {
    mapping(address => uint256) _balances;

    constructor() public {
        _balances[msg.sender] = 100000;
    }

    function transfer(address recipient, uint256 amount) public {
        // ...
    }

    function balanceOf(address account) public view returns (uint256) {
        // ...
    }
}
