Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol:BaseERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol:BaseSafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol:LightCoinToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BaseSafeMath':
    | */
    |
  > |contract BaseSafeMath {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(9)

[33mWarning[0m for LockedEther in contract 'LightCoinToken':
    | */
    |
  > |contract LightCoinToken is BaseERC20, BaseSafeMath {
    |
    |    //The solidity created time
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(318)

[31mViolation[0m for MissingInputValidation in contract 'LightCoinToken':
    |
    |    // This creates an array with all balances
  > |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(259)

[31mViolation[0m for MissingInputValidation in contract 'LightCoinToken':
    |    // This creates an array with all balances
    |    mapping(address => uint256) public balanceOf;
  > |    mapping(address => mapping(address => uint256)) public allowed;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(260)

[31mViolation[0m for MissingInputValidation in contract 'LightCoinToken':
    |	/// @param _owner The address from which the balance will be retrieved
    |    /// @return The balance
  > |    function getBalanceOf(address _owner) public constant returns (uint256 balance) {
    |		 return balanceOf[_owner];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(340)

[31mViolation[0m for MissingInputValidation in contract 'LightCoinToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        // Check allowance
    |        allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(368)

[31mViolation[0m for MissingInputValidation in contract 'LightCoinToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |    returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(376)

[31mViolation[0m for MissingInputValidation in contract 'LightCoinToken':
    |    /// @param _spender The address of the account able to transfer the tokens
    |    /// @return Amount of remaining tokens allowed to spent
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |	}
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(387)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |
    |
  > |    function add(uint256 a, uint256 b) internal 
    |
    |    returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |
    |
  > |    function sub(uint256 a, uint256 b) internal 
    |
    |    returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(252)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(253)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |    uint8 public decimals;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(256)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |
    |    //The solidity created time
  > |	address public owner;
    |	address public lockOwner;
    |	uint256 public lockAmount ;
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |    //The solidity created time
    |	address public owner;
  > |	address public lockOwner;
    |	uint256 public lockAmount ;
    |	uint256 public startTime ;
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(322)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |	address public owner;
    |	address public lockOwner;
  > |	uint256 public lockAmount ;
    |	uint256 public startTime ;
    |    function LightCoinToken() public {
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(323)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |	address public lockOwner;
    |	uint256 public lockAmount ;
  > |	uint256 public startTime ;
    |    function LightCoinToken() public {
    |		owner = 0x9a64fE62837d8E2C0Bd0C2a96bbDdEA609Ab2F19;
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(324)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |	}
    |	
  > |    function _transfer(address _from, address _to, uint256 _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(344)

[33mWarning[0m for MissingInputValidation in contract 'LightCoinToken':
    |	}
    |	
  > |	function releaseToken() public{
    |	   require(now >= startTime + 2 * 365 * 86400 );	   
    |       uint256 i = ((now  - startTime - 2 * 365 * 86400) / (0.5 * 365 * 86400));
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(391)

[31mViolation[0m for UnrestrictedWrite in contract 'LightCoinToken':
    |		
    |        // Subtract from the sender
  > |        balanceOf[_from] = sub(balanceOf[_from], _value);
    |        // Add the same to the recipient
    |        balanceOf[_to] = add(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(352)

[31mViolation[0m for UnrestrictedWrite in contract 'LightCoinToken':
    |        balanceOf[_from] = sub(balanceOf[_from], _value);
    |        // Add the same to the recipient
  > |        balanceOf[_to] = add(balanceOf[_to], _value);
    |		
    |		// Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(354)

[31mViolation[0m for UnrestrictedWrite in contract 'LightCoinToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        // Check allowance
  > |        allowed[_from][msg.sender] = sub(allowed[_from][msg.sender], _value);
    |		
    |        _transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(370)

[31mViolation[0m for UnrestrictedWrite in contract 'LightCoinToken':
    |	   uint256  releasevalue = totalSupply /40 ;
    |	   require(lockAmount > (4 - i - 1) * releasevalue); 	   
  > |	   lockAmount -= releasevalue ;
    |	   balanceOf[lockOwner] +=  releasevalue ;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(396)

[31mViolation[0m for UnrestrictedWrite in contract 'LightCoinToken':
    |	   require(lockAmount > (4 - i - 1) * releasevalue); 	   
    |	   lockAmount -= releasevalue ;
  > |	   balanceOf[lockOwner] +=  releasevalue ;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'LightCoinToken':
    |    function approve(address _spender, uint256 _value) public
    |    returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |		
    |	    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xdf2bb5fa44b1a021385c0f2d1f613f340127405a.sol(378)


