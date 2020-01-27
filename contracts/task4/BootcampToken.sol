pragma solidity ^0.5.16;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract BootcampToken is ERC20, ERC20Detailed, ERC20Mintable, Ownable {
    constructor()
        public
        ERC20Mintable()
        ERC20Detailed("Bootcamp Token", "BCT", 18)
        ERC20()
    {}

    function() external payable {
        // Calling mint based on the amount of wei transfered
    }

    function payOut() public onlyOwner {
        // Withdraw the contracts Ether balance
    }

    function destroy() public onlyOwner {
        // Destroy the smart contract
    }
}
