Processing contract: /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol:DBC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol:ERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol:ERC20Interface
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol:Vesting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol:safeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DBC':
    |pragma solidity ^0.4.13;
    |
  > |contract DBC {
    |
    |    // MODIFIERS
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(3)

[33mWarning[0m for LockedEther in contract 'ERC20':
    |}
    |
  > |contract ERC20 is ERC20Interface {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        // See: https://github.com/ethereum/EIPs/issues/20#issuecomment-263555598
    |        if (_value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    mapping (address => mapping (address => uint256)) allowed;
    |
  > |    uint256 public totalSupply;
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |            require(allowed[msg.sender][_spender] == 0);
    |        }
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(74)

[33mWarning[0m for LockedEther in contract 'ERC20Interface':
    |}
    |
  > |contract ERC20Interface {
    |
    |    // EVENTS
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(24)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |
    |    // FIELDS
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    // FIELDS
    |
  > |    address public owner;
    |
    |    // PRE, POST, INVARIANT CONDITIONS
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(95)

[33mWarning[0m for LockedEther in contract 'Vesting':
    |}
    |
  > |contract Vesting is DBC, Owned {
    |    using safeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(107)

[33mWarning[0m for UnhandledException in contract 'Vesting':
    |    function isVestingRevoked() constant returns (bool) { return revoked; }
    |    function withdrawnMelon() constant returns (uint) {
  > |        return revoked ? withdrawnByBeneficiary : totalVestedAmount.sub(MELON_CONTRACT.balanceOf(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(128)

[33mWarning[0m for UnhandledException in contract 'Vesting':
    |        pre_cond(!isVestingStarted())
    |    {
  > |        assert(MELON_CONTRACT.transferFrom(msg.sender, this, ofMelonQuantity));
    |        vestingStartTime = now;
    |        totalVestedAmount = ofMelonQuantity;
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(157)

[33mWarning[0m for UnhandledException in contract 'Vesting':
    |        pre_cond(isVestingStarted())
    |    {
  > |        uint withdrawable = revoked ? MELON_CONTRACT.balanceOf(this) : calculateWithdrawable();
    |        assert(MELON_CONTRACT.transfer(beneficiary, withdrawable));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(169)

[33mWarning[0m for UnhandledException in contract 'Vesting':
    |    {
    |        uint withdrawable = revoked ? MELON_CONTRACT.balanceOf(this) : calculateWithdrawable();
  > |        assert(MELON_CONTRACT.transfer(beneficiary, withdrawable));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(170)

[33mWarning[0m for UnhandledException in contract 'Vesting':
    |        withdrawnByBeneficiary = withdrawnMelon();
    |        revoked = true;
  > |        assert(MELON_CONTRACT.transfer(owner, reclaimable));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(181)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vesting':
    |    function isVestingRevoked() constant returns (bool) { return revoked; }
    |    function withdrawnMelon() constant returns (uint) {
  > |        return revoked ? withdrawnByBeneficiary : totalVestedAmount.sub(MELON_CONTRACT.balanceOf(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vesting':
    |        pre_cond(!isVestingStarted())
    |    {
  > |        assert(MELON_CONTRACT.transferFrom(msg.sender, this, ofMelonQuantity));
    |        vestingStartTime = now;
    |        totalVestedAmount = ofMelonQuantity;
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vesting':
    |        pre_cond(isVestingStarted())
    |    {
  > |        uint withdrawable = revoked ? MELON_CONTRACT.balanceOf(this) : calculateWithdrawable();
    |        assert(MELON_CONTRACT.transfer(beneficiary, withdrawable));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(169)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vesting':
    |    {
    |        uint withdrawable = revoked ? MELON_CONTRACT.balanceOf(this) : calculateWithdrawable();
  > |        assert(MELON_CONTRACT.transfer(beneficiary, withdrawable));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(170)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Vesting':
    |        withdrawnByBeneficiary = withdrawnMelon();
    |        revoked = true;
  > |        assert(MELON_CONTRACT.transfer(owner, reclaimable));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'Vesting':
    |    {
    |        assert(MELON_CONTRACT.transferFrom(msg.sender, this, ofMelonQuantity));
  > |        vestingStartTime = now;
    |        totalVestedAmount = ofMelonQuantity;
    |        vestingPeriod = ofVestingPeriod;
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'Vesting':
    |        assert(MELON_CONTRACT.transferFrom(msg.sender, this, ofMelonQuantity));
    |        vestingStartTime = now;
  > |        totalVestedAmount = ofMelonQuantity;
    |        vestingPeriod = ofVestingPeriod;
    |        beneficiary = ofBeneficiary;
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Vesting':
    |        vestingStartTime = now;
    |        totalVestedAmount = ofMelonQuantity;
  > |        vestingPeriod = ofVestingPeriod;
    |        beneficiary = ofBeneficiary;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Vesting':
    |        totalVestedAmount = ofMelonQuantity;
    |        vestingPeriod = ofVestingPeriod;
  > |        beneficiary = ofBeneficiary;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Vesting':
    |    {
    |        uint reclaimable = totalVestedAmount.sub(calculateWithdrawable());
  > |        withdrawnByBeneficiary = withdrawnMelon();
    |        revoked = true;
    |        assert(MELON_CONTRACT.transfer(owner, reclaimable));
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'Vesting':
    |        uint reclaimable = totalVestedAmount.sub(calculateWithdrawable());
    |        withdrawnByBeneficiary = withdrawnMelon();
  > |        revoked = true;
    |        assert(MELON_CONTRACT.transfer(owner, reclaimable));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(180)

[33mWarning[0m for LockedEther in contract 'safeMath':
    |}
    |
  > |library safeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe23611dbae1556c041e6ad04c98e9f18ee98b50c.sol(186)


