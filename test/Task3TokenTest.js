var Web3 = require("web3");
const truffleAssert = require('truffle-assertions');
var web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));

// const SimpleToken = artifacts.require("./contracts/task3_solution/Task3TokenSolution.sol");
const SimpleToken = artifacts.require("./contracts/task3/Task3Token.sol");


contract("Task3TokenTest", accounts => {
  var owner = accounts[0];
  var user1 = accounts[1];
  var user2 = accounts[2];

  it("Init", async function () {
    var token = await SimpleToken.new();

    var user1Balance = (await token.balanceOf(owner)).toString();

    assert.equal(user1Balance, 100000);
  });

  it("Transfer 100 from user1 to user2", async function () {
    var token = await SimpleToken.new();

    await token.transfer(user2, 10000, { from: owner });

    assert.equal((await token.balanceOf(owner)).toString(), 90000);
    assert.equal((await token.balanceOf(user2)).toString(), 10000);
  });

  it("Check transfer Event", async function () {
    var token = await SimpleToken.new();


    var result1 = await token.transfer(user2, 1000, { from: owner });
    truffleAssert.eventEmitted(result1, 'Transfer', (ev) => {
      return ev.from === owner &&
        ev.to === user2 &&
        ev.value.toString() === '1000';
    });
  });

  it("Transfer 20000 from owner to user2. Expected Revert", async function () {
    var token = await SimpleToken.new();

    await truffleAssert.reverts(
      token.transfer(user2, 20000, { from: user1 }),
      "sender not enough tokens"
    );
  });
});
