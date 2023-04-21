Processing contract: /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol:MBS_Portfolio
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'MBS_Portfolio':
    |											
    |											
  > |	contract	MBS_Portfolio				is	Ownable	{			
    |											
    |		string	public	constant	name =	"	MBS_Portfolio		"	;	
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'MBS_Portfolio':
    |											
    |											
  > |	contract	MBS_Portfolio				is	Ownable	{			
    |											
    |		string	public	constant	name =	"	MBS_Portfolio		"	;	
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'MBS_Portfolio':
    |		function transfer(address _to, uint _value) returns (bool success) {									
    |			if(balances[msg.sender] >= _value && balances[_to] + _value >= balances[_to]) {								
  > |				balances[msg.sender] -= _value; 							
    |				balances[_to] += _value;							
    |				return true;							
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'MBS_Portfolio':
    |				balances[_from] >= _value 							
    |				&& balances[_to] + _value >= balances[_to]) {							
  > |				allowed[_from][msg.sender] -= _value;							
    |				balances[_from] -= _value;							
    |				balances[_to] += _value;							
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'MBS_Portfolio':
    |											
    |		function approve(address _spender, uint _value) returns (bool success) {									
  > |			allowed[msg.sender][_spender] = _value;								
    |			Approval(msg.sender, _spender, _value);								
    |			return true;								
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'MBS_Portfolio':
    |											
    |		function 	transfertOwnership		(address	newOwner	)	onlyOwner	{		
  > |			owner	=	newOwner	;					
    |		}									
    |	}										
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'MBS_Portfolio':
    |											
    |											
  > |	contract	MBS_Portfolio				is	Ownable	{			
    |											
    |		string	public	constant	name =	"	MBS_Portfolio		"	;	
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'MBS_Portfolio':
    |		function mint(address _to, uint _value) onlyOwner {									
    |			assert(totalSupply + _value >= totalSupply && balances[_to] + _value >= balances[_to]);								
  > |			balances[_to] += _value;								
    |			totalSupply += _value;								
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'MBS_Portfolio':
    |			assert(totalSupply + _value >= totalSupply && balances[_to] + _value >= balances[_to]);								
    |			balances[_to] += _value;								
  > |			totalSupply += _value;								
    |		}									
    |											
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(35)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity 		^0.4.8	;							
    |											
  > |	contract	Ownable		{							
    |		address	owner	;							
    |											
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |		}									
    |											
  > |		function 	transfertOwnership		(address	newOwner	)	onlyOwner	{		
    |			owner	=	newOwner	;					
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |											
    |		function 	transfertOwnership		(address	newOwner	)	onlyOwner	{		
  > |			owner	=	newOwner	;					
    |		}									
    |	}										
  at /home/jiaming/mavs_srcs/contract@0x4f0cd65448e587bfcdc729da11dfd4ac45c9a8af.sol(16)


