Processing contract: /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol:MidnightCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'MidnightCoin':
    |     function withdraw() public onlyOwner {
    |        require( _totalSupply == 0 );
  > |        owner.transfer(this.balance);
    |     }
    |  
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(146)

[33mWarning[0m for DAOConstantGas in contract 'MidnightCoin':
    |        balances[msg.sender] -= _amount;
    |        _totalSupply += _amount;
  > |        msg.sender.transfer(_amount);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(162)

[33mWarning[0m for LockedEther in contract 'MidnightCoin':
    |}
    |  
  > | contract MidnightCoin is ERC20, Owned {
    |     string public constant symbol = "MNC";
    |     string public constant name = "Midnight Coin";
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(55)

[31mViolation[0m for TODAmount in contract 'MidnightCoin':
    |     function withdraw() public onlyOwner {
    |        require( _totalSupply == 0 );
  > |        owner.transfer(this.balance);
    |     }
    |  
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(146)

[33mWarning[0m for TODAmount in contract 'MidnightCoin':
    |        balances[msg.sender] -= _amount;
    |        _totalSupply += _amount;
  > |        msg.sender.transfer(_amount);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(162)

[31mViolation[0m for TODReceiver in contract 'MidnightCoin':
    |     function withdraw() public onlyOwner {
    |        require( _totalSupply == 0 );
  > |        owner.transfer(this.balance);
    |     }
    |  
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(146)

[33mWarning[0m for TODReceiver in contract 'MidnightCoin':
    |        balances[msg.sender] -= _amount;
    |        _totalSupply += _amount;
  > |        msg.sender.transfer(_amount);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(162)

[33mWarning[0m for UnhandledException in contract 'MidnightCoin':
    |     function withdraw() public onlyOwner {
    |        require( _totalSupply == 0 );
  > |        owner.transfer(this.balance);
    |     }
    |  
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(146)

[33mWarning[0m for UnhandledException in contract 'MidnightCoin':
    |        balances[msg.sender] -= _amount;
    |        _totalSupply += _amount;
  > |        msg.sender.transfer(_amount);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(162)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'MidnightCoin':
    |        balances[msg.sender] -= _amount;
    |        _totalSupply += _amount;
  > |        msg.sender.transfer(_amount);
    |     }
    |     
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MidnightCoin':
    |     function withdraw() public onlyOwner {
    |        require( _totalSupply == 0 );
  > |        owner.transfer(this.balance);
    |     }
    |  
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'MidnightCoin':
    |}
    |  
  > | contract MidnightCoin is ERC20, Owned {
    |     string public constant symbol = "MNC";
    |     string public constant name = "Midnight Coin";
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'MidnightCoin':
    |        require( _totalSupply >= msg.value);
    |        balances[msg.sender] += msg.value;
  > |        _totalSupply -= msg.value;
    |        lastLoveLetter = _loveletter;
    |     }
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'MidnightCoin':
    |        require( balances[msg.sender] >= _amount);
    |        balances[msg.sender] -= _amount;
  > |        _totalSupply += _amount;
    |        msg.sender.transfer(_amount);
    |     }
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'MidnightCoin':
    |             && _amount > 0
    |             && balances[_to] + _amount > balances[_to]) {
  > |             balances[msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'MidnightCoin':
    |             && balances[_to] + _amount > balances[_to]) {
    |             balances[_from] -= _amount;
  > |             allowed[_from][msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'MidnightCoin':
    |     // If this function is called again it overwrites the current allowance with _value.
    |     function approve(address _spender, uint256 _amount) returns (bool success) {
  > |         allowed[msg.sender][_spender] = _amount;
    |         Approval(msg.sender, _spender, _amount);
    |         return true;
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'MidnightCoin':
    |        require (now > crowdSaleStartTimestamp);
    |        require( _totalSupply >= msg.value);
  > |        balances[msg.sender] += msg.value;
    |        _totalSupply -= msg.value;
    |        lastLoveLetter = _loveletter;
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'MidnightCoin':
    |        require (now > crowdSaleStartTimestamp + FREEZE_PERIOD);
    |        require( balances[msg.sender] >= _amount);
  > |        balances[msg.sender] -= _amount;
    |        _totalSupply += _amount;
    |        msg.sender.transfer(_amount);
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'MidnightCoin':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(51)

[33mWarning[0m for LockedEther in contract 'Owned':
    | }
    |  
  > | contract Owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |  
    | contract Owned {
  > |    address public owner;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x43d702ee5e08465522e93ae2dd39077aefd42702.sol(51)


