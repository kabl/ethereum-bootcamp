pragma solidity ^0.5.16;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract BootcampTokenSolution is ERC20, ERC20Detailed, ERC20Mintable, Ownable {
    constructor()
        public
        ERC20Mintable()
        ERC20Detailed("Bootcamp Token", "BCT", 18)
        ERC20()
    {}

    function() external payable {
        _mint(msg.sender, msg.value);
    }

    function payOut() public onlyOwner {
        address payable recipient = msg.sender;
        address contractInstance = address(this);
        require(recipient.send(contractInstance.balance), "PayOut failed");
    }

    function destroy() public onlyOwner {
        selfdestruct(msg.sender);
    }
}
