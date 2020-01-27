pragma solidity ^0.5.16;

contract Task5ContractWallet {
    address payable public owner;

    constructor() public {
        owner = msg.sender;
    }

    function () external payable {}

    function withdrawal(uint256 amount) public returns (bool) {
        require(msg.sender == owner, "wrong sender");
        owner.transfer(amount);
        return true;
    }
}
