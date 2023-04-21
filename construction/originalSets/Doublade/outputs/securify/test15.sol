Processing contract: /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol:Calculator
Processing contract: /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol:Sale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(35)

[33mWarning[0m for DAOConstantGas in contract 'Sale':
    |        require(beneficiary != 0x0);
    |
  > |        beneficiary.transfer(amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(111)

[33mWarning[0m for LockedEther in contract 'Sale':
    |}
    |
  > |contract Sale is Ownable {
    |
    |    //responsible for getting token amount
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'Sale':
    |    }
    |
  > |    function setTokenSeller(address newTokenSeller) onlyOwner {
    |        tokenSeller = newTokenSeller;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'Sale':
    |    }
    |
  > |    function setCalculatorAddress(address calculatorAddress) onlyOwner {
    |        calculator = Calculator(calculatorAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'Sale':
    |    }
    |
  > |    function setMinimalTokens(uint256 _minimalTokens) onlyOwner {
    |        minimalTokens = _minimalTokens;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'Sale':
    |    }
    |
  > |    function withdraw(address beneficiary, uint amount) onlyOwner {
    |        require(beneficiary != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Sale':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Sale':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Sale':
    |    address tokenSeller;
    |
  > |    uint256 public minimalTokens = 100000000000;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Sale':
    |    }
    |
  > |    function buyTokens() payable {
    |        uint256 weiAmount = msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(85)

[33mWarning[0m for TODAmount in contract 'Sale':
    |        require(beneficiary != 0x0);
    |
  > |        beneficiary.transfer(amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(111)

[33mWarning[0m for TODReceiver in contract 'Sale':
    |        require(beneficiary != 0x0);
    |
  > |        beneficiary.transfer(amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(111)

[33mWarning[0m for UnhandledException in contract 'Sale':
    |
    |        // calculate token amount to be created
  > |        uint256 tokens = calculator.getAmount(weiAmount);
    |        assert(tokens >= minimalTokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(89)

[33mWarning[0m for UnhandledException in contract 'Sale':
    |        assert(tokens >= minimalTokens);
    |
  > |        token.transferFrom(tokenSeller, msg.sender, tokens);
    |        TokenPurchase(msg.sender, weiAmount, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(92)

[33mWarning[0m for UnhandledException in contract 'Sale':
    |        require(beneficiary != 0x0);
    |
  > |        beneficiary.transfer(amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(111)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sale':
    |
    |        // calculate token amount to be created
  > |        uint256 tokens = calculator.getAmount(weiAmount);
    |        assert(tokens >= minimalTokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sale':
    |        assert(tokens >= minimalTokens);
    |
  > |        token.transferFrom(tokenSeller, msg.sender, tokens);
    |        TokenPurchase(msg.sender, weiAmount, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(92)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Sale':
    |        require(beneficiary != 0x0);
    |
  > |        beneficiary.transfer(amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Sale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Sale':
    |
    |    function setTokenSeller(address newTokenSeller) onlyOwner {
  > |        tokenSeller = newTokenSeller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Sale':
    |
    |    function setCalculatorAddress(address calculatorAddress) onlyOwner {
  > |        calculator = Calculator(calculatorAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Sale':
    |
    |    function setMinimalTokens(uint256 _minimalTokens) onlyOwner {
  > |        minimalTokens = _minimalTokens;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x00fa44d91d7541d16dd18a48dd6a011de5e887df.sol(105)


