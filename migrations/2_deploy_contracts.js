const tf = artifacts.require("./Adoption.sol");

module.exports = function (deployer, network, accounts) {
    deployer.deploy(tf, { from: accounts[0] });
};
