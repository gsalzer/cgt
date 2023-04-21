Processing contract: /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol:KTBaseToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol:PO8Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'KTBaseToken':
    |}
    |
  > |contract KTBaseToken is ERC20 {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(62)

[33mWarning[0m for UnhandledException in contract 'KTBaseToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KTBaseToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'KTBaseToken':
    |
    |        uint256 previousBalances = balances[_from].add(balances[_to]);
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'KTBaseToken':
    |        uint256 previousBalances = balances[_from].add(balances[_to]);
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'KTBaseToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |        require(_value <= allowed[_from][msg.sender]);     // Check allowance
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'KTBaseToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'KTBaseToken':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'KTBaseToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'KTBaseToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(142)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(45)

[33mWarning[0m for LockedEther in contract 'PO8Token':
    |}
    |
  > |contract PO8Token is KTBaseToken("PO8 Token", "PO8", 18, 10000000000000000000000000000), Ownable {
    |
    |    uint256 internal privateToken;
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(150)

[33mWarning[0m for UnhandledException in contract 'PO8Token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PO8Token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'PO8Token':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'PO8Token':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |        require(_value <= allowed[_from][msg.sender]);     // Check allowance
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'PO8Token':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'PO8Token':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'PO8Token':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'PO8Token':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'PO8Token':
    |        require(approvedAccount[_from]);
    |
  > |        balances[_from] = balances[_from].sub(_value);                  
    |        balances[_to] = balances[_to].add(_value);                  
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'PO8Token':
    |
    |        balances[_from] = balances[_from].sub(_value);                  
  > |        balances[_to] = balances[_to].add(_value);                  
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'PO8Token':
    |
    |    function approvedAccount(address target, bool approval) public onlyOwner {
  > |        approvedAccount[target] = approval;
    |        emit UnFrozenFunds(target, approval);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(180)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x7a00f353c4117f28fe50a1c2a43856b73cc60e4d.sol(5)


