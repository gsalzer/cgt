pragma solidity ^0.4.8;

contract FUTTokenEvents {
    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
}

contract FUTToken is FUTTokenEvents
{
    string      public  constant  name = 'FUT Token';
    string      public  constant  symbol = 'FUT';
    uint8       public  constant  decimals = 18;  // 18 decimal places, the same as ETH.

    mapping(address => uint) _balances;
    mapping(address => mapping(address => uint)) _approvals;
    uint _supply;

    function FUTToken(uint initial_balance) {
        _balances[msg.sender] = initial_balance;
        _supply = initial_balance;
    }

    function totalSupply() constant returns (uint supply) {
        return _supply;
    }

    function balanceOf(address who) constant returns (uint value) {
        return _balances[who];
    }

    function transfer(address to, uint value) returns (bool ok) {
        if (_balances[msg.sender] < value) {
            throw;
        }
        if (!safeToAdd(_balances[to], value) ) {
            throw;
        }
        _balances[msg.sender] -= value;
        _balances[to] += value;
        Transfer(msg.sender, to, value);
        return true;
    }

    function transferFrom(address from, address to, uint value) returns (bool ok) {
        // if you don't have enough balance, throw
        if (_balances[from] < value) {
            throw;
        }
        // if you don't have approval, throw
        if (_approvals[from][msg.sender] < value) {
            throw;
        }
        if (!safeToAdd(_balances[to], value)) {
            throw;
        }
        // transfer and return true
        _approvals[from][msg.sender] -= value;
        _balances[from] -= value;
        _balances[to] += value;
        Transfer(from, to, value);
        return true;
    }

    function approve(address spender, uint value) returns (bool ok) {
        _approvals[msg.sender][spender] = value;
        Approval(msg.sender, spender, value);
        return true;
    }

    function allowance(address owner, address spender) constant returns (uint _allowance) {
        return _approvals[owner][spender];
    }
    
    function safeToAdd(uint a, uint b) internal returns (bool) {
        return (a + b >= a);
    }
}