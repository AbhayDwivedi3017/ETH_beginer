# MY TOKEN SMART CONTRACT

A basic smart contract to manage a cryptocurrency token called "getthetoken", allowing users to mint (create) and burn (destroy) tokens while keeping track of balances.

## Description

This project involves developing a smart contract for a cryptocurrency token named "GetToken" (symbol: Gttkns) using Solidity. The contract enables users to mint (create) and burn (destroy) tokens, with functionalities to adjust the total supply and individual balances accordingly. By maintaining a mapping of address balances, the contract ensures accurate tracking of token ownership. This project provides a foundational framework for managing digital assets, suitable for educational purposes, experimental projects, or as a starting point for more complex token systems.

## Getting Started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., token.sol). Copy and paste the following code into the file:

## **How Code is Working**
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract getthetoken{

    // Public variables here
    string public toknName = "getthetoken";
    string public toknSymbol = "gttkn"; // Corrected typo (Symbol instead of Abrrv)
    uint public totalSuply = 0;

    // Mapping to store token balances
    mapping(address => uint) public balance;

    // Mint function
    function mint(address _to, uint _value) public { // Corrected parameter name (_to)
        totalSuply += _value;
        balance[_to] += _value;
    }

    // Burn function
    function burn(address _from, uint _value) public { // Function renamed to burn
        require(balance[_from] >= _value, "Insufficient balance for burning"); // Added require statement
        totalSuply -= _value;
        balance[_from] -= _value;
    }
}


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "token" contract from the dropdown menu, and then click on the "Deploy" button.
Now just call the functions name ,symbol and total supply to get the name function and total supply of amount of tokens.

To mint Tokens call mint function and copy the address and paste it under _to : section and add the amount you want to add under _ amount section then just click on transact and you can check the added amount by calling again totalsupply function.

To destroy go to the burn expand it and paste the address to the _address section and amount to be burn to _burn section then just click on transact and by calling again totalsupply you can check the updated amount.




## **Authors**

Abhay Dwivedi
