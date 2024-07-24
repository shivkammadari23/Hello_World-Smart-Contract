async function main() {
    //load the smart contract that we compiled
    //ethers comes from hardhat.config.js
    //calling the getcontractfactory function on HelloWorld
    //const HelloWorld needs to be defined/instantiated wwhich is a factory for creating instances of the HelloWorld contract with the getContractFactory
    const HelloWorld = await ethers.getContractFactory("HelloWorld");
    
    //deploying an instance of the contract
    //the await keyword is specifying for the program to wait for the deployment to finish
    const hello_world = await HelloWorld.deploy("Hello World");

    //log into he console that the contract was deployed to address -> hello_world
    console.log("Contract deployed to address:", hello_world.address);


}


//In case of error just exit the program
main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });
