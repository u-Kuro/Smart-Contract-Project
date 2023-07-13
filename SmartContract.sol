// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExceptionDemo {
    uint256 public total;

    function setTotal(uint256 _value) external {
        require(_value > 0, "Value must be greater than zero");
        total = _value;
    }

    function divide(uint256 _numerator, uint256 _denominator) external pure returns (uint256) {
        assert(_denominator != 0);
        if (_numerator % _denominator != 0) {
            revert("Division not exact");
        }
        return _numerator / _denominator;
    }
}
