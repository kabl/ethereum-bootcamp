const BootcampToken = artifacts.require("./task4_solution/BootcampTokenSolution.sol");

module.exports = function (deployer, network) {
    deployer.then(async () => {
        if (network === "development") {
            const instance = await deployer.deploy(BootcampToken);
            console.log("BootcampToken Contract: " + instance.address);
        } else if (network === "rinkeby") {
            const instance = await deployer.deploy(BootcampToken);
            console.log("BootcampToken Contract: " + instance.address);
        } else {
            console.log("Network is not yet configured. Network:", network);
        }
    });
};
