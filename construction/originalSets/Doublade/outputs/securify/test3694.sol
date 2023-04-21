Processing contract: /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol:VALEO_301202
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'VALEO_301202':
    |pragma solidity 		^0.4.21	;						
    |									
  > |contract	VALEO_301202				{				
    |									
    |	mapping (address => uint256) public balanceOf;								
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'VALEO_301202':
    |contract	VALEO_301202				{				
    |									
  > |	mapping (address => uint256) public balanceOf;								
    |									
    |	string	public		name =	"	VALEO_301202		"	;
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'VALEO_301202':
    |	}								
    |									
  > |	function transfer(address to, uint256 value) public returns (bool success) {								
    |		require(balanceOf[msg.sender] >= value);							
    |									
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'VALEO_301202':
    |	event Approval(address indexed owner, address indexed spender, uint256 value);								
    |									
  > |	mapping(address => mapping(address => uint256)) public allowance;								
    |									
    |	function approve(address spender, uint256 value)								
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'VALEO_301202':
    |	mapping(address => mapping(address => uint256)) public allowance;								
    |									
  > |	function approve(address spender, uint256 value)								
    |		public							
    |		returns (bool success)							
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'VALEO_301202':
    |	}								
    |									
  > |	function transferFrom(address from, address to, uint256 value)								
    |		public							
    |		returns (bool success)							
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'VALEO_301202':
    |	mapping (address => uint256) public balanceOf;								
    |									
  > |	string	public		name =	"	VALEO_301202		"	;
    |	string	public		symbol =	"	VALEII		"	;
    |	uint8	public		decimals =		18			;
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'VALEO_301202':
    |									
    |	string	public		name =	"	VALEO_301202		"	;
  > |	string	public		symbol =	"	VALEII		"	;
    |	uint8	public		decimals =		18			;
    |									
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'VALEO_301202':
    |	string	public		name =	"	VALEO_301202		"	;
    |	string	public		symbol =	"	VALEII		"	;
  > |	uint8	public		decimals =		18			;
    |									
    |	uint256 public totalSupply =		11287331013060800000000000					;	
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'VALEO_301202':
    |	uint8	public		decimals =		18			;
    |									
  > |	uint256 public totalSupply =		11287331013060800000000000					;	
    |									
    |	event Transfer(address indexed from, address indexed to, uint256 value);								
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'VALEO_301202':
    |	event Transfer(address indexed from, address indexed to, uint256 value);								
    |									
  > |	function SimpleERC20Token() public {								
    |		balanceOf[msg.sender] = totalSupply;							
    |		emit Transfer(address(0), msg.sender, totalSupply);							
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'VALEO_301202':
    |									
    |		balanceOf[msg.sender] -= value;  // deduct from sender's balance							
  > |		balanceOf[to] += value;          // add to recipient's balance							
    |		emit Transfer(msg.sender, to, value);							
    |		return true;							
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'VALEO_301202':
    |		require(value <= allowance[from][msg.sender]);							
    |									
  > |		balanceOf[from] -= value;							
    |		balanceOf[to] += value;							
    |		allowance[from][msg.sender] -= value;							
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'VALEO_301202':
    |									
    |		balanceOf[from] -= value;							
  > |		balanceOf[to] += value;							
    |		allowance[from][msg.sender] -= value;							
    |		emit Transfer(from, to, value);							
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'VALEO_301202':
    |									
    |	function SimpleERC20Token() public {								
  > |		balanceOf[msg.sender] = totalSupply;							
    |		emit Transfer(address(0), msg.sender, totalSupply);							
    |	}								
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'VALEO_301202':
    |		require(balanceOf[msg.sender] >= value);							
    |									
  > |		balanceOf[msg.sender] -= value;  // deduct from sender's balance							
    |		balanceOf[to] += value;          // add to recipient's balance							
    |		emit Transfer(msg.sender, to, value);							
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'VALEO_301202':
    |		returns (bool success)							
    |	{								
  > |		allowance[msg.sender][spender] = value;							
    |		emit Approval(msg.sender, spender, value);							
    |		return true;							
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'VALEO_301202':
    |		balanceOf[from] -= value;							
    |		balanceOf[to] += value;							
  > |		allowance[from][msg.sender] -= value;							
    |		emit Transfer(from, to, value);							
    |		return true;							
  at /home/jiaming/mavs_srcs/contract@0xf21ed2a554d3fcc7b7c88f463b314a227caea7bf.sol(51)


