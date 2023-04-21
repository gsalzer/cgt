Processing contract: /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol:Authorizable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol:FrozenToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol:MallcoinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Authorizable':
    |}
    |
  > |contract Authorizable {
    |    mapping(address => bool) authorizers;
    |
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    |    }
    |
  > |    function addAuthorized(address _addr) external onlyAuthorized {
    |      require(_addr != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    |    }
    |
  > |    function delAuthorized(address _addr) external onlyAuthorized {
    |      require(_addr != address(0));
    |      require(_addr != msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |
    |      //authorizers[_addr] = false;
  > |      delete authorizers[_addr];
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(83)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |      //require(_value <= balances[msg.sender]);
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(124)

[33mWarning[0m for LockedEther in contract 'FrozenToken':
    |}
    |
  > |contract FrozenToken is StandardToken, Ownable {
    |    mapping(address => bool) frozens;
    |    mapping(address => uint256) frozenTokens;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(189)

[33mWarning[0m for UnhandledException in contract 'FrozenToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FrozenToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |
    |      OwnershipTransferred(owner, newOwner);
  > |      owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |      //require(_value <= balances[msg.sender]);
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |      //require(_value <= allowed[_from][msg.sender]);
    |
  > |      balances[_from] = balances[_from].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |
    |      balances[_from] = balances[_from].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |      balances[_from] = balances[_from].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |    function approve(address _spender, uint256 _value) public returns (bool) {
    |      require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |      allowed[msg.sender][_spender] = _value;
    |      Approval(msg.sender, _spender, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |      uint oldValue = allowed[msg.sender][_spender];
    |      if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |      } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |        allowed[msg.sender][_spender] = 0;
    |      } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |      }
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |      require(_addr != address(0));
    |
  > |      frozens[_addr] = true;
    |      FrozenAddress(_addr);
    |      return frozens[_addr];
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |      require(_addr != address(0));
    |
  > |      delete frozens[_addr];
    |      //frozens[_addr] = false;
    |      UnFrozenAddress(_addr);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |      require(balance >= _amount);
    |
  > |      frozenTokens[_addr] = frozenTokens[_addr].add(_amount);
    |      FrozenTokenEvent(_addr, _amount);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'FrozenToken':
    |      require(frozenTokens[_addr] >= _amount);
    |
  > |      frozenTokens[_addr] = frozenTokens[_addr].sub(_amount);
    |      UnFrozenTokenEvent(_addr, _amount);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(264)

[33mWarning[0m for LockedEther in contract 'MallcoinToken':
    |}
    |
  > |contract MallcoinToken is FrozenToken, Authorizable {
    |      string public constant name = "Mallcoin Token";
    |      string public constant symbol = "MLC";
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(295)

[33mWarning[0m for UnhandledException in contract 'MallcoinToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MallcoinToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |
    |      OwnershipTransferred(owner, newOwner);
  > |      owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |      require(_addr != address(0));
    |
  > |      authorizers[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |
    |      //authorizers[_addr] = false;
  > |      delete authorizers[_addr];
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |      //require(_value <= balances[msg.sender]);
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |      //require(_value <= allowed[_from][msg.sender]);
    |
  > |      balances[_from] = balances[_from].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |
    |      balances[_from] = balances[_from].sub(_value);
  > |      balances[_to] = balances[_to].add(_value);
    |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |      balances[_from] = balances[_from].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |    function approve(address _spender, uint256 _value) public returns (bool) {
    |      require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |      allowed[msg.sender][_spender] = _value;
    |      Approval(msg.sender, _spender, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |      uint oldValue = allowed[msg.sender][_spender];
    |      if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |      } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |        allowed[msg.sender][_spender] = 0;
    |      } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |      }
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |      require(_addr != address(0));
    |
  > |      frozens[_addr] = true;
    |      FrozenAddress(_addr);
    |      return frozens[_addr];
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |      require(_addr != address(0));
    |
  > |      delete frozens[_addr];
    |      //frozens[_addr] = false;
    |      UnFrozenAddress(_addr);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |      require(balance >= _amount);
    |
  > |      frozenTokens[_addr] = frozenTokens[_addr].add(_amount);
    |      FrozenTokenEvent(_addr, _amount);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |      require(frozenTokens[_addr] >= _amount);
    |
  > |      frozenTokens[_addr] = frozenTokens[_addr].sub(_amount);
    |      UnFrozenTokenEvent(_addr, _amount);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |        require(MAX_TOKEN_SUPPLY >= totalSupply_ + _amount);
    |
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |
    |        // KYC
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |
    |        // KYC
  > |        frozens[_to] = true;
    |        FrozenAddress(_to);
    |
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |        require(MAX_TOKEN_SUPPLY >= totalSupply_ + _amount);
    |
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |
    |        // KYC
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'MallcoinToken':
    |
    |        // KYC
  > |        frozens[_to] = true;
    |        FrozenAddress(_to);
    |
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(336)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |      require(newOwner != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |      OwnershipTransferred(owner, newOwner);
  > |      owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(48)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |      if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(135)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      //require(_value <= balances[msg.sender]);
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      balances[_from] = balances[_from].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) public returns (bool) {
    |      require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |      allowed[msg.sender][_spender] = _value;
    |      Approval(msg.sender, _spender, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |      allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      uint oldValue = allowed[msg.sender][_spender];
    |      if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |      } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        allowed[msg.sender][_spender] = 0;
    |      } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |      }
    |      Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc72ed4445b3fe9f0863106e344e241530d338906.sol(174)


