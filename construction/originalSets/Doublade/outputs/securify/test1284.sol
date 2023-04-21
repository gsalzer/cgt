Processing contract: /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol:SiuToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'SiuToken':
    |interface tokenRecipient {function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public;}
    |
  > |contract SiuToken {
    |    string public name = "Siu's Token";
    |    string public symbol = "SIU";
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'SiuToken':
    |    uint256 public totalSupply = 210000 * 10000 * 10 ** decimals;
    |
  > |    mapping(address => uint256) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'SiuToken':
    |
    |    mapping(address => uint256) public balanceOf;
  > |    mapping(address => mapping(address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'SiuToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'SiuToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |    returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'SiuToken':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |    public
    |    returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'SiuToken':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'SiuToken':
    |
    |contract SiuToken {
  > |    string public name = "Siu's Token";
    |    string public symbol = "SIU";
    |    uint256 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SiuToken':
    |contract SiuToken {
    |    string public name = "Siu's Token";
  > |    string public symbol = "SIU";
    |    uint256 public decimals = 18;
    |    uint256 public totalSupply = 210000 * 10000 * 10 ** decimals;
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SiuToken':
    |    string public name = "Siu's Token";
    |    string public symbol = "SIU";
  > |    uint256 public decimals = 18;
    |    uint256 public totalSupply = 210000 * 10000 * 10 ** decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'SiuToken':
    |    string public symbol = "SIU";
    |    uint256 public decimals = 18;
  > |    uint256 public totalSupply = 210000 * 10000 * 10 ** decimals;
    |
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'SiuToken':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SiuToken':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(60)

[33mWarning[0m for UnhandledException in contract 'SiuToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(55)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SiuToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'SiuToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'SiuToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'SiuToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'SiuToken':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'SiuToken':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'SiuToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'SiuToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'SiuToken':
    |    function approve(address _spender, uint256 _value) public
    |    returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'SiuToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'SiuToken':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x50cd42ceeedff46185ddad4989fa1ca113c9bb8d.sol(72)


