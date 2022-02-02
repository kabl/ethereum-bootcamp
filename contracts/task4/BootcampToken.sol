// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/access/Ownable.sol";

contract BootcampToken is ERC20, Ownable {
    constructor() ERC20("Bootcamp Token", "BCT") {}

    fallback() external payable {}

    receive() external payable {}

    function receiveEther() public payable {}

    function payOut() public onlyOwner {
        // Withdraw the contracts Ether balance
    }

    function destroy() public onlyOwner {
        // Destroy the smart contract
    }
}
