// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "./DappToken.sol";
import "./DaiToken.sol";

contract TokenFarm {
  string public name = "Dapp Token Farm";
  DappToken public dappToken;
  DaiToken public daiToken;

  constructor(DappToken _dappToken, DaiToken _daiToken) {
    dappToken = _dappToken;
    daiToken = _daiToken;
  }
}
