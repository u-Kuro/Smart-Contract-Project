# Solidity Error Handling with Revert and Assert

This project demonstrates how error handling functions `require`, `revert`, and `assert` can be used in Solidity smart contracts. The example contract provided is called `KANSHI`, which represents a token contract.

## Contract Overview

The `KANSHI` contract has the following state variables and functions:

### State Variables

- `tokenName`: A string representing the name of the token.
- `tokenAbbrv`: A string representing the abbreviation of the token.
- `totalSupply`: An unsigned integer representing the total supply of tokens.
- `balances`: A mapping that maps addresses to their token balances.

### Functions

- `mint(address _address, uint _value)`: Allows minting new tokens and adding them to the specified address's balance. Increases the total supply and updates the balance of the address.

- `burnRequire(address _address, uint _value)`: Burns (removes) tokens from the specified address by checking if the value to burn is greater than 0 using `require`. If the requirement is not met, an error message is provided.

- `burnRevert(address _address, uint _value)`: Burns tokens from the specified address by checking if the value to burn is greater than 0 using an `if` statement. If the condition is not met, the execution is reverted with an error message.

- `burnAssert(address _address, uint _value)`: Burns tokens from the specified address by using `assert` to check if the value to burn is greater than 0. If the condition is not met, the transaction fails immediately.

- `burn(address _address, uint _value)`: Internal function that performs the actual burning of tokens from the specified address. Decreases the total supply and updates the balance of the address.

## Error Handling Functions

### `require`

The `require` statement is used to enforce a condition that must be true for the function to execute successfully. If the condition evaluates to `false`, the execution is reverted, and an error message is provided. In the `burnRequire` function, it is used to ensure that the value to burn is greater than 0 before calling the `burn` function.

### `revert`

The `revert` function is used to revert the current transaction and provide an error message. In the `burnRevert` function, an `if` statement is used to check if the value to burn is greater than 0. If the condition is not met, the execution is reverted using the `revert` function with an error message.

### `assert`

The `assert` statement is used to check for conditions that should never be false. If an `assert` statement evaluates to `false`, it indicates an internal error in the contract, and the transaction fails immediately. In the `burnAssert` function, it is used to ensure that the value to burn is greater than 0. If the condition is not met, the transaction fails with an assertion error.
