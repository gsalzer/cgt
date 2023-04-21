Processing contract: /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol:Briant2Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol:MyAdvancedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol:newToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Briant2Token':
    |}
    |
  > | contract Briant2Token is StandardToken, Ownable {
    |  string public constant name = "Briant New Coin 2";
    |  string public constant symbol = "BRI2";
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Briant2Token':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Briant2Token':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Briant2Token':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Briant2Token':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(112)

[33mWarning[0m for LockedEther in contract 'MyAdvancedToken':
    |}
    |
  > |contract MyAdvancedToken is Ownable, Briant2Token {
    |
    |    /* Initializes contract with initial supply tokens to the creator of the contract */
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |
    |   function transfer(address _to, uint _value) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |  
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(147)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    function Ownable() {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(54)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is newToken, ERC20 {
    |  mapping (address => mapping (address => uint)) allowed;
    |  function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3 * 32) {
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(112)

[33mWarning[0m for LockedEther in contract 'newToken':
    |}
    |
  > |contract newToken is ERC20Basic {
    |  
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'newToken':
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'newToken':
    |  }
    |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd6cab260d719b1691982f7620acf0ca0708cb2fc.sol(86)


