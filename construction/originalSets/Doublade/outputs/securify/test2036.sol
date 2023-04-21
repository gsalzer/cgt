Processing contract: /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol:GESToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol:StandardToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'GESToken':
    |   function getEth(uint256 _value) returns (bool success){
    |        if (msg.sender != creator) throw;
  > |        return (!creator.send(_value * val3));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(122)

[33mWarning[0m for DAOConstantGas in contract 'GESToken':
    |
    |    function createTokens() payable {
  > |        if(!creator.send(msg.value)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(186)

[33mWarning[0m for LockedEther in contract 'GESToken':
    |}
    |
  > |contract GESToken is StandardToken {
    |
    |	event LockFunds(address target, uint256 lockenddate);
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(86)

[33mWarning[0m for TODAmount in contract 'GESToken':
    |   function getEth(uint256 _value) returns (bool success){
    |        if (msg.sender != creator) throw;
  > |        return (!creator.send(_value * val3));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(122)

[31mViolation[0m for TODReceiver in contract 'GESToken':
    |   function getEth(uint256 _value) returns (bool success){
    |        if (msg.sender != creator) throw;
  > |        return (!creator.send(_value * val3));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(122)

[31mViolation[0m for TODReceiver in contract 'GESToken':
    |
    |    function createTokens() payable {
  > |        if(!creator.send(msg.value)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(186)

[31mViolation[0m for UnhandledException in contract 'GESToken':
    |   function getEth(uint256 _value) returns (bool success){
    |        if (msg.sender != creator) throw;
  > |        return (!creator.send(_value * val3));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(122)

[33mWarning[0m for UnhandledException in contract 'GESToken':
    |
    |    function createTokens() payable {
  > |        if(!creator.send(msg.value)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(186)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GESToken':
    |   function getEth(uint256 _value) returns (bool success){
    |        if (msg.sender != creator) throw;
  > |        return (!creator.send(_value * val3));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'GESToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'GESToken':
    |            return false;
    |        }
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'GESToken':
    |        }
    |        
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'GESToken':
    |     function StopToken()  {
    |		if (msg.sender != creator) throw;
  > |			stopToken = 1;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'GESToken':
    |     function OpenToken()  {
    |		if (msg.sender != creator) throw;
  > |			stopToken = 0;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'GESToken':
    |     function StopTransferToken()  {
    |		if (msg.sender != creator) throw;
  > |			stopTransferToken = 1;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'GESToken':
    |     function OpenTransferToken()  {
    |		if (msg.sender != creator) throw;
  > |			stopTransferToken = 0;
    |     }
    |
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'GESToken':
    |     function setLockAccount(address target, uint256 lockenddate)  {
    |		if (msg.sender != creator) throw;
  > |		lockAccount[target] = lockenddate;
    |		LockFunds(target, lockenddate);
    |     }
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'GESToken':
    |    function transferOwnershipSend(address newOwner) {
    |         if (msg.sender != creator) throw;
  > |             creator_new = newOwner;
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'GESToken':
    |	function transferOwnershipReceive() {
    |         if (msg.sender != creator_new) throw;
  > |             creator = creator_new;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84d4816ffb1ae1728b378078a955209a29c08112.sol(147)


