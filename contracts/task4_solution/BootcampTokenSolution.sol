// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/access/Ownable.sol";

contract BootcampTokenSolution is ERC20, Ownable {
    constructor() ERC20("Bootcamp Token", "BCT") {}

    fallback() external payable {
        _mint(msg.sender, msg.value);
    }

    receive() external payable {
        _mint(msg.sender, msg.value);
    }

    function receiveEther() public payable {
        _mint(msg.sender, msg.value);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function payOut() public onlyOwner {
        address payable recipient = payable(msg.sender);
        address contractInstance = address(this);
        require(recipient.send(contractInstance.balance), "PayOut failed");
    }

    function destroy() public onlyOwner {
        selfdestruct(payable(msg.sender));
    }
}
