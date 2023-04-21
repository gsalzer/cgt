Processing contract: /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol:RE_Portfolio_IV_883
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'RE_Portfolio_IV_883':
    |pragma solidity 		^0.4.21	;						
    |										
  > |	contract	RE_Portfolio_IV_883				{				
    |										
    |		mapping (address => uint256) public balanceOf;								
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'RE_Portfolio_IV_883':
    |	contract	RE_Portfolio_IV_883				{				
    |										
  > |		mapping (address => uint256) public balanceOf;								
    |										
    |		string	public		name =	"	RE_Portfolio_IV_883		"	;
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'RE_Portfolio_IV_883':
    |		}								
    |										
  > |		function transfer(address to, uint256 value) public returns (bool success) {								
    |			require(balanceOf[msg.sender] >= value);							
    |										
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'RE_Portfolio_IV_883':
    |		event Approval(address indexed owner, address indexed spender, uint256 value);								
    |										
  > |		mapping(address => mapping(address => uint256)) public allowance;								
    |										
    |		function approve(address spender, uint256 value)								
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'RE_Portfolio_IV_883':
    |		mapping(address => mapping(address => uint256)) public allowance;								
    |										
  > |		function approve(address spender, uint256 value)								
    |			public							
    |			returns (bool success)							
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'RE_Portfolio_IV_883':
    |		}								
    |										
  > |		function transferFrom(address from, address to, uint256 value)								
    |			public							
    |			returns (bool success)							
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'RE_Portfolio_IV_883':
    |		mapping (address => uint256) public balanceOf;								
    |										
  > |		string	public		name =	"	RE_Portfolio_IV_883		"	;
    |		string	public		symbol =	"	RE883IV		"	;
    |		uint8	public		decimals =		18			;
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'RE_Portfolio_IV_883':
    |										
    |		string	public		name =	"	RE_Portfolio_IV_883		"	;
  > |		string	public		symbol =	"	RE883IV		"	;
    |		uint8	public		decimals =		18			;
    |										
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'RE_Portfolio_IV_883':
    |		string	public		name =	"	RE_Portfolio_IV_883		"	;
    |		string	public		symbol =	"	RE883IV		"	;
  > |		uint8	public		decimals =		18			;
    |										
    |		uint256 public totalSupply =		1286737478908320000000000000					;	
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'RE_Portfolio_IV_883':
    |		uint8	public		decimals =		18			;
    |										
  > |		uint256 public totalSupply =		1286737478908320000000000000					;	
    |										
    |		event Transfer(address indexed from, address indexed to, uint256 value);								
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'RE_Portfolio_IV_883':
    |		event Transfer(address indexed from, address indexed to, uint256 value);								
    |										
  > |		function SimpleERC20Token() public {								
    |			balanceOf[msg.sender] = totalSupply;							
    |			emit Transfer(address(0), msg.sender, totalSupply);							
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(15)

[31mViolation[0m for UnrestrictedWrite in contract 'RE_Portfolio_IV_883':
    |										
    |			balanceOf[msg.sender] -= value;  // deduct from sender's balance							
  > |			balanceOf[to] += value;          // add to recipient's balance							
    |			emit Transfer(msg.sender, to, value);							
    |			return true;							
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'RE_Portfolio_IV_883':
    |			require(value <= allowance[from][msg.sender]);							
    |										
  > |			balanceOf[from] -= value;							
    |			balanceOf[to] += value;							
    |			allowance[from][msg.sender] -= value;							
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'RE_Portfolio_IV_883':
    |										
    |			balanceOf[from] -= value;							
  > |			balanceOf[to] += value;							
    |			allowance[from][msg.sender] -= value;							
    |			emit Transfer(from, to, value);							
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'RE_Portfolio_IV_883':
    |										
    |		function SimpleERC20Token() public {								
  > |			balanceOf[msg.sender] = totalSupply;							
    |			emit Transfer(address(0), msg.sender, totalSupply);							
    |		}								
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'RE_Portfolio_IV_883':
    |			require(balanceOf[msg.sender] >= value);							
    |										
  > |			balanceOf[msg.sender] -= value;  // deduct from sender's balance							
    |			balanceOf[to] += value;          // add to recipient's balance							
    |			emit Transfer(msg.sender, to, value);							
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'RE_Portfolio_IV_883':
    |			returns (bool success)							
    |		{								
  > |			allowance[msg.sender][spender] = value;							
    |			emit Approval(msg.sender, spender, value);							
    |			return true;							
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'RE_Portfolio_IV_883':
    |			balanceOf[from] -= value;							
    |			balanceOf[to] += value;							
  > |			allowance[from][msg.sender] -= value;							
    |			emit Transfer(from, to, value);							
    |			return true;							
  at /home/jiaming/mavs_srcs/contract@0x29f5679ce0f913694fa0f0777c875294fda87ecf.sol(51)


