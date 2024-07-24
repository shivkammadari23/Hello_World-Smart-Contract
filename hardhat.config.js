/**
* @type import('hardhat/config').HardhatUserConfig
*/

//loads all info from .env into the dev environment
require('dotenv').config();
//library plugin called ethers.js helps us write deploy script and for useful for frontend
require("@nomiclabs/hardhat-ethers");

const { API_URL, PRIVATE_KEY } = process.env;

module.exports = {
   solidity: "0.7.3",
   defaultNetwork: "sepolia",
   networks: {
      hardhat: {},
      sepolia: {
         url: API_URL,
         accounts: [`0x${PRIVATE_KEY}`]
      }
   },
}
