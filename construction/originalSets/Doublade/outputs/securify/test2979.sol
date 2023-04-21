Processing contract: /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol:DappToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DappToken':
    |pragma solidity ^0.4.19;
    |
  > |contract DappToken {
    |    string  public name = "Korean Unified Currency";
    |    string  public symbol = "XWON";
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'DappToken':
    |    );
    |
  > |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'DappToken':
    |
    |    mapping(address => uint256) public balanceOf;
  > |    mapping(address => mapping(address => uint256)) public allowance;
    |
    |    function DappToken (uint256 _initialSupply) public {
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'DappToken':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'DappToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'DappToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= balanceOf[_from]);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |
    |contract DappToken {
  > |    string  public name = "Korean Unified Currency";
    |    string  public symbol = "XWON";
    |    string  public standard = "XWON Token v1.0";
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |contract DappToken {
    |    string  public name = "Korean Unified Currency";
  > |    string  public symbol = "XWON";
    |    string  public standard = "XWON Token v1.0";
    |    uint8 public constant decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    string  public name = "Korean Unified Currency";
    |    string  public symbol = "XWON";
  > |    string  public standard = "XWON Token v1.0";
    |    uint8 public constant decimals = 0;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    string  public symbol = "XWON";
    |    string  public standard = "XWON Token v1.0";
  > |    uint8 public constant decimals = 0;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'DappToken':
    |    string  public standard = "XWON Token v1.0";
    |    uint8 public constant decimals = 0;
  > |    uint256 public totalSupply;
    |
    |    event Transfer(
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'DappToken':
    |
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'DappToken':
    |        require(_value <= allowance[_from][msg.sender]);
    |
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'DappToken':
    |
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |        require(balanceOf[msg.sender] >= _value);
    |
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'DappToken':
    |        balanceOf[_to] += _value;
    |
  > |        allowance[_from][msg.sender] -= _value;
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3971619e272473286d7db7e7fb3fef8a0e9e8e8.sol(58)


