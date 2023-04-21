Processing contract: /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol:Lottery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol:_Contract
[31mViolation[0m for DAO in contract 'Lottery':
    |        address customerAddress = msg.sender;
    |        //Use deposit to purchase _Contract tokens
  > |        contractCall.buy.value(msg.value)(customerAddress);
    |        // add customer to the entry list
    |        if (entryCounter == (entries.length)) {
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(104)

[31mViolation[0m for DAOConstantGas in contract 'Lottery':
    |        uint256 number = PRNG(); // generates a pseudorandom number
    |        address winner = entries[number]; // choose the winner with the pseudorandom number
  > |        winner.transfer(balance); // payout winner
    |        entryCounter = 0; // Zero entries again => Lottery resetted
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(150)

[33mWarning[0m for DAOConstantGas in contract 'Lottery':
    |    function donateToDev() payable public {
    |        address developer = 0x13373FEdb7f8dF156E5718303897Fae2d363Cc96;
  > |        developer.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(163)

[33mWarning[0m for TODAmount in contract 'Lottery':
    |        address customerAddress = msg.sender;
    |        //Use deposit to purchase _Contract tokens
  > |        contractCall.buy.value(msg.value)(customerAddress);
    |        // add customer to the entry list
    |        if (entryCounter == (entries.length)) {
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(104)

[33mWarning[0m for TODReceiver in contract 'Lottery':
    |        address customerAddress = msg.sender;
    |        //Use deposit to purchase _Contract tokens
  > |        contractCall.buy.value(msg.value)(customerAddress);
    |        // add customer to the entry list
    |        if (entryCounter == (entries.length)) {
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(104)

[33mWarning[0m for TODReceiver in contract 'Lottery':
    |    function donateToDev() payable public {
    |        address developer = 0x13373FEdb7f8dF156E5718303897Fae2d363Cc96;
  > |        developer.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(163)

[33mWarning[0m for UnhandledException in contract 'Lottery':
    |        address customerAddress = msg.sender;
    |        //Use deposit to purchase _Contract tokens
  > |        contractCall.buy.value(msg.value)(customerAddress);
    |        // add customer to the entry list
    |        if (entryCounter == (entries.length)) {
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(104)

[33mWarning[0m for UnhandledException in contract 'Lottery':
    |        if(entryCounter >= automaticThreshold) {
    |            // withdraw + sell all tokens.
  > |            contractCall.exit();
    |
    |            //payout winner & start from beginning
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(120)

[33mWarning[0m for UnhandledException in contract 'Lottery':
    |        uint256 calc2 = 1-calc1;
    |        int256 ov = int8(calc2);
  > |        uint256 calc3 = uint256(sha256(abi.encodePacked(initialize1,ov,initialize3,initialize4)));
    |        uint256 PRN = uint256(keccak256(abi.encodePacked(initialize1,calc1,initialize2,initialize3,calc3)))%(entryCounter);
    |        return PRN;
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(139)

[33mWarning[0m for UnhandledException in contract 'Lottery':
    |        uint256 number = PRNG(); // generates a pseudorandom number
    |        address winner = entries[number]; // choose the winner with the pseudorandom number
  > |        winner.transfer(balance); // payout winner
    |        entryCounter = 0; // Zero entries again => Lottery resetted
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(150)

[33mWarning[0m for UnhandledException in contract 'Lottery':
    |    function donateToDev() payable public {
    |        address developer = 0x13373FEdb7f8dF156E5718303897Fae2d363Cc96;
  > |        developer.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(163)

[33mWarning[0m for UnhandledException in contract 'Lottery':
    |    //Number of tokens currently in the Lottery pool
    |    function myTokens() public view returns(uint256) {
  > |        return contractCall.myTokens();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(168)

[33mWarning[0m for UnhandledException in contract 'Lottery':
    |    //Amount of dividends currently in the Lottery pool
    |    function myDividends() public view returns(uint256) {
  > |        return contractCall.myDividends(true);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(173)

[33mWarning[0m for UnhandledException in contract 'Lottery':
    |      can decide where to send them. (credit: Doublr Contract) */
    |    function returnAnyERC20Token(address tokenAddress, address tokenOwner, uint tokens) public onlyOwner() secCheck(tokenAddress) returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(tokenOwner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery':
    |        if(entryCounter >= automaticThreshold) {
    |            // withdraw + sell all tokens.
  > |            contractCall.exit();
    |
    |            //payout winner & start from beginning
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery':
    |        uint256 calc2 = 1-calc1;
    |        int256 ov = int8(calc2);
  > |        uint256 calc3 = uint256(sha256(abi.encodePacked(initialize1,ov,initialize3,initialize4)));
    |        uint256 PRN = uint256(keccak256(abi.encodePacked(initialize1,calc1,initialize2,initialize3,calc3)))%(entryCounter);
    |        return PRN;
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery':
    |    //Number of tokens currently in the Lottery pool
    |    function myTokens() public view returns(uint256) {
  > |        return contractCall.myTokens();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery':
    |    //Amount of dividends currently in the Lottery pool
    |    function myDividends() public view returns(uint256) {
  > |        return contractCall.myDividends(true);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Lottery':
    |      can decide where to send them. (credit: Doublr Contract) */
    |    function returnAnyERC20Token(address tokenAddress, address tokenOwner, uint tokens) public onlyOwner() secCheck(tokenAddress) returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(tokenOwner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(241)

[31mViolation[0m for UnrestrictedWrite in contract 'Lottery':
    |/*
    |
  > |Author : RNDM (Discord RNDM#3033)
    |Write me if you need coding service
    |My Ethereum address : 0x13373FEdb7f8dF156E5718303897Fae2d363Cc96
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'Lottery':
    |        // add customer to the entry list
    |        if (entryCounter == (entries.length)) {
  > |            entries.push(customerAddress);
    |            }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'Lottery':
    |            }
    |        else {
  > |            entries[entryCounter] = customerAddress;
    |        }
    |        // increment the entry counter
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'Lottery':
    |        }
    |        // increment the entry counter
  > |        entryCounter++;
    |        //fire event
    |        emit BoughtTicket(msg.value, msg.sender, entryCounter);
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'Lottery':
    |        address winner = entries[number]; // choose the winner with the pseudorandom number
    |        winner.transfer(balance); // payout winner
  > |        entryCounter = 0; // Zero entries again => Lottery resetted
    |
    |        emit WinnerPaid(balance, winner);
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'Lottery':
    |            assert(inactivityThreshold < block.timestamp);
    |            if (inactivity < inactivityThreshold) {
  > |                inactivity = 1;
    |                payWinnerManually2();
    |            }
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery':
    |    //Disable the buy restriction
    |    function disableRestriction() onlyOwner() public {
  > |        _restriction = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery':
    |        // Owner is only able to change the threshold when no one bought (otherwise it would be unfair)
    |        require(entryCounter == 0);
  > |        automaticThreshold = newThreshold;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery':
    |        // Owner is only able to change the ticket price when no one bought (otherwise it would be unfair)
    |        require(entryCounter == 0);
  > |        ticketPrice = newticketPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'Lottery':
    |    // check special functions
    |    function imAlive() public onlyOwner() {
  > |        inactivity = 1;
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(207)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    |*/
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |*/
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipRenounced(address indexed previousOwner);
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xadfaae1acc9db0440e43214ef5e7aba7e0a88eb8.sol(44)


