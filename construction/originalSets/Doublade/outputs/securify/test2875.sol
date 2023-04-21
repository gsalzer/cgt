Processing contract: /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol:GenexiToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |
    |/// @title ERC20 Standard Token implementation
  > |contract ERC20Token is IERC20Token {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function _transfer(address _from, address _to, uint _value) internal validAddress(_to) {
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |        _transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_value == 0 || allowed[msg.sender][_spender] == 0);
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(81)

[33mWarning[0m for LockedEther in contract 'GenexiToken':
    |
    |/// @title Genexi contract - crowdfunding code for Genexi Project
  > |contract GenexiToken is ERC20Token, Owned {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'GenexiToken':
    |
    |    function _transfer(address _from, address _to, uint _value) internal validAddress(_to) {
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'GenexiToken':
    |
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |        _transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'GenexiToken':
    |        require(_value == 0 || allowed[msg.sender][_spender] == 0);
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'GenexiToken':
    |        require(_newOwner != owner);
    |
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'GenexiToken':
    |        require(now > endOfLockProjectToken);
    |
  > |        balances[msg.sender] = balances[msg.sender].add(lock[msg.sender]);
    |
    |        lock[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'GenexiToken':
    |        balances[msg.sender] = balances[msg.sender].add(lock[msg.sender]);
    |
  > |        lock[msg.sender] = 0;
    |
    |        emit Transfer(0, msg.sender, lock[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'GenexiToken':
    |        require(transfersEnabled);
    |
  > |        transfersEnabled = false;
    |
    |        emit DisableTransfers();
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(284)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public validAddress(_newOwner) onlyOwner {
    |        require(_newOwner != owner);
    |
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_newOwner != owner);
    |
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(119)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |/// @title SafeMath
    |/// @dev Math operations with safety checks that throw on error
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xbcfdaeb22ab6e10dfb99546e6240155edc1084f7.sol(5)


