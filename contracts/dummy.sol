// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// Declare the smart contract
contract SimpleBank {
    // Declare a variable to store the balance of the account
    uint public balance;  //updated the balance

    // Define a function to deposit funds into the account
    function deposit(uint amount) public {
        balance += amount;
    }

    // Define a function to withdraw funds from the account
    function withdraw(uint amount) public {
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
    }
}
