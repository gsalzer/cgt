Processing contract: /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol:PrayerCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol:PrayerCoinToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol:Standard
Processing contract: /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol:Token
[31mViolation[0m for DAOConstantGas in contract 'PrayerCoin':
    |    if (msg.value == 0) { return; }
    |
  > |    god.transfer(msg.value);
    |
    |    totalDonations += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(210)

[33mWarning[0m for LockedEther in contract 'PrayerCoin':
    |}
    |
  > |contract PrayerCoin is PrayerCoinToken {
    |  using SafeMath for uint256;
    |  address public god;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(147)

[33mWarning[0m for TODReceiver in contract 'PrayerCoin':
    |    if (msg.value == 0) { return; }
    |
  > |    god.transfer(msg.value);
    |
    |    totalDonations += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(210)

[33mWarning[0m for UnhandledException in contract 'PrayerCoin':
    |    //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |    //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |    require(false == _spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |    return true;
    |  } 
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(184)

[33mWarning[0m for UnhandledException in contract 'PrayerCoin':
    |    if (msg.value == 0) { return; }
    |
  > |    god.transfer(msg.value);
    |
    |    totalDonations += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrayerCoin':
    |    //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |    //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |    require(false == _spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |    return true;
    |  } 
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |    god.transfer(msg.value);
    |
  > |    totalDonations += msg.value;
    |    
    |    uint256 prayersIssued = 0;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |
    |  function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |
    |    totalPrayers += prayersIssued;
  > |    balances[msg.sender] += prayersIssued;
    |    balances[god] -= prayersIssued;
    |
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |
    |  function startDonations() public divine {
  > |    acceptingDonations = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |
    |  function endDonations() public divine {
  > |    acceptingDonations = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |
    |  function fiatSend(address _to, uint256 amt, uint256 prayRatio) public divine {
  > |    totalDonations += amt;
    |    uint256 prayersIssued = amt.mul(prayRatio);
    |    totalPrayers += prayersIssued;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |    totalDonations += amt;
    |    uint256 prayersIssued = amt.mul(prayRatio);
  > |    totalPrayers += prayersIssued;
    |    balances[_to] += prayersIssued;
    |    balances[god] -= prayersIssued;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |    uint256 prayersIssued = amt.mul(prayRatio);
    |    totalPrayers += prayersIssued;
  > |    balances[_to] += prayersIssued;
    |    balances[god] -= prayersIssued;
    |
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |    totalPrayers += prayersIssued;
    |    balances[_to] += prayersIssued;
  > |    balances[god] -= prayersIssued;
    |
    |    Transfer(address(this), _to, prayersIssued);
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |    }
    |
  > |    totalPrayers += prayersIssued;
    |    balances[msg.sender] += prayersIssued;
    |    balances[god] -= prayersIssued;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoin':
    |    totalPrayers += prayersIssued;
    |    balances[msg.sender] += prayersIssued;
  > |    balances[god] -= prayersIssued;
    |
    |    Transfer(address(this), msg.sender, prayersIssued);
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(228)

[33mWarning[0m for LockedEther in contract 'PrayerCoinToken':
    |}
    |
  > |contract PrayerCoinToken is Token {
    |
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'PrayerCoinToken':
    |    uint256 constant MAX_UINT256 = 2**256 - 1;
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'PrayerCoinToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'PrayerCoinToken':
    |    }
    |
  > |    function balanceOf(address _owner) view public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'PrayerCoinToken':
    |    }
    |
  > |    function getBalance(address _owner) view public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'PrayerCoinToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'PrayerCoinToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) view public returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'PrayerCoinToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'PrayerCoinToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'PrayerCoinToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'PrayerCoinToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoinToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoinToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'PrayerCoinToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(129)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0215c96d7badf65cfe9b897d232e53451c3876d3.sol(3)


