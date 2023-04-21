pragma solidity ^0.4.8;

contract TimeStamp{
    
    struct AckReceipt {
        
        bool exists;
        address receiver;
        string login;
        string dateReceipt;
    }

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
    
    //Mapping sharedDocumentId => remove date
    mapping(string => string) sharedDocumentsRemoveDate;
    
    //Mapping sharedDocumentId => AckReceipt
    mapping(string => AckReceipt) sharedDocumentsAckReceipt;
    
    


    //modifier ownercontract { if(msg.sender == owner || msg.sender == newContract) _;}
    modifier onlyowner { if(msg.sender == owner) _;}


    function TimeStamp() payable {
        owner = msg.sender;
    }


    function getDocumentRecord(uint _index) constant returns(string o_documentId, string o_dateUploaded, uint o_numberShares, string o_documentHash, string o_ownerLogin){

        if(_index >= documentIds.length){
            throw;
        }

        DocumentRecord result = documentRecords[documentIds[_index]];
        return (documentIds[_index], result.dateUploaded, result.sharedDocuments.length, result.documentHash, result.ownerLogin);
    }


    function getDocumentRecordById(string _documentId) constant returns(string o_dateUploaded, uint o_numberShares, string o_documentHash, string o_ownerLogin){

        DocumentRecord result = documentRecords[_documentId];
        return (result.dateUploaded, result.sharedDocuments.length, result.ownerLogin, result.documentHash);
    }


    function getSharedDocument(string _documentId, uint _sharedDocumentIndex) constant 
                                        returns(string o_sharedDocumentId, string o_dateShared, string o_sharedLogin, string o_dateReceipt, string o_dateRemoved){

        DocumentRecord result = documentRecords[_documentId];
        SharedDocument sharedResult = result.sharedDocuments[_sharedDocumentIndex];

        return (sharedResult.sharedDocumentId, sharedResult.dateShared, sharedResult.sharedLogin, 
                sharedDocumentsAckReceipt[sharedResult.sharedDocumentId].dateReceipt, sharedDocumentsRemoveDate[sharedResult.sharedDocumentId]);
    }
    
    
    function getDocumentRecordsNumber() constant returns (uint n){

        return documentIds.length;
    }


    function addDocumentRecord(string _documentId, string _dateUploaded, string _documentHash, string _ownerLogin) onlyowner returns (uint o_index) {

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


    function addSharedDocument(string _documentId, string _dateShared, string _sharedDocumentId, string _sharedLogin) onlyowner returns (uint o_index) {

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
    
    
    function setSharedDocumentRemoveDate(string _sharedDocumentId, string dateRemoved) onlyowner returns (uint o_index) {
        
        if(bytes(sharedDocumentsRemoveDate[_sharedDocumentId]).length > 0){
            throw;
        }
        
        sharedDocumentsRemoveDate[_sharedDocumentId] = dateRemoved;
        return 0;
    }
    
    
    function setSharedDocumentAckReceipt(string _sharedDocumentId, string _dateReceipt, string _login) returns (uint o_index) {
        
        if(sharedDocumentsAckReceipt[_sharedDocumentId].exists){
            throw;
        }
        
        sharedDocumentsAckReceipt[_sharedDocumentId].exists = true;
        sharedDocumentsAckReceipt[_sharedDocumentId].receiver = msg.sender;
        sharedDocumentsAckReceipt[_sharedDocumentId].login = _login;
        sharedDocumentsAckReceipt[_sharedDocumentId].dateReceipt = _dateReceipt;
        
        return 0;
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


    function getOldContract() onlyowner constant returns (address o_a){
        return oldContract;
    }
    
    
    function destroy() onlyowner {
        suicide(owner); // send funds to owner
    }


    function isOwner() constant onlyowner returns(bool o_b){
        return true;
    }


    function getOwner() constant returns (address o_a){
        return owner;
    }

}