Processing contract: /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol:WEETtoken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |
    |// ERC20Token
  > |contract ERC20Token is ERC20 {
    |    using SafeMath for uint256;
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |            balances[_from] = balances[_from].sub(_value);
    |            balances[_to] = balances[_to].add(_value);
  > |            allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(99)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |    modifier onlyOwner {require(msg.sender == owner); _;}
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |    modifier onlyOwner {require(msg.sender == owner); _;}
    |    event OwnershipTransferred(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) onlyOwner public {
    |        require(_newOwner != address(0));
    |        OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_newOwner != address(0));
    |        OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(55)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(3)

[33mWarning[0m for LockedEther in contract 'WEETtoken':
    |}
    |
  > |contract WEETtoken is ERC20Token, Owned {
    |
    |    string  public constant name = "Weet Token";
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'WEETtoken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |            balances[_to] = balances[_to].add(_value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'WEETtoken':
    |            balances[_from] = balances[_from].sub(_value);
    |            balances[_to] = balances[_to].add(_value);
  > |            allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'WEETtoken':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'WEETtoken':
    |    function burn (uint256 _burntAmount) public returns (bool success) {
    |        require(balances[msg.sender] >= _burntAmount && _burntAmount > 0);
  > |        balances[msg.sender] = balances[msg.sender].sub(_burntAmount);
    |        totalToken = totalToken.sub(_burntAmount);
    |        tokenDestroyed = tokenDestroyed.add(_burntAmount);
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'WEETtoken':
    |        require(_newOwner != address(0));
    |        OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x72e22674eedb143b2bfeddf76fb96313fbba6f46.sol(55)


