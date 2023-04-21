Processing contract: /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol:ERC23BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol:ERC23StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol:RichClassic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC23BasicToken':
    |//Basic ERC23 token, backward compatible with ERC20 transfer function.
    |//Based in part on code by open-zeppelin: https://github.com/OpenZeppelin/zeppelin-solidity.git
  > |contract ERC23BasicToken {
    |    using SafeMath for uint256;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(61)

[33mWarning[0m for UnhandledException in contract 'ERC23BasicToken':
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC23BasicToken':
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC23BasicToken':
    |
    |    function transferToAddress(address _to, uint256 _value, bytes _data) internal {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC23BasicToken':
    |
    |    function transferToContract(address _to, uint256 _value, bytes _data) internal {
  > |        balances[msg.sender] = balances[msg.sender].sub( _value);
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(107)

[33mWarning[0m for LockedEther in contract 'ERC23StandardToken':
    | // Standard ERC23 token, backward compatible with ERC20 standards.
    | // Based on code by open-zeppelin: https://github.com/OpenZeppelin/zeppelin-solidity.git
  > |contract ERC23StandardToken is ERC23BasicToken {
    |    mapping (address => mapping (address => uint256)) allowed;
    |    event Approval (address indexed owner, address indexed spender, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(138)

[33mWarning[0m for UnhandledException in contract 'ERC23StandardToken':
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC23StandardToken':
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC23StandardToken':
    |
    |    function transferToAddress(address _to, uint256 _value, bytes _data) internal {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC23StandardToken':
    |
    |    function transferToContract(address _to, uint256 _value, bytes _data) internal {
  > |        balances[msg.sender] = balances[msg.sender].sub( _value);
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC23StandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC23StandardToken':
    |        if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(162)

[31mViolation[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is ERC23StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(210)

[33mWarning[0m for UnhandledException in contract 'MintableToken':
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintableToken':
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function transferToAddress(address _to, uint256 _value, bytes _data) internal {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function transferToAddress(address _to, uint256 _value, bytes _data) internal {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function transferToContract(address _to, uint256 _value, bytes _data) internal {
  > |        balances[msg.sender] = balances[msg.sender].sub( _value);
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function transferToContract(address _to, uint256 _value, bytes _data) internal {
    |        balances[msg.sender] = balances[msg.sender].sub( _value);
  > |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        // if (_value > _allowance) throw;
    |
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(236)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(200)

[31mViolation[0m for LockedEther in contract 'RichClassic':
    |}
    |
  > |contract RichClassic is MintableToken { 
    |  string public name="RichClassic";
    |  string public symbol="RRGC";
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(242)

[33mWarning[0m for UnhandledException in contract 'RichClassic':
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RichClassic':
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |
    |    function transferToAddress(address _to, uint256 _value, bytes _data) internal {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |    function transferToAddress(address _to, uint256 _value, bytes _data) internal {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |
    |    function transferToContract(address _to, uint256 _value, bytes _data) internal {
  > |        balances[msg.sender] = balances[msg.sender].sub( _value);
    |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |    function transferToContract(address _to, uint256 _value, bytes _data) internal {
    |        balances[msg.sender] = balances[msg.sender].sub( _value);
  > |        balances[_to] = balances[_to].add( _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |        // if (_value > _allowance) throw;
    |
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |        if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'RichClassic':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(236)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * By OpenZeppelin: https://github.com/OpenZeppelin/zeppelin-solidity/contracts/SafeMath.sol
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x049bc2b116d0b2869ee5be4ff98c1b5e0860fd55.sol(9)


