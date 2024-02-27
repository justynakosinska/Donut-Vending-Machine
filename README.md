# Donut-Vending-Machine
This Solidity smart contract represents a vending machine for selling donuts. The contract allows users to purchase donuts by sending Ether and enables the owner to restock the machine.

Contract Functions:
constructor: Initializes the contract by setting the owner as the address that deployed the contract and initializes the initial donut balance for the vending machine.

getVendingMachineBalance: Returns the current balance of donuts in the vending machine. This function is view-only and does not modify the contract state.

restock: Allows the owner to restock the vending machine with a specified amount of donuts.

purchase: Allows users to purchase donuts by sending Ether. Users must send at least double the amount of Ether per donut they wish to purchase. If the transaction is successful, the purchased donuts are transferred to the user, and the corresponding Ether is sent to the vending machine owner.

Usage:
To deploy this contract, compile it using Solidity compiler version 0.8.11 or newer. Once deployed, users can interact with the contract to purchase donuts or restock the machine.

License:
This project is licensed under the MIT License. See the SPDX-License-Identifier in the source code for more details.

Note:
Ensure that the contract owner is set to the correct address before deployment to maintain control over the vending machine's restocking functionality.
