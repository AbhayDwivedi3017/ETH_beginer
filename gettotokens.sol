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
