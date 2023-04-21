Processing contract: /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol:Mineable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Mineable':
    |pragma solidity ^0.4.11;
    |
  > |contract Mineable {
    |    uint public supply = 1000000000000000000000000000;
    |    string public name = 'MIT';
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Mineable':
    |    
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => uint256) public successesOf;
    |    mapping (address => uint256) public failsOf;
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'Mineable':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => uint256) public successesOf;
    |    mapping (address => uint256) public failsOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Mineable':
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => uint256) public successesOf;
  > |    mapping (address => uint256) public failsOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'Mineable':
    |    mapping (address => uint256) public successesOf;
    |    mapping (address => uint256) public failsOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Mineable':
    |    
    |    /* Transfer tokens from other address */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'Mineable':
    |    
    |    /* Set allowance for other address */
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Mineable':
    |
    |contract Mineable {
  > |    uint public supply = 1000000000000000000000000000;
    |    string public name = 'MIT';
    |    string public symbol = 'MIT';
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Mineable':
    |contract Mineable {
    |    uint public supply = 1000000000000000000000000000;
  > |    string public name = 'MIT';
    |    string public symbol = 'MIT';
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Mineable':
    |    uint public supply = 1000000000000000000000000000;
    |    string public name = 'MIT';
  > |    string public symbol = 'MIT';
    |    uint8 public decimals = 18;
    |    uint public miningReward = 1000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Mineable':
    |    string public name = 'MIT';
    |    string public symbol = 'MIT';
  > |    uint8 public decimals = 18;
    |    uint public miningReward = 1000000000000000000;
    |    uint private divider;
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Mineable':
    |    string public symbol = 'MIT';
    |    uint8 public decimals = 18;
  > |    uint public miningReward = 1000000000000000000;
    |    uint private divider;
    |    
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Mineable':
    |    
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'Mineable':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'Mineable':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Mineable':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Mineable':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Mineable':
    |    /* Set allowance for other address */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51e42087549dd9282362fcbbf328f8e34b27cf66.sol(54)


