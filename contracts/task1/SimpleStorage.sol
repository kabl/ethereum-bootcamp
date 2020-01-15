pragma solidity ^0.5.11;

contract SimpleStorage {
    uint256 private data;

    event newData(uint256 x);

    function setData(uint256 x) public {
        data = x;
        emit newData(x);
    }

    function getData() public view returns (uint256) {
        return data;
    }
}
