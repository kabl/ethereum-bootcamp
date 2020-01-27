pragma solidity ^0.5.16;

contract SafeMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }
}

contract ExampleContract is SafeMath {
    uint256 private _amount;

    function addAmount(uint256 amount) public returns (bool) {
        _amount = super.add(_amount, amount);
        return true;
    }
}
