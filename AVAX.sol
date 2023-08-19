// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandlingExample {
    uint256 public value;

    function setValue(uint256 _newValue) public {
        // Using require() to validate input
        require(_newValue > 0, "Value must be greater than 0");
        
        value = _newValue;
    }

    function assertExample(uint256 P, uint256 Q) public pure returns (uint256) {
        // Using assert() to ensure an internal condition
        // Modified to avoid division by zero
        assert(Q != 0);
        
        return P / Q;
    }

    function revertExample(uint256 _value) public pure {
        // Using revert() to intentionally revert the transaction
        if (_value > 100) {
            revert("Value must not exceed 100");
        }
    }
}
