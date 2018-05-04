pragma solidity ^0.4.17;

import 'zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

//Owner 0x6B2e8f8Bc30AE1C7a43f768D0912bCE699619DF5
contract HHEC is MintableToken {

    string public name = "Heptapolis Humanitarian Energy Coin";
    string public symbol = "HHEC";
    uint8 public decimals = 18;

    uint256 public maxSupply = 1000000000 * 10 ** uint256(decimals); //Maxim Supply is 1 Billion tokens

    modifier canMint() {
      require(!mintingFinished);
      require(totalSupply_< maxSupply);
      _;
    }

}
