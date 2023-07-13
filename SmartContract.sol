// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract KANSHI {
    string public tokenName = "KANSHI";
    string public tokenAbbrv = "KSH";
    uint public totalSupply = 0;
    mapping(address => uint) public balances;

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burnRequire(address _address, uint _value) public {
        require(_value > 0, "Value must be greater than the current balance");
        burn(_address, _value);
    }

    function burnRevert(address _address, uint _value) public {
        if (_value <= 0) 
        return revert("Value must be greater than the current balance");
        burn(_address, _value);
    }

    function burnAssert(address _address, uint _value) public {
        assert(_value > 0);
        burn(_address, _value);
    }

    function burn(address _address, uint _value) private {
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
