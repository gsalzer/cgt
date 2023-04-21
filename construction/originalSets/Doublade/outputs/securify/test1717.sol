Processing contract: /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol:TokenRK50Z
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    |
    |/// Contract that is working with ERC223 tokens
  > |contract ContractReceiver {
    |	struct TKN {
    |        address sender;
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    }
    |
  > |    function tokenFallback(address _from, uint256 _value, bytes _data) public pure {
    |      TKN memory tkn;
    |      tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    |
    |/// Contract that is working with ERC223 tokens
  > |contract ContractReceiver {
    |	struct TKN {
    |        address sender;
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    |    }
    |	
  > |	function rewiewToken  () public pure returns (address, uint, bytes, bytes4) {
    |        TKN memory tkn;
    |        return (tkn.sender, tkn.value, tkn.data, tkn.sig);
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(71)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |/// Include SafeMath Lib
  > |contract SafeMath {
    |    uint256 constant public MAX_UINT256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |/// Include SafeMath Lib
    |contract SafeMath {
  > |    uint256 constant public MAX_UINT256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
    |    function safeAdd(uint256 x, uint256 y) pure internal returns (uint256 z) {
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(34)

[31mViolation[0m for LockedEther in contract 'TokenRK50Z':
    |
    |/// Realthium is an ERC20 token with ERC223 Extensions
  > |contract TokenRK50Z is ERC20, SafeMath {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(78)

[33mWarning[0m for UnhandledException in contract 'TokenRK50Z':
    |		tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRK50Z':
    |		tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |    function transferToAddress(address _to, uint256 _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |        if (balanceOf(msg.sender) < _value) revert();
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |		
    |		if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |		if (balanceOf(msg.sender) < _value) revert();
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
  > |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |        }
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |		require(!frozenAccount[_spender]);
    |		
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |        // function allowed only if the address is not smart contract
    |        if (!isContract(newOwner)) {	
  > |			owner = newOwner;
    |		}
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |		// function allowed only for smart contract
    |        if (isContract(target)) {
  > |			SmartContract_Allowed[target] = _allowed;
    |		}
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |	// Creator/Owner can Locked/Unlock smart contract
    |    function OWN_contractlocked(bool _locked) onlyOwner public {
  > |        SC_locked = _locked;
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |    function OWN_burnToken(address _from, uint256 _value)  onlyOwner public returns (bool success) {
    |        require(balances[_from] >= _value);
  > |        balances[_from] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |        require(balances[_from] >= _value);
    |        balances[_from] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |    function OWN_mintToken(uint256 mintedAmount) onlyOwner public {
    |        //aggiungo i decimali al valore che imposto
  > |        balances[owner] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |        //aggiungo i decimali al valore che imposto
    |        balances[owner] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, owner, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRK50Z':
    |	/// Block / Unlock address handling tokens
    |    function OWN_freezeAddress(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d66439c9cc75b69f9a40e82f34445081b8e929a.sol(303)


