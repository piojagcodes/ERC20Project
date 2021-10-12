// contracts/Vendor.sol
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "hardhat/console.sol";

import "./TokenA.sol";
import "./TokenB.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";



contract Vendor is Ownable {

  
  TokenA tokenA;
  TokenB tokenB;

  mapping(address => uint256) private balances;

 


  uint256 public tokensPerEth = 100;

    constructor(address tokenAddress ) {
    tokenA = TokenA(tokenAddress);
    tokenB = TokenB(tokenAddress);
  }


  function myDifferentFunction(address to, uint256 amount) external  returns(bool) {

    uint256 mintAmountTokenA = tokenA.mintUpTo(to, amount);
    uint256 mintAmountTokenB = tokenB.mintUpTo(to, amount);

    console.log("The minted amount of TokenA was", mintAmountTokenA);
    console.log("The minted amount of TokenB was", mintAmountTokenB);

  }

  



  

  


  


 

  


}