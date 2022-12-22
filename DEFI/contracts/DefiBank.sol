// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract DefiBank {

     address public usdc;
    address public ausd;

    address[] public stakers;
    
    mapping(address => uint) public depositBalance;
    mapping(address => bool) public hasDeposited;

     constructor(address _usdc, address _ausd) {
        usdc = _usdc;
        ausd = _ausd;
    }
}