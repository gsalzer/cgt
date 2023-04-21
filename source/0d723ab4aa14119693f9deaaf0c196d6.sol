pragma solidity ^0.4.8;

contract TimeStamp{

    struct SharedDocument {

        string sharedDocumentId;
        string dateShared;
        string sharedLogin;
    }

    struct DocumentRecord {

        bool exists;
        string dateUploaded;
        string documentHash;
        string ownerLogin;
        SharedDocument[] sharedDocuments;
    }


    address owner;
    address newContract;
    address oldContract;

    //Mapping documentId => DocumentRecord
    mapping(string => DocumentRecord) documentRecords;

    string[] documentIds;


    modifier ownercontract { if(msg.sender == owner || msg.sender == newContract) _;}
    modifier onlyowner { if(msg.sender == owner) _;}


    function TimeStamp(){
        owner = msg.sender;
    }


    function getDocumentRecord(uint _index) ownercontract constant returns(string documentId, string dateUploaded, uint numberShares, string documentHash, string ownerLogin){

        if(_index >= documentIds.length){
            throw;
        }

        DocumentRecord result = documentRecords[documentIds[_index]];
        return (documentIds[_index], result.dateUploaded, result.sharedDocuments.length, result.documentHash, result.ownerLogin);
    }


    function getDocumentRecordById(string _documentId) ownercontract constant returns(string dateUploaded, uint numberShares, string documentHash, string ownerLogin){

        DocumentRecord result = documentRecords[_documentId];
        return (result.dateUploaded, result.sharedDocuments.length, result.ownerLogin, result.documentHash);
    }


    function getSharedDocument(string _documentId, uint _sharedDocumentIndex) ownercontract constant returns(string sharedDocumentId, string dateShared, string sharedLogin){

        DocumentRecord result = documentRecords[_documentId];
        SharedDocument sharedResult = result.sharedDocuments[_sharedDocumentIndex];

        return (sharedResult.sharedDocumentId, sharedResult.dateShared, sharedResult.sharedLogin);
    }
    
    
    function getDocumentRecordsNumber() ownercontract constant returns (uint n){

        return documentIds.length;
    }


    function addDocumentRecord(string _documentId, string _dateUploaded, string _documentHash, string _ownerLogin) onlyowner returns (uint _index) {

        if(documentRecords[_documentId].exists){
            throw;
        }

        uint index = documentIds.length;
        documentIds.length++;
        documentIds[index] = _documentId;

        documentRecords[_documentId].exists = true;
        documentRecords[_documentId].dateUploaded = _dateUploaded;
        documentRecords[_documentId].documentHash = _documentHash;
        documentRecords[_documentId].ownerLogin = _ownerLogin;

        return index;
    }


    function addSharedDocument(string _documentId, string _sharedDocumentId, string _dateShared, string _sharedLogin) onlyowner returns (uint _index) {

        DocumentRecord record = documentRecords[_documentId];
        if(!record.exists){
            throw;
        }

        uint index = record.sharedDocuments.length;
        record.sharedDocuments.length++;
        record.sharedDocuments[index].sharedDocumentId = _sharedDocumentId;
        record.sharedDocuments[index].dateShared = _dateShared;
        record.sharedDocuments[index].sharedLogin = _sharedLogin;

        return index;
    }


    function setOwner(address _newOwner) onlyowner {
        owner = _newOwner;
    }


    function setNewContract(address _newContract) onlyowner {
        newContract = _newContract;
    }


    function setOldContract(address _oldContract) onlyowner {
        oldContract = _oldContract;
    }


    function getOldContract() onlyowner constant returns (address a){
        return oldContract;
    }
    
    
    function destroy() onlyowner {
        suicide(owner); // send funds to owner
    }


    function isOwner() constant onlyowner returns(bool){
        return true;
    }


    function getOwner() constant returns (address a){
        return owner;
    }

}