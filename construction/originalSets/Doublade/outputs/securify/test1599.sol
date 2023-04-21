Processing contract: /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol:BlocksquareSeedSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'BlocksquareSeedSale':
    |        }
    |        if(left != 0) {
  > |            if(msg.sender.send(left)) {
    |                FundsReturned(msg.sender, left);
    |                currentAmountRaised = currentAmountRaised.sub(left);
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(180)

[33mWarning[0m for DAOConstantGas in contract 'BlocksquareSeedSale':
    |
    |        if(this.balance >= 100 ether) {
  > |            if(!recipient.send(this.balance)) {
    |                ErrorReturningEth(recipient, this.balance);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(143)

[33mWarning[0m for DAOConstantGas in contract 'BlocksquareSeedSale':
    |    **/
    |    function withdrawEther() public onlyOwner {
  > |        if(!recipient.send(this.balance)) {
    |            ErrorReturningEth(recipient, this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(234)

[33mWarning[0m for LockedEther in contract 'BlocksquareSeedSale':
    |/****************************************/
    |
  > |contract BlocksquareSeedSale is owned {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(59)

[31mViolation[0m for TODAmount in contract 'BlocksquareSeedSale':
    |
    |        if(this.balance >= 100 ether) {
  > |            if(!recipient.send(this.balance)) {
    |                ErrorReturningEth(recipient, this.balance);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(143)

[31mViolation[0m for TODAmount in contract 'BlocksquareSeedSale':
    |    **/
    |    function withdrawEther() public onlyOwner {
  > |        if(!recipient.send(this.balance)) {
    |            ErrorReturningEth(recipient, this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(234)

[33mWarning[0m for TODAmount in contract 'BlocksquareSeedSale':
    |        }
    |        if(left != 0) {
  > |            if(msg.sender.send(left)) {
    |                FundsReturned(msg.sender, left);
    |                currentAmountRaised = currentAmountRaised.sub(left);
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(180)

[33mWarning[0m for TODReceiver in contract 'BlocksquareSeedSale':
    |        }
    |        if(left != 0) {
  > |            if(msg.sender.send(left)) {
    |                FundsReturned(msg.sender, left);
    |                currentAmountRaised = currentAmountRaised.sub(left);
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(180)

[33mWarning[0m for TODReceiver in contract 'BlocksquareSeedSale':
    |    **/
    |    function withdrawEther() public onlyOwner {
  > |        if(!recipient.send(this.balance)) {
    |            ErrorReturningEth(recipient, this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(234)

[33mWarning[0m for UnhandledException in contract 'BlocksquareSeedSale':
    |        }
    |
  > |        reward.mintTokens(msg.sender, tokens);
    |        currentAmountOfTokens = currentAmountOfTokens.add(tokens);
    |        Received(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(137)

[33mWarning[0m for UnhandledException in contract 'BlocksquareSeedSale':
    |
    |        if(this.balance >= 100 ether) {
  > |            if(!recipient.send(this.balance)) {
    |                ErrorReturningEth(recipient, this.balance);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(143)

[33mWarning[0m for UnhandledException in contract 'BlocksquareSeedSale':
    |        }
    |        if(left != 0) {
  > |            if(msg.sender.send(left)) {
    |                FundsReturned(msg.sender, left);
    |                currentAmountRaised = currentAmountRaised.sub(left);
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(180)

[33mWarning[0m for UnhandledException in contract 'BlocksquareSeedSale':
    |    **/
    |    function withdrawEther() public onlyOwner {
  > |        if(!recipient.send(this.balance)) {
    |            ErrorReturningEth(recipient, this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BlocksquareSeedSale':
    |        }
    |
  > |        reward.mintTokens(msg.sender, tokens);
    |        currentAmountOfTokens = currentAmountOfTokens.add(tokens);
    |        Received(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BlocksquareSeedSale':
    |    **/
    |    function withdrawEther() public onlyOwner {
  > |        if(!recipient.send(this.balance)) {
    |            ErrorReturningEth(recipient, this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'BlocksquareSeedSale':
    |    function addAllowanceToRecieveToken(address[] _addresses) public onlyOwner {
    |        for(uint256 i = 0; i < _addresses.length; i++) {
  > |            canRecieveTokens[_addresses[i]] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocksquareSeedSale':
    |        }
    |
  > |        contributed[msg.sender] = contributed[msg.sender].add(msg.value);
    |        currentAmountRaised = currentAmountRaised.add(msg.value);
    |        uint256 tokens = tokensToMint(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocksquareSeedSale':
    |                FundsReturned(msg.sender, left);
    |                currentAmountRaised = currentAmountRaised.sub(left);
  > |                contributed[msg.sender] = contributed[msg.sender].sub(left);
    |            }else {
    |                ErrorReturningEth(msg.sender, left);
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocksquareSeedSale':
    |
    |    function tranferOwnership(address _newOwner) public onlyOwner() {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocksquareSeedSale':
    |    function startICO(uint256 _value) public onlyOwner {
    |        require(!icoHasStarted);
  > |        valueInUSD = _value;
    |        startTime = block.timestamp;
    |        icoHasStarted = true;
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocksquareSeedSale':
    |        require(!icoHasStarted);
    |        valueInUSD = _value;
  > |        startTime = block.timestamp;
    |        icoHasStarted = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocksquareSeedSale':
    |        valueInUSD = _value;
    |        startTime = block.timestamp;
  > |        icoHasStarted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'BlocksquareSeedSale':
    |    function closeICO() public onlyOwner {
    |        require(icoHasStarted);
  > |        icoHasClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(212)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |/*************************/
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(7)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function tranferOwnership(address _newOwner) public onlyOwner() {
    |        owner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function tranferOwnership(address _newOwner) public onlyOwner() {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x659e51a74fd86f9b63dff638b5a91b09e3b96e1e.sol(47)


