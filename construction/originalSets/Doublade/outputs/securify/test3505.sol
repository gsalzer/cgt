Processing contract: /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol:WINMEDICSCOIN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    |}
    |
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    }
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |        TKN memory tkn;
    |        tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    |}
    |
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(72)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(47)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(3)

[31mViolation[0m for TODReceiver in contract 'WINMEDICSCOIN':
    |                && frozenAccount[msg.sender] == false
    |                && now > unlockUnixTime[msg.sender]);
  > |        if(msg.value > 0) owner.transfer(msg.value);
    |        
    |        balanceOf[owner] = balanceOf[owner].sub(distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(301)

[33mWarning[0m for UnhandledException in contract 'WINMEDICSCOIN':
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(168)

[33mWarning[0m for UnhandledException in contract 'WINMEDICSCOIN':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(229)

[33mWarning[0m for UnhandledException in contract 'WINMEDICSCOIN':
    |                && frozenAccount[msg.sender] == false
    |                && now > unlockUnixTime[msg.sender]);
  > |        if(msg.value > 0) owner.transfer(msg.value);
    |        
    |        balanceOf[owner] = balanceOf[owner].sub(distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WINMEDICSCOIN':
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WINMEDICSCOIN':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |        for (uint j = 0; j < targets.length; j++) {
    |            require(targets[j] != 0x0);
  > |            frozenAccount[targets[j]] = isFrozen;
    |            FrozenFunds(targets[j], isFrozen);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |        for(uint j = 0; j < targets.length; j++){
    |            require(unlockUnixTime[targets[j]] < unixTimes[j]);
  > |            unlockUnixTime[targets[j]] = unixTimes[j];
    |            LockedFunds(targets[j], unixTimes[j]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |        if (isContract(_to)) {
    |            require(balanceOf[msg.sender] >= _value);
  > |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |            require(balanceOf[msg.sender] >= _value);
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |            balanceOf[_to] = balanceOf[_to].add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |                && now > unlockUnixTime[_to]);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |                && balanceOf[_from] >= _unitAmount);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
    |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
  > |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |        require(_unitAmount > 0);
    |        
  > |        totalSupply = totalSupply.add(_unitAmount);
    |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        Mint(_to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |        
    |        totalSupply = totalSupply.add(_unitAmount);
  > |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        Mint(_to, _unitAmount);
    |        Transfer(address(0), _to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |        if(msg.value > 0) owner.transfer(msg.value);
    |        
  > |        balanceOf[owner] = balanceOf[owner].sub(distributeAmount);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].add(distributeAmount);
    |        Transfer(owner, msg.sender, distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |        
    |        balanceOf[owner] = balanceOf[owner].sub(distributeAmount);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].add(distributeAmount);
    |        Transfer(owner, msg.sender, distributeAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'WINMEDICSCOIN':
    |
    |    function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
  > |        distributeAmount = _unitAmount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe5afb7be773ebe9b774074fba06256537fedb7e4.sol(293)


