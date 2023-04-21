Processing contract: /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol:ApprovalReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol:FFC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol:Token
[33mWarning[0m for LockedEther in contract 'FFC':
    |
    |/// FFC token, ERC20 compliant
  > |contract FFC is Token, Owned {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(115)

[33mWarning[0m for UnhandledException in contract 'FFC':
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
    |        //if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { revert(); }
  > |        ApprovalReceiver(_spender).receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(239)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FFC':
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
    |        //if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { revert(); }
  > |        ApprovalReceiver(_spender).receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |        // according to FFC's total supply, never overflow here
    |        if ( accounts[msg.sender].balance >= _amount && _amount > 0) {            
  > |            accounts[msg.sender].balance -= uint112(_amount);
    |            accounts[_to].balance = _amount.add(accounts[_to].balance).toUINT112();
    |            emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |        if ( accounts[msg.sender].balance >= _amount && _amount > 0) {            
    |            accounts[msg.sender].balance -= uint112(_amount);
  > |            accounts[_to].balance = _amount.add(accounts[_to].balance).toUINT112();
    |            emit Transfer(msg.sender, _to, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |            && _amount > 0) {
    |            accounts[_from].balance -= uint112(_amount);
  > |            allowed[_from][msg.sender] -= _amount;
    |            accounts[_to].balance = _amount.add(accounts[_to].balance).toUINT112();
    |            emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |            accounts[_from].balance -= uint112(_amount);
    |            allowed[_from][msg.sender] -= _amount;
  > |            accounts[_to].balance = _amount.add(accounts[_to].balance).toUINT112();
    |            emit Transfer(_from, _to, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _amount)public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        emit Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |    
    |    function mint0(address _owner, uint256 _amount)public onlyOwner {
  > |    		accounts[_owner].balance = _amount.add(accounts[_owner].balance).toUINT112();
    |
    |        accounts[_owner].lastMintedTimestamp = uint32(block.timestamp);
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |    		accounts[_owner].balance = _amount.add(accounts[_owner].balance).toUINT112();
    |
  > |        accounts[_owner].lastMintedTimestamp = uint32(block.timestamp);
    |
    |        //supplies.total = _amount.add(supplies.total).toUINT128();
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |    // Mint tokens and assign to some one
    |    function mint(address _owner, uint256 _amount, uint32 timestamp)public onlyOwner{
  > |        accounts[_owner].balance = _amount.add(accounts[_owner].balance).toUINT112();
    |
    |        accounts[_owner].lastMintedTimestamp = timestamp;
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |        accounts[_owner].balance = _amount.add(accounts[_owner].balance).toUINT112();
    |
  > |        accounts[_owner].lastMintedTimestamp = timestamp;
    |
    |        supplies.total = _amount.add(supplies.total).toUINT128();
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |        accounts[_owner].lastMintedTimestamp = timestamp;
    |
  > |        supplies.total = _amount.add(supplies.total).toUINT128();
    |        emit Transfer(0, _owner, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'FFC':
    |
    |    function setOwner(address _newOwner) public onlyOwner {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(62)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function setOwner(address _newOwner) public onlyOwner {
    |        owner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    function Owned() public{
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function setOwner(address _newOwner) public onlyOwner {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(62)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xb941ef1f4f9593e211e4ca47b11cb5c2de43ba38.sol(7)


