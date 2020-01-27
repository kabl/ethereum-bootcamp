var Web3 = require("web3");
var web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
const BCT = artifacts.require("./task4_solution/BootcampTokenSolution.sol");

contract("BootcampTokenSolutionTest", accounts => {
  var owner = accounts[0];
  var user1 = accounts[1];
  var user2 = accounts[2];

  it("Mint", async function() {
    var bct = await BCT.new();

    const amount = "1000000000000000000";
    await bct.mint(user1, amount, {from: owner}); // 18 decimals..

    var user1Balance = (await bct.balanceOf(user1)).toString();

    assert.equal(user1Balance, amount);
  });
});
