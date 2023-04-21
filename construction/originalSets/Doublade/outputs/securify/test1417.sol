Processing contract: /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol:VEGIGCrypto
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol:VEGIGInterface
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * 	@dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(35)

[33mWarning[0m for DAOConstantGas in contract 'VEGIGCrypto':
    |		function () payable public {
    |			if(this.balance > 1000000000000000000){
  > |				owner.transfer(this.balance);
    |			}
    |		}
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(133)

[33mWarning[0m for LockedEther in contract 'VEGIGCrypto':
    | *
    |*/
  > |	contract VEGIGCrypto is ERC20Interface, VEGIGInterface {
    |		using SafeMath for uint256;
    |	
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(95)

[31mViolation[0m for TODAmount in contract 'VEGIGCrypto':
    |		function () payable public {
    |			if(this.balance > 1000000000000000000){
  > |				owner.transfer(this.balance);
    |			}
    |		}
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(133)

[31mViolation[0m for TODReceiver in contract 'VEGIGCrypto':
    |		function () payable public {
    |			if(this.balance > 1000000000000000000){
  > |				owner.transfer(this.balance);
    |			}
    |		}
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(133)

[33mWarning[0m for UnhandledException in contract 'VEGIGCrypto':
    |		function () payable public {
    |			if(this.balance > 1000000000000000000){
  > |				owner.transfer(this.balance);
    |			}
    |		}
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    | *
    |*/
  > |	contract VEGIGCrypto is ERC20Interface, VEGIGInterface {
    |		using SafeMath for uint256;
    |	
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    |			require(balances[_to] + _amount > balances[_to]);
    |			balances[msg.sender] -= _amount;
  > |			balances[_to] += _amount;		  
    |			Transfer(msg.sender, _to, _amount);
    |			return true;	 
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    |		   require(balances[_to] + _amount > balances[_to]);
    |		   
  > |		   balances[_from] -= _amount;
    |           allowed[_from][msg.sender] -= _amount;
    |           balances[_to] += _amount;
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    |		   balances[_from] -= _amount;
    |           allowed[_from][msg.sender] -= _amount;
  > |           balances[_to] += _amount;
    |           Transfer(_from, _to, _amount);
    |           return true;        
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    |			require(balances[msg.sender] >= _amount);
    |			require(balances[_to] + _amount > balances[_to]);
  > |			balances[msg.sender] -= _amount;
    |			balances[_to] += _amount;		  
    |			Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    |		   
    |		   balances[_from] -= _amount;
  > |           allowed[_from][msg.sender] -= _amount;
    |           balances[_to] += _amount;
    |           Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    |			require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
    |		  
  > |			allowed[msg.sender][_spender] = _amount;
    |			Approval(msg.sender, _spender, _amount);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    |			returns (bool success) {
    |			
  > |			allowed[msg.sender][_spender] += _addedValue;
    |			Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    |			
    |			if (_subtractedValue > oldValue) {
  > |				allowed[msg.sender][_spender] = 0;
    |			} else {
    |				allowed[msg.sender][_spender] -= _subtractedValue;
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    |				allowed[msg.sender][_spender] = 0;
    |			} else {
  > |				allowed[msg.sender][_spender] -= _subtractedValue;
    |			}
    |			
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    | *
    |*/
  > |	contract VEGIGCrypto is ERC20Interface, VEGIGInterface {
    |		using SafeMath for uint256;
    |	
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'VEGIGCrypto':
    |		// Transfer owner of contract to a new owner
    |		function transferOwnership(address _newOwner) public onlyOwner {
  > |			owner = _newOwner;
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5a4cdcb676d40d939d013bb50909e835b8e3cabe.sol(241)


