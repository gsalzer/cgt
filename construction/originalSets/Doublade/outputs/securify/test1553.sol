Processing contract: /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol:NEKOCOIN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    | * @dev Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    }
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |        TKN memory tkn;
    |        tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    | * @dev Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(108)

[31mViolation[0m for TODReceiver in contract 'NEKOCOIN':
    |                && frozenAccount[msg.sender] == false
    |                && now > unlockUnixTime[msg.sender]);
  > |        if(msg.value > 0) owner.transfer(msg.value);
    |        
    |        balanceOf[owner] = balanceOf[owner].sub(distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(488)

[33mWarning[0m for UnhandledException in contract 'NEKOCOIN':
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(235)

[33mWarning[0m for UnhandledException in contract 'NEKOCOIN':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(303)

[33mWarning[0m for UnhandledException in contract 'NEKOCOIN':
    |                && frozenAccount[msg.sender] == false
    |                && now > unlockUnixTime[msg.sender]);
  > |        if(msg.value > 0) owner.transfer(msg.value);
    |        
    |        balanceOf[owner] = balanceOf[owner].sub(distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(488)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NEKOCOIN':
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(235)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NEKOCOIN':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(303)

[31mViolation[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        for (uint j = 0; j < targets.length; j++) {
    |            require(targets[j] != 0x0);
  > |            frozenAccount[targets[j]] = isFrozen;
    |            FrozenFunds(targets[j], isFrozen);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        for(uint j = 0; j < targets.length; j++){
    |            require(unlockUnixTime[targets[j]] < unixTimes[j]);
  > |            unlockUnixTime[targets[j]] = unixTimes[j];
    |            LockedFunds(targets[j], unixTimes[j]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        if (isContract(_to)) {
    |            require(balanceOf[msg.sender] >= _value);
  > |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |            balanceOf[_to] = balanceOf[_to].add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |            require(balanceOf[msg.sender] >= _value);
    |            balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |            balanceOf[_to] = balanceOf[_to].add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |                && now > unlockUnixTime[_to]);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |                && balanceOf[_from] >= _unitAmount);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
    |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
  > |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        require(_unitAmount > 0);
    |        
  > |        totalSupply = totalSupply.add(_unitAmount);
    |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        Mint(_to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        
    |        totalSupply = totalSupply.add(_unitAmount);
  > |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        Mint(_to, _unitAmount);
    |        Transfer(address(0), _to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |                    && now > unlockUnixTime[addresses[j]]);
    |
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].add(amount);
    |            Transfer(msg.sender, addresses[j], amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |            Transfer(msg.sender, addresses[j], amount);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        
    |        for (j = 0; j < addresses.length; j++) {
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].add(amounts[j]);
    |            Transfer(msg.sender, addresses[j], amounts[j]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(443)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |            Transfer(msg.sender, addresses[j], amounts[j]);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |            amounts[j] = amounts[j].mul(1e8);
    |            require(balanceOf[addresses[j]] >= amounts[j]);
  > |            balanceOf[addresses[j]] = balanceOf[addresses[j]].sub(amounts[j]);
    |            totalAmount = totalAmount.add(amounts[j]);
    |            Transfer(addresses[j], msg.sender, amounts[j]);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |            Transfer(addresses[j], msg.sender, amounts[j]);
    |        }
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].add(totalAmount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        if(msg.value > 0) owner.transfer(msg.value);
    |        
  > |        balanceOf[owner] = balanceOf[owner].sub(distributeAmount);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].add(distributeAmount);
    |        Transfer(owner, msg.sender, distributeAmount);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        
    |        balanceOf[owner] = balanceOf[owner].sub(distributeAmount);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].add(distributeAmount);
    |        Transfer(owner, msg.sender, distributeAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'NEKOCOIN':
    |
    |    function setDistributeAmount(uint256 _unitAmount) onlyOwner public {
  > |        distributeAmount = _unitAmount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(476)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | *      control functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(68)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x62ec022aca1fc3874295bad446915bd349d64ebc.sol(5)


