module.exports  = {
  development: {
    host: "localhost",
    port: 8545,
    network_id: "*" // Match any network id
  },
  ropsten: {
    provider: ropstenProvider,
    // You can get the current gasLimit by running
    // truffle deploy --network rinkeby
    // truffle(rinkeby)> web3.eth.getBlock("pending", (error, result) =>
    //   console.log(result.gasLimit))
    gas: 4600000,
    gasPrice: web3.toWei("20", "gwei"),
    network_id: "3",
  },
  mainnet: {
    provider: mainNetProvider,
    gas: 4600000,
    gasPrice: web3.toWei("20", "gwei"),
    network_id: "1",
  }
};
