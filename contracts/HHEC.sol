pragma solidity ^0.4.17;

import 'zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

contract HHEC is MintableToken {

    string public name = "Heptapolis Humanitarian Energy Coin";
    string public symbol = "HHEC";
    uint8 public decimals = 18;

    uint256 public maximSupply = 1000000000 * 10 ** uint256(decimals); //Maxim Supply is 1 Billion tokens

    modifier canMint() {
      require(!mintingFinished);
      require(totalSupply_< maximSupply);
      _;
    }

}
