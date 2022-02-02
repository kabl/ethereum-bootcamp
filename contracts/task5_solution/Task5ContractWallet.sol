// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Task5ContractWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    fallback() external payable {}

    receive() external payable {}

    function receiveEther() public payable {}

    function withdrawal(uint256 amount) public returns (bool) {
        require(msg.sender == owner, "wrong sender");
        owner.transfer(amount);
        return true;
    }

    function balance() public view returns (uint256) {
        return address(this).balance;
    }
}
