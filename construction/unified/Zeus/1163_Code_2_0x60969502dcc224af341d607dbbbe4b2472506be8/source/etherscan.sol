pragma solidity ^0.4.8;

contract Storage {
    
    struct item {
        bytes32 data;
        uint value;
        uint timestamp;
    }
    
    mapping (address => mapping (string => item)) records;
    
    function append(string _name, bytes32 _data) payable {
        if (_data == 0) throw;
        if (records[msg.sender][_name].timestamp != 0) throw;
        records[msg.sender][_name] = item({
            data : _data,
            value : msg.value,
            timestamp : block.timestamp
        });
        Appended (msg.sender, _name, _data);
    }
    
    function get(address _address, string _name) returns (bytes32, uint, uint) {
        if (records[_address][_name].timestamp == 0) throw;
        return (records[_address][_name].data, records[_address][_name].value, records[_address][_name].timestamp);
    }
    
    function increase (string _name) payable {
        if (records[msg.sender][_name].timestamp == 0) throw;
        records[msg.sender][_name].value += msg.value;
    }
    
    function decrease (string _name, uint _value) {
        if (records[msg.sender][_name].value < _value) throw;
        records[msg.sender][_name].value -= _value;
        if (! msg.sender.send (_value)) throw;
    }
    
    event Appended (address _address, string _name, bytes32 _data);
}