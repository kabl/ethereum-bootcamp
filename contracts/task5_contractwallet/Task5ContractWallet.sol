// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Task5ContractWallet {
    address payable public owner;

    constructor() {}

    fallback() external payable {}

    receive() external payable {}

    function receiveEther() public payable {}

    function withdrawal(uint256 amount) public returns (bool) {
        // TODO: check ownership
        // TODO: send the amount to the owners address
    }

    function balance() public view returns (uint256) {
        return address(this).balance;
    }
}
