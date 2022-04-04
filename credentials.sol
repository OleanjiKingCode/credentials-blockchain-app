// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.1;
contract CredentialsDiary{
    string credential;
    mapping(address => string) cre;
  address owner;
  constructor(){
       owner = msg.sender; 
  }

  //create a function that writes credential to the smart contract
 function setCredential(string memory _credential) public{

     credential = _credential;
     
    
     cre[msg.sender]=credential;

 }

 //create a function the reads the mood from the smart contract
 function getCredential() public view returns(string memory){
    require(msg.sender ==owner);
     return credential;
     
     
 }
 }