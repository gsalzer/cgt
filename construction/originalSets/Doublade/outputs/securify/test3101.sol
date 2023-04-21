Processing contract: /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol:ECRecovery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol:LavaWallet
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ECRecovery':
    |
    |
  > |library ECRecovery {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(17)

[33mWarning[0m for UnhandledException in contract 'ECRecovery':
    |      return (address(0));
    |    } else {
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(50)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ECRecovery':
    |      return (address(0));
    |    } else {
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(50)

[33mWarning[0m for LockedEther in contract 'LavaWallet':
    |
    |
  > |contract LavaWallet is Owned {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(176)

[33mWarning[0m for UnhandledException in contract 'LavaWallet':
    |  {
    |      //we already have approval so lets do a transferFrom - transfer the tokens into this contract
  > |      ERC20Interface(token).transferFrom(from, this, tokens);
    |      balances[token][from] = balances[token][from].add(tokens);
    |      depositedTokens[token] = depositedTokens[token].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(212)

[33mWarning[0m for UnhandledException in contract 'LavaWallet':
    |    depositedTokens[token] = depositedTokens[token].sub(tokens);
    |
  > |    ERC20Interface(token).transfer(msg.sender, tokens);
    |
    |    Withdraw(token, msg.sender, tokens, balances[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(227)

[33mWarning[0m for UnhandledException in contract 'LavaWallet':
    |      allowed[token][from][to] = allowed[token][from][to].sub(tokens);
    |
  > |      ERC20Interface(token).transfer(to, tokens);
    |
    |      Withdraw(token, from, tokens, balances[token][from]);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(238)

[33mWarning[0m for UnhandledException in contract 'LavaWallet':
    |
    |    //find actual balance of the contract
  > |     uint tokenBalance = ERC20Interface(tokenAddress).balanceOf(this);
    |
    |     //find number of accidentally deposited tokens (actual - purposefully deposited)
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(436)

[33mWarning[0m for UnhandledException in contract 'LavaWallet':
    |     assert(tokens <= undepositedTokens);
    |
  > |     ERC20Interface(tokenAddress).transfer(owner, tokens);
    |
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LavaWallet':
    |  {
    |      //we already have approval so lets do a transferFrom - transfer the tokens into this contract
  > |      ERC20Interface(token).transferFrom(from, this, tokens);
    |      balances[token][from] = balances[token][from].add(tokens);
    |      depositedTokens[token] = depositedTokens[token].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LavaWallet':
    |    depositedTokens[token] = depositedTokens[token].sub(tokens);
    |
  > |    ERC20Interface(token).transfer(msg.sender, tokens);
    |
    |    Withdraw(token, msg.sender, tokens, balances[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LavaWallet':
    |      allowed[token][from][to] = allowed[token][from][to].sub(tokens);
    |
  > |      ERC20Interface(token).transfer(to, tokens);
    |
    |      Withdraw(token, from, tokens, balances[token][from]);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LavaWallet':
    |
    |    //find actual balance of the contract
  > |     uint tokenBalance = ERC20Interface(tokenAddress).balanceOf(this);
    |
    |     //find number of accidentally deposited tokens (actual - purposefully deposited)
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(436)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LavaWallet':
    |     assert(tokens <= undepositedTokens);
    |
  > |     ERC20Interface(tokenAddress).transfer(owner, tokens);
    |
    |     return true;
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |        OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |      //we already have approval so lets do a transferFrom - transfer the tokens into this contract
    |      ERC20Interface(token).transferFrom(from, this, tokens);
  > |      balances[token][from] = balances[token][from].add(tokens);
    |      depositedTokens[token] = depositedTokens[token].add(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |      ERC20Interface(token).transferFrom(from, this, tokens);
    |      balances[token][from] = balances[token][from].add(tokens);
  > |      depositedTokens[token] = depositedTokens[token].add(tokens);
    |
    |      Deposit(token, from, tokens, balances[token][from]);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |  //No approve needed, only from msg.sender
    |  function withdrawTokens(address token, uint256 tokens) public {
  > |    balances[token][msg.sender] = balances[token][msg.sender].sub(tokens);
    |    depositedTokens[token] = depositedTokens[token].sub(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |  function withdrawTokens(address token, uint256 tokens) public {
    |    balances[token][msg.sender] = balances[token][msg.sender].sub(tokens);
  > |    depositedTokens[token] = depositedTokens[token].sub(tokens);
    |
    |    ERC20Interface(token).transfer(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |  //Requires approval so it can be public
    |  function withdrawTokensFrom( address from, address to,address token,  uint tokens) public returns (bool success) {
  > |      balances[token][from] = balances[token][from].sub(tokens);
    |      depositedTokens[token] = depositedTokens[token].sub(tokens);
    |      allowed[token][from][to] = allowed[token][from][to].sub(tokens);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |  function withdrawTokensFrom( address from, address to,address token,  uint tokens) public returns (bool success) {
    |      balances[token][from] = balances[token][from].sub(tokens);
  > |      depositedTokens[token] = depositedTokens[token].sub(tokens);
    |      allowed[token][from][to] = allowed[token][from][to].sub(tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |      balances[token][from] = balances[token][from].sub(tokens);
    |      depositedTokens[token] = depositedTokens[token].sub(tokens);
  > |      allowed[token][from][to] = allowed[token][from][to].sub(tokens);
    |
    |      ERC20Interface(token).transfer(to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |  //Can also be used to remove approval by using a 'tokens' value of 0
    |  function approveTokens(address spender, address token, uint tokens) public returns (bool success) {
  > |      allowed[token][msg.sender][spender] = tokens;
    |      Approval(msg.sender, token, spender, tokens);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |  //No approve needed, only from msg.sender
    |   function transferTokens(address to, address token, uint tokens) public returns (bool success) {
  > |        balances[token][msg.sender] = balances[token][msg.sender].sub(tokens);
    |        balances[token][to] = balances[token][to].add(tokens);
    |        Transfer(msg.sender, token, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |   function transferTokens(address to, address token, uint tokens) public returns (bool success) {
    |        balances[token][msg.sender] = balances[token][msg.sender].sub(tokens);
  > |        balances[token][to] = balances[token][to].add(tokens);
    |        Transfer(msg.sender, token, to, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |    //Can be public because it requires approval
    |   function transferTokensFrom( address from, address to,address token,  uint tokens) public returns (bool success) {
  > |       balances[token][from] = balances[token][from].sub(tokens);
    |       allowed[token][from][to] = allowed[token][from][to].sub(tokens);
    |       balances[token][to] = balances[token][to].add(tokens);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |   function transferTokensFrom( address from, address to,address token,  uint tokens) public returns (bool success) {
    |       balances[token][from] = balances[token][from].sub(tokens);
  > |       allowed[token][from][to] = allowed[token][from][to].sub(tokens);
    |       balances[token][to] = balances[token][to].add(tokens);
    |       Transfer(token, from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |       balances[token][from] = balances[token][from].sub(tokens);
    |       allowed[token][from][to] = allowed[token][from][to].sub(tokens);
  > |       balances[token][to] = balances[token][to].add(tokens);
    |       Transfer(token, from, to, tokens);
    |       return true;
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |
    |       //approve the relayer reward
  > |       allowed[token][from][msg.sender] = relayerReward;
    |       Approval(from, token, msg.sender, relayerReward);
    |
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'LavaWallet':
    |
    |       //approve transfer of tokens
  > |       allowed[token][from][to] = tokens;
    |       Approval(from, token, to, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(321)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    address public owner;
    |
  > |    address public newOwner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public {
    |
    |        require(msg.sender == newOwner);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |
  > |        newOwner = _newOwner;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnershipTransferred(owner, newOwner);
    |
  > |        owner = newOwner;
    |
    |        newOwner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        owner = newOwner;
    |
  > |        newOwner = address(0);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(166)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xcba65975b1c66586bfe7910f32377e0ee55f783e.sol(61)


