// SPDX-License-Identifier: MIT
// Specifies the version of Solidity, using semantic versioning.
// Learn more: https://solidity.readthedocs.io/en/v0.5.10/layout-of-source-files.html#pragma
pragma solidity >= 0.7.3;

//This contract takes in an initial argument, stores that string and anyone can call the "update" function and update what that message is

// Defines a contract named `HelloWorld`.
// A contract is a collection of functions and data (its state). Once deployed, a contract resides at a specific address on the Ethereum blockchain. Learn more: https://solidity.readthedocs.io/en/v0.5.10/structure-of-a-contract.html
contract HelloWorld {


    //Events : when a function is called, we can call events to let everyone in the blockchain know
    //Passing old and new strings . When the event is broadcast, everyone can see the event "UpdatedMessages
    event UpdatedMessages(string oldStr, string newStr);

    //Defining state for contract to keep track of
    //State variables for the contract to keep track of Ex: messages, data, nft 
    //string type "message set to public function: everyone can read from it after we deploy it to the blockchain, it tells us the access level of the function
    string public message;

    //Functions: to read and write/modify state
    //constructor functions run only once when smart contract is deployed
    //when contract is deployed we require an argument to be passed called initMessage
    constructor (string memory initMessage) {
        message = initMessage;
    }

    //If function is set to private: no one else besides the logic inside the smart contract can call this function

    function update(string memory newMessage) public {
        string memory oldMsg= message;
        message = newMessage;
        emit UpdatedMessages(oldMsg, newMessage);

    }




}
