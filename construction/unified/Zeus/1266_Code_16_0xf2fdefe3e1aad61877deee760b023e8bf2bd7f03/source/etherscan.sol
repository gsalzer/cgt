pragma solidity ^0.4.0;

contract Attestation{
  address attestor;
  string attestationType;
  bool agree;

  function Attestation(string _attestationType, bool _agree, address _attestor) {
  attestor = _attestor;
  attestationType = _attestationType;
  agree = _agree;
  }

}


contract Contract{
  string contractHash;
  string title;
  address author;
  address liveAddress;
  Attestation[] attList;

  function Contract(string _contractHash, string _title, address _author) {
  contractHash = _contractHash;
  title = _title;
  author = _author;
  }

  function changeAddress(address _newAddress){
    if (msg.sender == author){
      liveAddress = _newAddress;
    } else {
      throw;
    }
  }
  function addAttestation(string attestationType, bool agree, address attestor){
    Attestation newAtt = new Attestation(attestationType, agree, attestor);

    attList.push(newAtt);
    //make new attestation struct with given type, agreement, and attestor is msg.sender
    //should check to see that attestor hasn't done so previously

    //Should check with AttRegistry to ensure that only the owner of a given att.type can attest?
    //Different attestation types have different ownders
    //registry allows for creation of att-type with att rules (only one person can make it, one person must approve requests?)
  }

}



contract AttestationManager {
  string contractHash;
  Contract[] contracts;
  address creator;

  /*****   Constructor   *****/

  function AttestationManager () {
  }

  function addContractWithInfo(string _contractHash, string _title) returns (uint newId){
    newId = contracts.length;
    Contract newContract = new Contract(_contractHash, _title, msg.sender);
    contracts.push(newContract);
  }

  function attestToContract(uint id, bool attestation, string attestationType){
    if (id >= contracts.length){
      throw;
    }
    contracts[id].addAttestation(attestationType, attestation, msg.sender);
  }

}