Processing contract: /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol:LookRevToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'LookRevToken':
    |         // Transfer the contributed ethers to the crowdsale wallet
    |         // throw is deprecated starting from Ethereum v0.9.0
  > |         wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(245)

[33mWarning[0m for LockedEther in contract 'LookRevToken':
    | *
    | */
  > |contract LookRevToken is StandardToken {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(156)

[31mViolation[0m for TODReceiver in contract 'LookRevToken':
    |         // Transfer the contributed ethers to the crowdsale wallet
    |         // throw is deprecated starting from Ethereum v0.9.0
  > |         wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(245)

[33mWarning[0m for UnhandledException in contract 'LookRevToken':
    |         // Transfer the contributed ethers to the crowdsale wallet
    |         // throw is deprecated starting from Ethereum v0.9.0
  > |         wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(245)

[33mWarning[0m for UnhandledException in contract 'LookRevToken':
    |    function transferAnyERC20Token(address tokenAddress, uint amount) onlyOwner returns (bool success) 
    |    {
  > |        return ERC20(tokenAddress).transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LookRevToken':
    |         // Transfer the contributed ethers to the crowdsale wallet
    |         // throw is deprecated starting from Ethereum v0.9.0
  > |         wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(245)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LookRevToken':
    |    function transferAnyERC20Token(address tokenAddress, uint amount) onlyOwner returns (bool success) 
    |    {
  > |        return ERC20(tokenAddress).transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[msg.sender] = safeSub(balances[msg.sender],_amount);
    |            balances[_to] = safeAdd(balances[_to],_amount);
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[msg.sender] = safeSub(balances[msg.sender],_amount);
  > |            balances[_to] = safeAdd(balances[_to],_amount);
    |            Transfer(msg.sender, _to, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[_from] = safeSub(balances[_from],_amount);
    |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_amount);
    |            balances[_to] = safeAdd(balances[_to],_amount);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] = safeSub(balances[_from],_amount);
  > |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_amount);
    |            balances[_to] = safeAdd(balances[_to],_amount);
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |            balances[_from] = safeSub(balances[_from],_amount);
    |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_amount);
  > |            balances[_to] = safeAdd(balances[_to],_amount);
    |            Transfer(_from, _to, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |            return false;
    |        }
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |
    |         // Add tokens purchased to account's balance and total supply
  > |         balances[participant] = safeAdd(balances[participant],tokens);
    |         totalSupply = safeAdd(totalSupply,tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |         // Add tokens purchased to account's balance and total supply
    |         balances[participant] = safeAdd(balances[participant],tokens);
  > |         totalSupply = safeAdd(totalSupply,tokens);
    |
    |         // Log the tokens purchased 
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |         if (msg.value > KYC_THRESHOLD) {
    |             // KYC verification required before participant can transfer the tokens
  > |             kycRequired[participant] = true;
    |         }
    |
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |    function addPrecommitment(address participant, uint balance) onlyOwner {
    |        require(balance > 0);
  > |        balances[participant] = safeAdd(balances[participant],balance);
    |        totalSupply = safeAdd(totalSupply,balance);
    |        Transfer(0x0, participant, balance);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |        require(balance > 0);
    |        balances[participant] = safeAdd(balances[participant],balance);
  > |        totalSupply = safeAdd(totalSupply,balance);
    |        Transfer(0x0, participant, balance);
    |        PrecommitmentAdded(participant, balance);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |            && balances[0x0] + _amount > balances[0x0]
    |        ) {
  > |            balances[_from] = safeSub(balances[_from],_amount);
    |            balances[0x0] = safeAdd(balances[0x0],_amount);
    |            allowed[_from][0x0] = safeSub(allowed[_from][0x0],_amount);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |        ) {
    |            balances[_from] = safeSub(balances[_from],_amount);
  > |            balances[0x0] = safeAdd(balances[0x0],_amount);
    |            allowed[_from][0x0] = safeSub(allowed[_from][0x0],_amount);
    |            totalSupply = safeSub(totalSupply,_amount);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |            balances[_from] = safeSub(balances[_from],_amount);
    |            balances[0x0] = safeAdd(balances[0x0],_amount);
  > |            allowed[_from][0x0] = safeSub(allowed[_from][0x0],_amount);
    |            totalSupply = safeSub(totalSupply,_amount);
    |            Transfer(_from, 0x0, _amount);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |            balances[0x0] = safeAdd(balances[0x0],_amount);
    |            allowed[_from][0x0] = safeSub(allowed[_from][0x0],_amount);
  > |            totalSupply = safeSub(totalSupply,_amount);
    |            Transfer(_from, 0x0, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |  function transferOwnership(address _newOwner) onlyOwner {
    |    if (_newOwner != address(0)) {
  > |      newOwner = _newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |    require(msg.sender == newOwner);
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |  event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |   // LookRev can change the crowdsale wallet address
    |   function setWallet(address _wallet) onlyOwner {
  > |        wallet = _wallet;
    |        WalletUpdated(wallet);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |        require(!finalised);
    |
  > |        finalised = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'LookRevToken':
    |
    |    function kycVerify(address participant, bool _required) onlyOwner {
  > |        kycRequired[participant] = _required;
    |        KycVerified(participant, kycRequired[participant]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(284)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address owner;
    |  address newOwner;
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address _newOwner) onlyOwner {
    |    if (_newOwner != address(0)) {
    |      newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function acceptOwnership() {
    |    require(msg.sender == newOwner);
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address _newOwner) onlyOwner {
    |    if (_newOwner != address(0)) {
  > |      newOwner = _newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(msg.sender == newOwner);
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |  event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(73)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(36)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by InvestSeed
    | */
  > |contract StandardToken is ERC20, Ownable, SafeMath {
    |
    |    mapping (address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[msg.sender] = safeSub(balances[msg.sender],_amount);
    |            balances[_to] = safeAdd(balances[_to],_amount);
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[msg.sender] = safeSub(balances[msg.sender],_amount);
  > |            balances[_to] = safeAdd(balances[_to],_amount);
    |            Transfer(msg.sender, _to, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[_from] = safeSub(balances[_from],_amount);
    |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_amount);
    |            balances[_to] = safeAdd(balances[_to],_amount);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] = safeSub(balances[_from],_amount);
  > |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_amount);
    |            balances[_to] = safeAdd(balances[_to],_amount);
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_from] = safeSub(balances[_from],_amount);
    |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender],_amount);
  > |            balances[_to] = safeAdd(balances[_to],_amount);
    |            Transfer(_from, _to, _amount);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            return false;
    |        }
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transferOwnership(address _newOwner) onlyOwner {
    |    if (_newOwner != address(0)) {
  > |      newOwner = _newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(msg.sender == newOwner);
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |  event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x253c7dd074f4bacb305387f922225a4f737c08bd.sol(73)


