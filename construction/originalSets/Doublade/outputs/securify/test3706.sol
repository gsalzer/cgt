Processing contract: /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol:SyloToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |pragma solidity ^0.4.15;
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(19)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |contract SafeMath {
    |    function safeSub(uint a, uint b) pure internal returns (uint) {
    |        sAssert(b <= a);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(25)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, SafeMath {
    |    mapping(address => uint) balances;
    |    mapping (address => mapping (address => uint)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => mapping (address => uint)) allowed;
    |
  > |    function transfer(address _to, uint _value) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
    |        var _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract SafeMath {
  > |    function safeSub(uint a, uint b) pure internal returns (uint) {
    |        sAssert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) pure internal returns (uint) {
    |        uint c = a + b;
    |        sAssert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function sAssert(bool assertion) pure internal {
    |        if (!assertion) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract ERC20 {
  > |    uint public totalSupply;
    |    function balanceOf(address who) public constant returns (uint);
    |    function allowance(address owner, address spender) public constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint _value) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        var _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function transfer(address _to, uint _value) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(82)

[33mWarning[0m for LockedEther in contract 'SyloToken':
    |}
    |
  > |contract SyloToken is Ownable, StandardToken {
    |    string public name = "Sylo";
    |    string public symbol = "SYLO";
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'SyloToken':
    |    mapping (address => mapping (address => uint)) allowed;
    |
  > |    function transfer(address _to, uint _value) public returns (bool success) {
    |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'SyloToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
    |        var _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'SyloToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'SyloToken':
    |    }
    |
  > |    function approve(address _spender, uint _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'SyloToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'SyloToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        balances[_newOwner] = safeAdd(balances[owner], balances[_newOwner]);
    |        balances[owner] = 0;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'SyloToken':
    |    }
    |
  > |    function transferAnyERC20Token(address tokenAddress, uint amount) public onlyOwner returns (bool success) {
    |        return ERC20(tokenAddress).transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'SyloToken':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SyloToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'SyloToken':
    |
    |contract SafeMath {
  > |    function safeSub(uint a, uint b) pure internal returns (uint) {
    |        sAssert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SyloToken':
    |    }
    |
  > |    function safeAdd(uint a, uint b) pure internal returns (uint) {
    |        uint c = a + b;
    |        sAssert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'SyloToken':
    |    }
    |
  > |    function sAssert(bool assertion) pure internal {
    |        if (!assertion) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'SyloToken':
    |
    |contract SyloToken is Ownable, StandardToken {
  > |    string public name = "Sylo";
    |    string public symbol = "SYLO";
    |    uint public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'SyloToken':
    |contract SyloToken is Ownable, StandardToken {
    |    string public name = "Sylo";
  > |    string public symbol = "SYLO";
    |    uint public decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'SyloToken':
    |    string public name = "Sylo";
    |    string public symbol = "SYLO";
  > |    uint public decimals = 18;
    |
    |    uint public totalSupply = 10000000000 ether;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'SyloToken':
    |    uint public decimals = 18;
    |
  > |    uint public totalSupply = 10000000000 ether;
    |
    |    function SyloToken() {
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(97)

[33mWarning[0m for UnhandledException in contract 'SyloToken':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint amount) public onlyOwner returns (bool success) {
  > |        return ERC20(tokenAddress).transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(113)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SyloToken':
    |
    |    function transferAnyERC20Token(address tokenAddress, uint amount) public onlyOwner returns (bool success) {
  > |        return ERC20(tokenAddress).transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'SyloToken':
    |        var _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'SyloToken':
    |
    |        balances[_to] = safeAdd(balances[_to], _value);
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'SyloToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        balances[_newOwner] = safeAdd(balances[owner], balances[_newOwner]);
    |        balances[owner] = 0;
    |        Ownable.transferOwnership(_newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'SyloToken':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        balances[_newOwner] = safeAdd(balances[owner], balances[_newOwner]);
  > |        balances[owner] = 0;
    |        Ownable.transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'SyloToken':
    |
    |    function transfer(address _to, uint _value) public returns (bool success) {
  > |        balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'SyloToken':
    |        balances[_to] = safeAdd(balances[_to], _value);
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'SyloToken':
    |
    |    function approve(address _spender, uint _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'SyloToken':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf293d23bf2cdc05411ca0eddd588eb1977e8dcd4.sol(19)


