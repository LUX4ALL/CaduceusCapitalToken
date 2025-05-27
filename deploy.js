const { ethers } = require("hardhat");

async function main() {
  const Caduceus = await ethers.getContractFactory("CaduceusCapitalToken");
  const token = await Caduceus.deploy();
  await token.deployed();
  console.log(`CaduceusCapitalToken deployed to: ${token.address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
