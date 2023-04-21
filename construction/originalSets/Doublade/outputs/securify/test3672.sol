Processing contract: /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol:DroneShowCoinICOContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'DroneShowCoinICOContract':
    |        token.transfer(msg.sender, tokens);
    |        
  > |        owner.transfer(msg.value);
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(157)

[33mWarning[0m for LockedEther in contract 'DroneShowCoinICOContract':
    |}
    |
  > |contract DroneShowCoinICOContract is Ownable {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(80)

[31mViolation[0m for TODReceiver in contract 'DroneShowCoinICOContract':
    |        token.transfer(msg.sender, tokens);
    |        
  > |        owner.transfer(msg.value);
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(157)

[33mWarning[0m for UnhandledException in contract 'DroneShowCoinICOContract':
    |        bonusesGiven = bonusesGiven.add(bonusAmount);
    |        numberOfTransactions = numberOfTransactions.add(1);
  > |        token.transfer(msg.sender, tokens);
    |        
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(155)

[33mWarning[0m for UnhandledException in contract 'DroneShowCoinICOContract':
    |        token.transfer(msg.sender, tokens);
    |        
  > |        owner.transfer(msg.value);
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(157)

[33mWarning[0m for UnhandledException in contract 'DroneShowCoinICOContract':
    |    
    |    function tokensAvailable() public constant returns (uint256) {
  > |        return token.balanceOf(this);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(162)

[33mWarning[0m for UnhandledException in contract 'DroneShowCoinICOContract':
    |    
    |    function destroy() public onlyOwner {
  > |        uint256 balance = token.balanceOf(this);
    |        assert (balance > 0);
    |        token.transfer(owner,balance);
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(166)

[33mWarning[0m for UnhandledException in contract 'DroneShowCoinICOContract':
    |        uint256 balance = token.balanceOf(this);
    |        assert (balance > 0);
  > |        token.transfer(owner,balance);
    |        selfdestruct(owner);
    |        
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DroneShowCoinICOContract':
    |        bonusesGiven = bonusesGiven.add(bonusAmount);
    |        numberOfTransactions = numberOfTransactions.add(1);
  > |        token.transfer(msg.sender, tokens);
    |        
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DroneShowCoinICOContract':
    |    
    |    function tokensAvailable() public constant returns (uint256) {
  > |        return token.balanceOf(this);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DroneShowCoinICOContract':
    |    
    |    function destroy() public onlyOwner {
  > |        uint256 balance = token.balanceOf(this);
    |        assert (balance > 0);
    |        token.transfer(owner,balance);
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(166)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DroneShowCoinICOContract':
    |        uint256 balance = token.balanceOf(this);
    |        assert (balance > 0);
  > |        token.transfer(owner,balance);
    |        selfdestruct(owner);
    |        
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'DroneShowCoinICOContract':
    |        BoughtTokens(msg.sender, tokens);
    |        
  > |        raisedAmount = raisedAmount.add(msg.value);
    |        bonusesGiven = bonusesGiven.add(bonusAmount);
    |        numberOfTransactions = numberOfTransactions.add(1);
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'DroneShowCoinICOContract':
    |        
    |        raisedAmount = raisedAmount.add(msg.value);
  > |        bonusesGiven = bonusesGiven.add(bonusAmount);
    |        numberOfTransactions = numberOfTransactions.add(1);
    |        token.transfer(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'DroneShowCoinICOContract':
    |        raisedAmount = raisedAmount.add(msg.value);
    |        bonusesGiven = bonusesGiven.add(bonusAmount);
  > |        numberOfTransactions = numberOfTransactions.add(1);
    |        token.transfer(msg.sender, tokens);
    |        
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'DroneShowCoinICOContract':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'DroneShowCoinICOContract':
    |        require (initialized == false);
    |        require (tokensAvailable() == numTokens);
  > |        initialized = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(111)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |       * functions, this simplifies the implementation of "user permissions". 
    |          */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |          */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        * @param newOwner The address to transfer ownership to. 
    |             */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(66)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    * @dev Math operations with safety checks that throw on error
    |       */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xf08a7fd4f4b75188e89d0d27c2ae474858402cea.sol(7)


