const hre = require('hardhat');

async function main() {
  await hre.run('compile');
  const DonationPiggy = await hre.ethers.getContractFactory('DonationPiggy');
  const donationPiggy = await DonationPiggy.deploy();
  await donationPiggy.deployed();
  console.log('DonationPiggy deployed to:', donationPiggy.address);

  if (process.env.VERIFY === '1' && hre.network.name !== 'hardhat') {
    console.log('Waiting for confirmations...');
    await donationPiggy.deployTransaction.wait(5);
    try {
      await hre.run('verify:verify', {
        address: donationPiggy.address,
        constructorArguments: []
      });
    } catch (e) {
      console.error('Verify failed:', e.message || e);
    }
  }
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});


