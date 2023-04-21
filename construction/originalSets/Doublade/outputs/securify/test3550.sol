Processing contract: /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol:XZEN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(82)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    | 
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(12)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token, Ownable {
    |    using SafeMath for uint256;
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(82)

[33mWarning[0m for DAOConstantGas in contract 'XZEN':
    |        
    |        // send eth to multiSigWallet
  > |        multiSigWallet.transfer(msg.value);
    |        Transfer(teamWallet, msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(226)

[33mWarning[0m for DAOConstantGas in contract 'XZEN':
    |
    |    function withdraw() external onlyOwner {
  > |        multiSigWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(231)

[33mWarning[0m for LockedEther in contract 'XZEN':
    |}
    |
  > |contract XZEN is StandardToken {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(188)

[31mViolation[0m for TODAmount in contract 'XZEN':
    |
    |    function withdraw() external onlyOwner {
  > |        multiSigWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(231)

[31mViolation[0m for TODReceiver in contract 'XZEN':
    |        
    |        // send eth to multiSigWallet
  > |        multiSigWallet.transfer(msg.value);
    |        Transfer(teamWallet, msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(226)

[31mViolation[0m for TODReceiver in contract 'XZEN':
    |
    |    function withdraw() external onlyOwner {
  > |        multiSigWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(231)

[33mWarning[0m for UnhandledException in contract 'XZEN':
    |        
    |        // send eth to multiSigWallet
  > |        multiSigWallet.transfer(msg.value);
    |        Transfer(teamWallet, msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(226)

[33mWarning[0m for UnhandledException in contract 'XZEN':
    |
    |    function withdraw() external onlyOwner {
  > |        multiSigWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XZEN':
    |
    |    function withdraw() external onlyOwner {
  > |        multiSigWallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'XZEN':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'XZEN':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'XZEN':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'XZEN':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'XZEN':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'XZEN':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'XZEN':
    |        if (balances[teamWallet] < tokens) revert();
    |        balances[teamWallet] -= tokens;        
  > |        balances[msg.sender] += tokens;
    |        
    |        // send eth to multiSigWallet
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'XZEN':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'XZEN':
    |
    |    function setEthPrice(uint _tokenPrice) external onlyOwner {
  > |        oneTokenInWei = _tokenPrice;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'XZEN':
    |    
    |    function replaceMultisig(address newMultisig) external onlyOwner {
  > |        multiSigWallet = newMultisig;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe8aa056415e56280666aa77e313564ab2e99d79c.sol(239)


