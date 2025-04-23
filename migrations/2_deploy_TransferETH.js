const transferETH = artifacts.require("TransferETH")

module.exports = async function (deployer) {
  const deploy = await deployer.deploy(transferETH);
  console.log(deploy)
}