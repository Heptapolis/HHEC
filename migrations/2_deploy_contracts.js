const HHEC = artifacts.require('./HHEC.sol');

module.exports = function(deployer, network, accounts) {


    return deployer
        .then(() => {
            return deployer.deploy(HHEC);
        });
};
