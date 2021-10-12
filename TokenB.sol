// contracts/TokenB.sol
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";



contract TokenB is Ownable, ERC20 {
      //token price 
   uint256 public tokensPerEth = 100;

   mapping(address => uint256) balances;


      //initialize token
     constructor(uint256 initialSupply) ERC20("TokenB", "TKB") {
        _mint(msg.sender, initialSupply);
     }

        function mintUpTo(address to, uint256 amount) external returns (uint256) {
        uint256 currentBalance = balanceOf(to);

        if (currentBalance >= amount) return 0;

        uint256 mintBalance = amount - currentBalance;
        _mint(to, mintBalance);

        return mintBalance;
      
     }

     
     




 }
