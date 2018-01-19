pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract EEE is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function EEE(address _owner)  UpgradeableToken(_owner) {
    name = "EEE";
    symbol = "EEE";
    totalSupply = 31000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}