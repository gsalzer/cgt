Processing contract: /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol:StudentCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic, Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(75)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(75)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    | 
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(156)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |   */
    | function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return BasicToken(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |   */
    | function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return BasicToken(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    | function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(185)

[33mWarning[0m for LockedEther in contract 'StudentCoin':
    |
    | 
  > |contract StudentCoin is StandardToken {
    |
    |  string public constant name = "StudentCoin";
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(258)

[33mWarning[0m for UnhandledException in contract 'StudentCoin':
    |   */
    | function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return BasicToken(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StudentCoin':
    |   */
    | function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return BasicToken(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'StudentCoin':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StudentCoin':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StudentCoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'StudentCoin':
    |   */
    | function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x36ea8cfaca8a78cea3d49c4bb6bf77a49a34b8be.sol(185)


