pragma solidity >=0.4.0 <0.7.0;

contract SimpleStorage {
    uint256 private storedData;
    
    event newData(uint256 x);

    function set(uint256 x) public {
        storedData = x;
        emit newData(x);
    }

    function get() public view returns (uint256) {
        return storedData;
    }
}