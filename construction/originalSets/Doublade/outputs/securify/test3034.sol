Processing contract: /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol:UnicornDividendToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol:hasHolders
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(76)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) public returns (bool) {
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(182)

[33mWarning[0m for LockedEther in contract 'UnicornDividendToken':
    |}
    |
  > |contract UnicornDividendToken is StandardToken, hasHolders {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornDividendToken':
    |    function approve(address _spender, uint256 _value) public returns (bool) {
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornDividendToken':
    |     */
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornDividendToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornDividendToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornDividendToken':
    |            holdersId[id] = holdersId[holderCount];
    |            // delete Holder element
  > |            delete holders[_holder];
    |            //delete last id and decrease count
    |            delete holdersId[holderCount--];
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornDividendToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        // проверим, является ли владелец аккаунтом
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornDividendToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |        _transfer(_from, _to, _value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(297)

[33mWarning[0m for LockedEther in contract 'hasHolders':
    |
    |
  > |contract hasHolders {
    |    //    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(191)

[31mViolation[0m for MissingInputValidation in contract 'hasHolders':
    |
    |    // внимание! id холдера начинаются с 1!
  > |    function getHolder(uint256 _id) external view returns (address) {
    |        return holdersId[_id];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'hasHolders':
    |    // внимание! id холдера начинаются с 1!
    |    mapping(uint256 => address) holdersId;
  > |    uint256 public holderCount = 0;
    |
    |    event AddHolder(address indexed holder, uint256 index);
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'hasHolders':
    |    }
    |
  > |    function getHoldersCount() external view returns (uint256) {
    |        return holderCount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc6a5cc090b709ee71080effff3b0dddbd9d9d8e4.sol(240)


