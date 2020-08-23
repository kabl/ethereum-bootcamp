pragma solidity ^0.5.16;

contract Ownable {
    address private owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}

contract SafeMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;

        return c;
    }
}

contract Task3TokenSolution is Ownable, SafeMath {
    mapping(address => uint256) private _balances;
    uint256 private _totalSupply;

    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor() public {
        _balances[msg.sender] = 100000;
    }

    function mint(address recipient, uint256 amount)
        public
        onlyOwner
        returns (bool)
    {
        _balances[recipient] = add(_balances[recipient], amount);
        _totalSupply = add(_totalSupply, amount);
        emit Transfer(address(0x0), recipient, amount);

        return true;
    }

    function transfer(address recipient, uint256 amount) public returns (bool) {
        require(_balances[msg.sender] >= amount, "sender not enough tokens");
        _balances[msg.sender] = sub(_balances[msg.sender], amount);
        _balances[recipient] = add(_balances[recipient], amount);

        emit Transfer(msg.sender, recipient, amount);
        return true;
    }

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
}
