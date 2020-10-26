// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "./DappToken.sol";
import "./DaiToken.sol";

contract TokenFarm {
  string public name = "DApp Token Farm";
  DappToken public dappToken;
  DaiToken public daiToken;

  address[] public stakers;

  mapping(address => uint) public stakingBalance;
  mapping(address => bool) public hasStaked;
  mapping(address => bool) public isStaking;

  constructor(DappToken _dappToken, DaiToken _daiToken) {
    dappToken = _dappToken;
    daiToken = _daiToken;
  }

  function stakeTokens(uint _amount) public {
    // TokenFarm transfers DAI Tokens into its wallet on behalf of the investor
    daiToken.transferFrom(msg.sender, address(this), _amount);
    stakingBalance[msg.sender] = stakingBalance[msg.sender] + _amount;
    if (!hasStaked[msg.sender]) {
      stakers.push(msg.sender);
    }
    hasStaked[msg.sender] = true;
    isStaking[msg.sender] = true;
  }
}
