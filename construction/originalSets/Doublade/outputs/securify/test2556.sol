Processing contract: /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol:LAA_INTL_HOLD_301201
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'LAA_INTL_HOLD_301201':
    |pragma solidity 		^0.4.21	;						
    |									
  > |contract	LAA_INTL_HOLD_301201				{				
    |									
    |	mapping (address => uint256) public balanceOf;								
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'LAA_INTL_HOLD_301201':
    |contract	LAA_INTL_HOLD_301201				{				
    |									
  > |	mapping (address => uint256) public balanceOf;								
    |									
    |	string	public		name =	"	LAA_INTL_HOLD_301201		"	;
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'LAA_INTL_HOLD_301201':
    |	}								
    |									
  > |	function transfer(address to, uint256 value) public returns (bool success) {								
    |		require(balanceOf[msg.sender] >= value);							
    |									
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'LAA_INTL_HOLD_301201':
    |	event Approval(address indexed owner, address indexed spender, uint256 value);								
    |									
  > |	mapping(address => mapping(address => uint256)) public allowance;								
    |									
    |	function approve(address spender, uint256 value)								
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'LAA_INTL_HOLD_301201':
    |	mapping(address => mapping(address => uint256)) public allowance;								
    |									
  > |	function approve(address spender, uint256 value)								
    |		public							
    |		returns (bool success)							
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'LAA_INTL_HOLD_301201':
    |	}								
    |									
  > |	function transferFrom(address from, address to, uint256 value)								
    |		public							
    |		returns (bool success)							
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'LAA_INTL_HOLD_301201':
    |	mapping (address => uint256) public balanceOf;								
    |									
  > |	string	public		name =	"	LAA_INTL_HOLD_301201		"	;
    |	string	public		symbol =	"	LAIHI		"	;
    |	uint8	public		decimals =		18			;
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'LAA_INTL_HOLD_301201':
    |									
    |	string	public		name =	"	LAA_INTL_HOLD_301201		"	;
  > |	string	public		symbol =	"	LAIHI		"	;
    |	uint8	public		decimals =		18			;
    |									
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'LAA_INTL_HOLD_301201':
    |	string	public		name =	"	LAA_INTL_HOLD_301201		"	;
    |	string	public		symbol =	"	LAIHI		"	;
  > |	uint8	public		decimals =		18			;
    |									
    |	uint256 public totalSupply =		29469576425887700000000000					;	
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'LAA_INTL_HOLD_301201':
    |	uint8	public		decimals =		18			;
    |									
  > |	uint256 public totalSupply =		29469576425887700000000000					;	
    |									
    |	event Transfer(address indexed from, address indexed to, uint256 value);								
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'LAA_INTL_HOLD_301201':
    |	event Transfer(address indexed from, address indexed to, uint256 value);								
    |									
  > |	function SimpleERC20Token() public {								
    |		balanceOf[msg.sender] = totalSupply;							
    |		emit Transfer(address(0), msg.sender, totalSupply);							
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'LAA_INTL_HOLD_301201':
    |									
    |		balanceOf[msg.sender] -= value;  // deduct from sender's balance							
  > |		balanceOf[to] += value;          // add to recipient's balance							
    |		emit Transfer(msg.sender, to, value);							
    |		return true;							
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'LAA_INTL_HOLD_301201':
    |		require(value <= allowance[from][msg.sender]);							
    |									
  > |		balanceOf[from] -= value;							
    |		balanceOf[to] += value;							
    |		allowance[from][msg.sender] -= value;							
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'LAA_INTL_HOLD_301201':
    |									
    |		balanceOf[from] -= value;							
  > |		balanceOf[to] += value;							
    |		allowance[from][msg.sender] -= value;							
    |		emit Transfer(from, to, value);							
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'LAA_INTL_HOLD_301201':
    |									
    |	function SimpleERC20Token() public {								
  > |		balanceOf[msg.sender] = totalSupply;							
    |		emit Transfer(address(0), msg.sender, totalSupply);							
    |	}								
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'LAA_INTL_HOLD_301201':
    |		require(balanceOf[msg.sender] >= value);							
    |									
  > |		balanceOf[msg.sender] -= value;  // deduct from sender's balance							
    |		balanceOf[to] += value;          // add to recipient's balance							
    |		emit Transfer(msg.sender, to, value);							
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'LAA_INTL_HOLD_301201':
    |		returns (bool success)							
    |	{								
  > |		allowance[msg.sender][spender] = value;							
    |		emit Approval(msg.sender, spender, value);							
    |		return true;							
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'LAA_INTL_HOLD_301201':
    |		balanceOf[from] -= value;							
    |		balanceOf[to] += value;							
  > |		allowance[from][msg.sender] -= value;							
    |		emit Transfer(from, to, value);							
    |		return true;							
  at /home/jiaming/mavs_srcs/contract@0xa75a044b2645ffa8a565be2a0d3584062db73ddd.sol(51)


