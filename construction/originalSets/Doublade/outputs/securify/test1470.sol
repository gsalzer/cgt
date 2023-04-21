Processing contract: /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol:ISmartToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol:SmartToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |
    |/// @title ERC20 Standard Token implementation
  > |contract ERC20Token is IERC20Token {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function transfer(address _to, uint256 _value) public validAddress(_to) returns (bool) {
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function transferFrom(address _from, address _to, uint256 _value) public validAddress(_to) returns (bool) {
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function approve(address _spender, uint256 _value) public validAddress(_spender) returns (bool) {
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(88)

[33mWarning[0m for LockedEther in contract 'ISmartToken':
    |
    |/// @title B2BX contract interface
  > |contract ISmartToken {
    |    function initialSupply() public constant returns (uint256) { initialSupply; }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'ISmartToken':
    |/// @title B2BX contract interface
    |contract ISmartToken {
  > |    function initialSupply() public constant returns (uint256) { initialSupply; }
    |
    |    function totalSoldTokens() public constant returns (uint256) { totalSoldTokens; }
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'ISmartToken':
    |    function initialSupply() public constant returns (uint256) { initialSupply; }
    |
  > |    function totalSoldTokens() public constant returns (uint256) { totalSoldTokens; }
    |    function totalProjectToken() public constant returns (uint256) { totalProjectToken; }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'ISmartToken':
    |
    |    function totalSoldTokens() public constant returns (uint256) { totalSoldTokens; }
  > |    function totalProjectToken() public constant returns (uint256) { totalProjectToken; }
    |
    |    function fundingEnabled() public constant returns (bool) { fundingEnabled; }
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'ISmartToken':
    |    function totalProjectToken() public constant returns (uint256) { totalProjectToken; }
    |
  > |    function fundingEnabled() public constant returns (bool) { fundingEnabled; }
    |    function transfersEnabled() public constant returns (bool) { transfersEnabled; }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'ISmartToken':
    |
    |    function fundingEnabled() public constant returns (bool) { fundingEnabled; }
  > |    function transfersEnabled() public constant returns (bool) { transfersEnabled; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(127)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned is IOwned {
    |    address public owner;
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned is IOwned {
  > |    address public owner;
    |    function Owned() {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        _;
    |    }
  > |    function transferOwnership(address _newOwner) validAddress(_newOwner) onlyOwner {
    |        require(_newOwner != owner);
    |        
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_newOwner != owner);
    |        
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(115)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |/// @title SafeMath
    |/// @dev Math operations with safety checks that throw on error
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(5)

[33mWarning[0m for LockedEther in contract 'SmartToken':
    |
    |/// @title B2BX contract - crowdfunding code for B2BX Project
  > |contract SmartToken is ISmartToken, ERC20Token, Owned {
    |    using SafeMath for uint256;
    | 
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |
    |    function transfer(address _to, uint256 _value) public validAddress(_to) returns (bool) {
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    function transfer(address _to, uint256 _value) public validAddress(_to) returns (bool) {
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |
    |    function transferFrom(address _from, address _to, uint256 _value) public validAddress(_to) returns (bool) {
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public validAddress(_to) returns (bool) {
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |    function approve(address _spender, uint256 _value) public validAddress(_spender) returns (bool) {
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(_newOwner != owner);
    |        
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |
    |        // Check that this lock doesn't exceed the total amount of tokens currently available for totalProjectToken.
  > |        totalLockToken = totalLockToken.add(_value);
    |        assert(totalProjectToken >= totalLockToken);
    |
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |
    |        // Assign a new lock.
  > |        allocations[_to] = allocationLock({
    |            value: _value,
    |            end: _end,
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(now >= allocations[msg.sender].end);
    |        
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].add(allocations[msg.sender].value);
    |
    |        allocations[msg.sender].locked = false;
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        balanceOf[msg.sender] = balanceOf[msg.sender].add(allocations[msg.sender].value);
    |
  > |        allocations[msg.sender].locked = false;
    |
    |        Transfer(this, msg.sender, allocations[msg.sender].value);
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        // Get total sold tokens on the fundingWallet.
    |        // totalSoldTokens is 80% of the total number of tokens.
  > |        totalSoldTokens = maxSaleToken.sub(balanceOf[fundingWallet]);
    |
    |        // totalProjectToken = totalSoldTokens * 20 / 80 (20% this is B2BX Project & 80% this is totalSoldTokens)
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        // |================80%================|====20%====|
    |        // |totalSupply=(totalSoldTokens+totalProjectToken)|
  > |        totalProjectToken = totalSoldTokens.mul(20).div(80);
    |
    |        totalSupply = totalSoldTokens.add(totalProjectToken);
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        totalProjectToken = totalSoldTokens.mul(20).div(80);
    |
  > |        totalSupply = totalSoldTokens.add(totalProjectToken);
    |
    |        // B2BX Prodject allocations tokens.
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        
    |        // Zeroing a cold wallet.
  > |        balanceOf[fundingWallet] = 0;
    |
    |        // End of crowdfunding.
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |
    |        // End of crowdfunding.
  > |        fundingEnabled = false;
    |
    |        // End of crowdfunding.
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(transfersEnabled);
    |
  > |        transfersEnabled = false;
    |
    |        DisableTransfers(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartToken':
    |        require(fundingWallets[_address]);
    |
  > |        fundingWallets[_address] = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5d51fcced3114a8bb5e90cdd0f9d682bcbcc5393.sol(326)


