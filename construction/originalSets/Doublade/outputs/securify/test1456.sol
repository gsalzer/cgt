Processing contract: /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol:Crowdsaled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol:LetItPlayTokenPromo
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(69)

[33mWarning[0m for LockedEther in contract 'Crowdsaled':
    |}
    |
  > |contract Crowdsaled is Ownable {
    |        address public crowdsaleContract = address(0);
    |        function Crowdsaled() public {
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsaled':
    |        }
    |
  > |        function setCrowdsale(address crowdsale) public onlyOwner() {
    |                crowdsaleContract = crowdsale;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsaled':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsaled':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsaled':
    |
    |contract Crowdsaled is Ownable {
  > |        address public crowdsaleContract = address(0);
    |        function Crowdsaled() public {
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsaled':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsaled':
    |
    |        function setCrowdsale(address crowdsale) public onlyOwner() {
  > |                crowdsaleContract = crowdsale;
    |        }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(102)

[31mViolation[0m for LockedEther in contract 'LetItPlayTokenPromo':
    |}
    |
  > |contract LetItPlayTokenPromo is StandardToken, Ownable {
    |        uint256 public totalSupply;
    |        string public name;
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'LetItPlayTokenPromo':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'LetItPlayTokenPromo':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'LetItPlayTokenPromo':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'LetItPlayTokenPromo':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'LetItPlayTokenPromo':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'LetItPlayTokenPromo':
    |
    |        function burn() public onlyOwner {
  > |            burned = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(281)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(40)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(106)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x5c8e340c3e9124cf75d5b600f21af1320b42d4a2.sol(235)


