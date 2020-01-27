pragma solidity ^0.5.16;

contract Task5ContractWallet {
    address payable public owner;

    constructor() public {}

    function() external payable {}

    function withdrawal(uint256 amount) public returns (bool) {
        // TODO: check ownership
        // TODO: send the amount to the owners address
    }
}
