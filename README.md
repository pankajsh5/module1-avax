# Weather System Smart Contract

This smart contract, named `weatherSystem`, is designed to manage information related to individuals' health conditions and their decision to go out based on the current temperature. The contract includes features to check for fever and determine whether it's safe for an individual to travel outdoors.

## Features

### 1. Safe to Travel Function

The `safe_to_travel` function is a key feature of this contract, allowing individuals to assess whether it's safe for them to travel based on the current temperature. It takes the current temperature as an argument and implements the following logic:

- If the temperature is 30 degrees Celsius or higher, the function reverts with an error message indicating that it's too hot to travel.
- If the temperature is less than 10 degrees Celsius, the function reverts with an error message indicating that it's too cold to travel.
- If the temperature is between 10 and 30 degrees Celsius, and the caller does not have a fever (body temperature less than 38 degrees Celsius), the function sets the caller's status to "going out."

### 2. Check Fever Function

The `checkFever` function allows an external entity to update an individual's fever status based on their body temperature. If the body temperature is 38 degrees Celsius or higher, the individual is marked as having a fever; otherwise, they are marked as not having a fever.

## Data Structures

The contract uses two mappings to store information about individuals:

- `hasFever`: Maps an address to a boolean indicating whether the individual has a fever.
- `goingOut`: Maps an address to a boolean indicating whether the individual is planning to go out.

## License

The smart contract is released under the MIT License, as specified in the SPDX-License-Identifier at the beginning of the contract code.

## Usage

To use this smart contract, deploy it on a compatible Ethereum Virtual Machine (EVM) and interact with its functions using a decentralized application (DApp) or through direct transactions.

## Disclaimer

This smart contract is a sample and may not cover all possible scenarios or security considerations. It is recommended to thoroughly review and test the contract before deploying it in a real-world environment. The contract does not provide medical advice, and decisions related to health and safety should be based on professional guidance.

Feel free to modify and extend the contract based on your specific requirements and use cases.
