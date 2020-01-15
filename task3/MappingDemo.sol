pragma solidity ^0.5.11;

contract MappingDemo {

    // address represents the owner, uint256 the balance
    mapping(address => string) private _messageMap;
    
    function addMessage(string memory message) public returns (bool) {
        _messageMap[msg.sender] = message;
        return true;
    }
    
    function getMessage(address sender) public view returns (string memory) {
        return _messageMap[sender];
    }
}