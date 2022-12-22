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

    function depositToken(uint _amount ) public {
        IERC20(usdc).transferFrom(msg.sender, address(this), _amount);
        depositBalance[msg.sender] +=  _amount;

        if(!hasDeposited[msg.sender]) {
            stakers.push(msg.sender);
        }

        hasDeposited[msg.sender] = true;
    }
}