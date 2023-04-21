pragma solidity ^0.4.0;


/*
  AttestETH Manager
  Mark Beylin
  Nov 11, 2016
*/


contract AttestationManager {

  Contract[] public contracts;
  BugBounty[] public bounties;
  address public creator;

  struct Attestation {
    address attestor;
    string attestationType;
    bool agree;
  }

  struct Contract {
    string contractHash;
    string title;
    address author;
    address liveAddress;
    Attestation[] attList;
  }

  struct BugBounty {
    address owner;
    uint amount;
    string title;
    Contract[] contracts;
  }
/*
  struct personalManager {
    uint attestationNum;
    uint contractNum;
    uint bugBountyNum;


    Attestation[] personalAttestations;
    Contract[] personalContracts;
    BugBounty[] personalBugBounties;


  }*/

  /*****   Constructor   *****/

  function AttestationManager () {
    creator = msg.sender;
  }

  function addContractWithInfo(string _contractHash) returns (uint newId){
    newId = contracts.length++;
    Contract newContract = contracts[newId];
    newContract.contractHash = _contractHash;
    newContract.author = msg.sender;
  }
  function addBugBountyWithInfo(string _title, uint _amount) returns (uint newId){
    newId = bounties.length++;
    BugBounty newBugBounty = bounties[newId];
    newBugBounty.amount = _amount;
    newBugBounty.title = _title;
    newBugBounty.owner = msg.sender;
  }
  function addContractToBounty (uint bountyId, uint contractId) returns (uint newId){
    if (bountyId >= bounties.length || contractId >= contracts.length){
      throw;
    }
    if (bounties[bountyId].owner != msg.sender || contracts[contractId].author != msg.sender){
      throw;
    }

    newId = bounties[bountyId].contracts.length++;
    bounties[bountyId].contracts[newId] = contracts[contractId];
  }

  function attestToContract(uint id, bool _attestation, string _attestationType){
    if (id >= contracts.length){
      throw;
    }
    uint newAttId = contracts[id].attList.length++;
    Attestation newAtt = contracts[id].attList[newAttId];
    newAtt.attestor = msg.sender;
    newAtt.attestationType = _attestationType;
    newAtt.agree = _attestation;
  }




  function getNumContracts() constant returns (uint){
    return contracts.length;
  }
  function getNumAttForContract(uint id) constant returns (uint){
    if (id >= contracts.length){
      throw;
    }
    return contracts[id].attList.length;
  }
  function getAttForContractWithId(uint id, uint attId) constant returns (string){
    if (id >= contracts.length){
      throw;
    }
    if (attId >= contracts[id].attList.length){
      throw;
    }
    return contracts[id].attList[attId].attestationType;
  }

}