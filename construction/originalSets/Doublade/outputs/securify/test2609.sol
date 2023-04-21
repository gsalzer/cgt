Processing contract: /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol:ApprovalReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol:Prealloc
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol:VEN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol:VENSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.11;
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function setOwner(address _newOwner) onlyOwner {
    |        owner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function setOwner(address _newOwner) onlyOwner {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(17)

[33mWarning[0m for LockedEther in contract 'Prealloc':
    | * @dev Pre-alloc storage vars, to flatten gas usage in future operations.
    | */
  > |library Prealloc {
    |    struct UINT256 {
    |        uint256 value_;
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(26)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(45)

[33mWarning[0m for LockedEther in contract 'VEN':
    |
    |/// VEN token, ERC20 compliant
  > |contract VEN is Token, Owned {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(124)

[33mWarning[0m for UnhandledException in contract 'VEN':
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
    |        //if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { revert(); }
  > |        ApprovalReceiver(_spender).receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VEN':
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
    |        //if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { revert(); }
  > |        ApprovalReceiver(_spender).receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |
    |    function setOwner(address _newOwner) onlyOwner {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |
    |    function set(UINT256 storage i, uint256 value) internal {
  > |        i.value_ = ~value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |        require(isSealed());
    |        if (accounts[_owner].rawTokens != 0) {
  > |            accounts[_owner].balance = balanceOf(_owner);
    |            accounts[_owner].rawTokens = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |        if (accounts[_owner].rawTokens != 0) {
    |            accounts[_owner].balance = balanceOf(_owner);
  > |            accounts[_owner].rawTokens = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |            && _amount > 0
    |            && accounts[_to].balance + _amount > accounts[_to].balance) {
  > |            accounts[msg.sender].balance -= _amount;
    |            accounts[_to].balance += _amount;
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |            && accounts[_to].balance + _amount > accounts[_to].balance) {
    |            accounts[msg.sender].balance -= _amount;
  > |            accounts[_to].balance += _amount;
    |            Transfer(msg.sender, _to, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |            && accounts[_to].balance + _amount > accounts[_to].balance) {
    |            accounts[_from].balance -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            accounts[_to].balance += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |            accounts[_from].balance -= _amount;
    |            allowed[_from][msg.sender] -= _amount;
  > |            accounts[_to].balance += _amount;
    |            Transfer(_from, _to, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _amount) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |    function mint(address _owner, uint256 _amount, bool _isRaw) onlyOwner{
    |        if (_isRaw) {
  > |            accounts[_owner].rawTokens = accounts[_owner].rawTokens.add(_amount);
    |            rawTokensSupplied.set(rawTokensSupplied.get().add(_amount));
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |            rawTokensSupplied.set(rawTokensSupplied.get().add(_amount));
    |        } else {
  > |            accounts[_owner].balance = accounts[_owner].balance.add(_amount);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |        }
    |
  > |        totalSupply = totalSupply.add(_amount);
    |        Transfer(0, _owner, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |    // Offer bonus to raw tokens holder
    |    function offerBonus(uint256 _bonus) onlyOwner {
  > |        bonusOffered = bonusOffered.add(_bonus);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'VEN':
    |        setOwner(0);
    |
  > |        totalSupply = totalSupply.add(bonusOffered);
    |        Transfer(0, address(-1), bonusOffered);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaa22ea7ae573b7176c5d731565fb18732f640fe.sol(292)


