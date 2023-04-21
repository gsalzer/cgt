Processing contract: /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol:PotaToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'PotaToken':
    |	function withdraw() {
    |		require ( msg.sender == owner );
  > |		msg.sender.transfer(this.balance);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(131)

[33mWarning[0m for LockedEther in contract 'PotaToken':
    |  }
    |   
  > | contract PotaToken is ERC20Interface {
    |      string public constant symbol = "POTATO";
    |      string public constant name = "PotaToken";
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'PotaToken':
    |   
    |      // What is the balance of a particular account?
  > |      function balanceOf(address _owner) constant returns (uint256 balance) {
    |          return balances[_owner];
    |      }
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'PotaToken':
    |     // deliberately authorized the sender of the message via some mechanism; we propose
    |     // these standardized APIs for approval:
  > |     function transferFrom(
    |         address _from,
    |         address _to,
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'PotaToken':
    |     // Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |     // If this function is called again it overwrites the current allowance with _value.
  > |    function approve(address _spender, uint256 _amount) returns (bool success) {
    |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'PotaToken':
    |    }
    |  
  > |     function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |         return allowed[_owner][_spender];
    |     }
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'PotaToken':
    |   
    | contract PotaToken is ERC20Interface {
  > |      string public constant symbol = "POTATO";
    |      string public constant name = "PotaToken";
    |      uint8 public constant decimals = 6;
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'PotaToken':
    | contract PotaToken is ERC20Interface {
    |      string public constant symbol = "POTATO";
  > |      string public constant name = "PotaToken";
    |      uint8 public constant decimals = 6;
    |      uint256 _totalSupply = 1;
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'PotaToken':
    |      string public constant symbol = "POTATO";
    |      string public constant name = "PotaToken";
  > |      uint8 public constant decimals = 6;
    |      uint256 _totalSupply = 1;
    |	  uint256 deadline;
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'PotaToken':
    |      
    |      // Owner of this contract
  > |      address public owner;
    |   
    |      // Balances for each account
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'PotaToken':
    |      }
    |   
  > |      function totalSupply() constant returns (uint256) {
    |          return _totalSupply;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'PotaToken':
    |     }
    |
  > |	function withdraw() {
    |		require ( msg.sender == owner );
    |		msg.sender.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'PotaToken':
    |	}
    |	
  > |	function disable() {
    |		require (msg.sender == owner );
    |		deadline = now;
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'PotaToken':
    |	}
    |	
  > |	function enable() {
    |		require (msg.sender == owner);
    |		deadline = now + 7 * 1 days;
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(139)

[31mViolation[0m for TODAmount in contract 'PotaToken':
    |	function withdraw() {
    |		require ( msg.sender == owner );
  > |		msg.sender.transfer(this.balance);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(131)

[33mWarning[0m for TODReceiver in contract 'PotaToken':
    |	function withdraw() {
    |		require ( msg.sender == owner );
  > |		msg.sender.transfer(this.balance);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(131)

[33mWarning[0m for UnhandledException in contract 'PotaToken':
    |	function withdraw() {
    |		require ( msg.sender == owner );
  > |		msg.sender.transfer(this.balance);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PotaToken':
    |	function withdraw() {
    |		require ( msg.sender == owner );
  > |		msg.sender.transfer(this.balance);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'PotaToken':
    |              && _amount > 0
    |              && balances[_to] + _amount > balances[_to]) {
  > |             balances[msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'PotaToken':
    |             && balances[_to] + _amount > balances[_to]) {
    |             balances[_from] -= _amount;
  > |             allowed[_from][msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'PotaToken':
    |     // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _amount) returns (bool success) {
  > |         allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |         return true;
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'PotaToken':
    |	function disable() {
    |		require (msg.sender == owner );
  > |		deadline = now;
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'PotaToken':
    |	function enable() {
    |		require (msg.sender == owner);
  > |		deadline = now + 7 * 1 days;
    |	}
    |	 
  at /home/jiaming/mavs_srcs/contract@0x70135f213345cd39370c767150dab36b4a385f12.sol(141)


