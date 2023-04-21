Processing contract: /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol:KyberNetworkProxyInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol:PriceOracleInterface
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol:TokenRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol:TokenRegistryInterface
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(110)

[33mWarning[0m for LockedEther in contract 'PriceOracleInterface':
    |
    |// https://etherscan.io/address/0x3127be52acba38beab6b4b3a406dc04e557c037c#code
  > |contract PriceOracleInterface {
    |
    |    // How much TOKENs you get for 1 ETH, multiplied by 10^18
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'PriceOracleInterface':
    |
    |    // How much TOKENs you get for 1 ETH, multiplied by 10^18
  > |    uint256 public ETHPrice;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(56)

[33mWarning[0m for DAOConstantGas in contract 'TokenRegistry':
    |    function withdrawEthFromBalance() external onlyOperator
    |    {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(287)

[33mWarning[0m for DAOConstantGas in contract 'TokenRegistry':
    |            // Send received ethers to destination address
    |            uint sellerValue = destAmount * (10000 - fee) / 10000;
  > |            destAddress.transfer(sellerValue);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(349)

[33mWarning[0m for LockedEther in contract 'TokenRegistry':
    |
    |
  > |contract TokenRegistry is TokenRegistryInterface, Ownable
    |{
    |    mapping (address => PriceOracleInterface) public priceOracle;
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(116)

[31mViolation[0m for TODAmount in contract 'TokenRegistry':
    |    function withdrawEthFromBalance() external onlyOperator
    |    {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(287)

[33mWarning[0m for TODAmount in contract 'TokenRegistry':
    |            // Send received ethers to destination address
    |            uint sellerValue = destAmount * (10000 - fee) / 10000;
  > |            destAddress.transfer(sellerValue);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(349)

[33mWarning[0m for TODReceiver in contract 'TokenRegistry':
    |    function withdrawEthFromBalance() external onlyOperator
    |    {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(287)

[33mWarning[0m for TODReceiver in contract 'TokenRegistry':
    |            // Send received ethers to destination address
    |            uint sellerValue = destAmount * (10000 - fee) / 10000;
  > |            destAddress.transfer(sellerValue);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(349)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |        require(address(oracle) != address(0));
    |
  > |        uint256 ethPerToken = oracle.ETHPrice();
    |        int256 power = 36 - _tokenContract.decimals();
    |        require(power > 0);
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(187)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |
    |        uint256 ethPerToken = oracle.ETHPrice();
  > |        int256 power = 36 - _tokenContract.decimals();
    |        require(power > 0);
    |        return uint128(uint256(priceWei) * ethPerToken / (10 ** uint256(power)));
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(188)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |
    |        uint256 ethPerToken;
  > |        (, ethPerToken) = oracle.getExpectedRate(ETH_TOKEN_ADDRESS, _tokenContract, priceWei);
    |        require(ethPerToken > 0);
    |        int256 power = 36 - _tokenContract.decimals();
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(199)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |        (, ethPerToken) = oracle.getExpectedRate(ETH_TOKEN_ADDRESS, _tokenContract, priceWei);
    |        require(ethPerToken > 0);
  > |        int256 power = 36 - _tokenContract.decimals();
    |        require(power > 0);
    |        return uint128(uint256(priceWei) * ethPerToken / (10 ** uint256(power)));
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(201)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |    function withdrawTokenFromBalance(ERC20 _tokenContract, address _withdrawToAddress) external onlyOperator
    |    {
  > |        uint256 balance = _tokenContract.balanceOf(address(this));
    |        _tokenContract.transfer(_withdrawToAddress, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(281)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |    {
    |        uint256 balance = _tokenContract.balanceOf(address(this));
  > |        _tokenContract.transfer(_withdrawToAddress, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(282)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |    function withdrawEthFromBalance() external onlyOperator
    |    {
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(287)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |
    |        uint minRate;
  > |        (, minRate) = _kyberNetworkProxy.getExpectedRate(token, ETH_TOKEN_ADDRESS, tokenQty);
    |
    |        // Mitigate ERC20 Approve front-running attack, by initially setting
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(335)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |        // Mitigate ERC20 Approve front-running attack, by initially setting
    |        // allowance to 0
  > |        require(token.approve(_kyberNetworkProxy, 0));
    |
    |        // Approve tokens so network can take them during the swap
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(339)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |
    |        // Approve tokens so network can take them during the swap
  > |        token.approve(address(_kyberNetworkProxy), tokenQty);
    |        uint destAmount = _kyberNetworkProxy.swapTokenToEther(token, tokenQty, minRate);
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(342)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |        // Approve tokens so network can take them during the swap
    |        token.approve(address(_kyberNetworkProxy), tokenQty);
  > |        uint destAmount = _kyberNetworkProxy.swapTokenToEther(token, tokenQty, minRate);
    |
    |        if (destAddress != address(this))
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(343)

[33mWarning[0m for UnhandledException in contract 'TokenRegistry':
    |            // Send received ethers to destination address
    |            uint sellerValue = destAmount * (10000 - fee) / 10000;
  > |            destAddress.transfer(sellerValue);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(349)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'TokenRegistry':
    |            // Send received ethers to destination address
    |            uint sellerValue = destAmount * (10000 - fee) / 10000;
  > |            destAddress.transfer(sellerValue);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(349)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRegistry':
    |        require(address(oracle) != address(0));
    |
  > |        uint256 ethPerToken = oracle.ETHPrice();
    |        int256 power = 36 - _tokenContract.decimals();
    |        require(power > 0);
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRegistry':
    |
    |        uint256 ethPerToken = oracle.ETHPrice();
  > |        int256 power = 36 - _tokenContract.decimals();
    |        require(power > 0);
    |        return uint128(uint256(priceWei) * ethPerToken / (10 ** uint256(power)));
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRegistry':
    |
    |        uint256 ethPerToken;
  > |        (, ethPerToken) = oracle.getExpectedRate(ETH_TOKEN_ADDRESS, _tokenContract, priceWei);
    |        require(ethPerToken > 0);
    |        int256 power = 36 - _tokenContract.decimals();
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRegistry':
    |        (, ethPerToken) = oracle.getExpectedRate(ETH_TOKEN_ADDRESS, _tokenContract, priceWei);
    |        require(ethPerToken > 0);
  > |        int256 power = 36 - _tokenContract.decimals();
    |        require(power > 0);
    |        return uint128(uint256(priceWei) * ethPerToken / (10 ** uint256(power)));
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRegistry':
    |    function withdrawTokenFromBalance(ERC20 _tokenContract, address _withdrawToAddress) external onlyOperator
    |    {
  > |        uint256 balance = _tokenContract.balanceOf(address(this));
    |        _tokenContract.transfer(_withdrawToAddress, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(281)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRegistry':
    |    {
    |        uint256 balance = _tokenContract.balanceOf(address(this));
  > |        _tokenContract.transfer(_withdrawToAddress, balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRegistry':
    |
    |        uint minRate;
  > |        (, minRate) = _kyberNetworkProxy.getExpectedRate(token, ETH_TOKEN_ADDRESS, tokenQty);
    |
    |        // Mitigate ERC20 Approve front-running attack, by initially setting
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(335)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRegistry':
    |        // Mitigate ERC20 Approve front-running attack, by initially setting
    |        // allowance to 0
  > |        require(token.approve(_kyberNetworkProxy, 0));
    |
    |        // Approve tokens so network can take them during the swap
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(339)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRegistry':
    |
    |        // Approve tokens so network can take them during the swap
  > |        token.approve(address(_kyberNetworkProxy), tokenQty);
    |        uint destAmount = _kyberNetworkProxy.swapTokenToEther(token, tokenQty, minRate);
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(342)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRegistry':
    |        // Approve tokens so network can take them during the swap
    |        token.approve(address(_kyberNetworkProxy), tokenQty);
  > |        uint destAmount = _kyberNetworkProxy.swapTokenToEther(token, tokenQty, minRate);
    |
    |        if (destAddress != address(this))
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(343)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |
    |
  > |contract TokenRegistry is TokenRegistryInterface, Ownable
    |{
    |    mapping (address => PriceOracleInterface) public priceOracle;
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |            if (address(allOracleTokens[kindex]) == address(_tokenContract))
    |            {
  > |                allOracleTokens[kindex] = allOracleTokens[allOracleTokens.length-1];
    |                allOracleTokens.length--;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |pragma solidity ^0.4.23;
    |
  > |// ----------------------------------------------------------------------------
    |contract ERC20 {
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |
    |    function addOperator(address _newOperator) public onlyOwner {
  > |        operators[_newOperator] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |
    |    function removeOperator(address _oldOperator) public onlyOwner {
  > |        delete(operators[_oldOperator]);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |    function setAllowConvertTokensToEth(bool _newValue) public onlyOwner
    |    {
  > |        allowConvertTokensToEth = _newValue;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |        require(address(kyberOracle[address(_tokenContract)]) == address(0x0));
    |
  > |        priceOracle[address(_tokenContract)] = _priceOracle;
    |        allTokens.push(_tokenContract);
    |        allOracleTokens.push(_tokenContract);
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |
    |        priceOracle[address(_tokenContract)] = _priceOracle;
  > |        allTokens.push(_tokenContract);
    |        allOracleTokens.push(_tokenContract);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |        priceOracle[address(_tokenContract)] = _priceOracle;
    |        allTokens.push(_tokenContract);
  > |        allOracleTokens.push(_tokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |        require(address(kyberOracle[address(_tokenContract)]) == address(0x0));
    |
  > |        kyberOracle[address(_tokenContract)] = _priceOracle;
    |        allTokens.push(_tokenContract);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |
    |        kyberOracle[address(_tokenContract)] = _priceOracle;
  > |        allTokens.push(_tokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |    function removeToken(ERC20 _tokenContract) external onlyOwner
    |    {
  > |        delete priceOracle[address(_tokenContract)];
    |        delete kyberOracle[address(_tokenContract)];
    |
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRegistry':
    |    {
    |        delete priceOracle[address(_tokenContract)];
  > |        delete kyberOracle[address(_tokenContract)];
    |
    |        /*
  at /home/jiaming/mavs_srcs/contract@0xc45826e68231d56fb2a51105bfa697ef69d7f1da.sol(245)


