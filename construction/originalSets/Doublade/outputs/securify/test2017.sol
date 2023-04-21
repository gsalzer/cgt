Processing contract: /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol:CBS
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol:CanReclaimToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic, Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_mintedAmount > 0);
    |        require(maxSupply_ > 0 && totalSupply_.add(_mintedAmount) <= maxSupply_);
  > |        balances[_target] = balances[_target].add(_mintedAmount);
    |        totalSupply_ = totalSupply_.add(_mintedAmount);
    |        Transfer(0, _target, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(maxSupply_ > 0 && totalSupply_.add(_mintedAmount) <= maxSupply_);
    |        balances[_target] = balances[_target].add(_mintedAmount);
  > |        totalSupply_ = totalSupply_.add(_mintedAmount);
    |        Transfer(0, _target, _mintedAmount);
    |        MintedToken(_target, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(169)

[31mViolation[0m for DAOConstantGas in contract 'CBS':
    |    function transferEther(address _to, uint256 _value) onlyOwner public returns (bool) {
    |        require(_value <= contractEth);
  > |        _to.transfer(_value);
    |        contractEth = contractEth.sub(_value);
    |        TransferContractEth(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(379)

[31mViolation[0m for DAOConstantGas in contract 'CBS':
    |        super.transferByInternal(msg.sender, owner, _value);
    |        SellToken(msg.sender, _value, sellEth);
  > |        msg.sender.transfer(sellEth);
    |        contractEth = contractEth.sub(sellEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(402)

[33mWarning[0m for LockedEther in contract 'CBS':
    |}
    |
  > |contract CBS is StandardToken, CanReclaimToken {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(299)

[33mWarning[0m for TODAmount in contract 'CBS':
    |    function transferEther(address _to, uint256 _value) onlyOwner public returns (bool) {
    |        require(_value <= contractEth);
  > |        _to.transfer(_value);
    |        contractEth = contractEth.sub(_value);
    |        TransferContractEth(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(379)

[33mWarning[0m for TODAmount in contract 'CBS':
    |        super.transferByInternal(msg.sender, owner, _value);
    |        SellToken(msg.sender, _value, sellEth);
  > |        msg.sender.transfer(sellEth);
    |        contractEth = contractEth.sub(sellEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(402)

[33mWarning[0m for TODReceiver in contract 'CBS':
    |    function transferEther(address _to, uint256 _value) onlyOwner public returns (bool) {
    |        require(_value <= contractEth);
  > |        _to.transfer(_value);
    |        contractEth = contractEth.sub(_value);
    |        TransferContractEth(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(379)

[33mWarning[0m for TODReceiver in contract 'CBS':
    |        super.transferByInternal(msg.sender, owner, _value);
    |        SellToken(msg.sender, _value, sellEth);
  > |        msg.sender.transfer(sellEth);
    |        contractEth = contractEth.sub(sellEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(402)

[33mWarning[0m for UnhandledException in contract 'CBS':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.transfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(183)

[33mWarning[0m for UnhandledException in contract 'CBS':
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
    |    uint256 balance = token.balanceOf(this);
  > |    token.transfer(owner, balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(184)

[33mWarning[0m for UnhandledException in contract 'CBS':
    |    function transferEther(address _to, uint256 _value) onlyOwner public returns (bool) {
    |        require(_value <= contractEth);
  > |        _to.transfer(_value);
    |        contractEth = contractEth.sub(_value);
    |        TransferContractEth(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(379)

[33mWarning[0m for UnhandledException in contract 'CBS':
    |        super.transferByInternal(msg.sender, owner, _value);
    |        SellToken(msg.sender, _value, sellEth);
  > |        msg.sender.transfer(sellEth);
    |        contractEth = contractEth.sub(sellEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CBS':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.transfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CBS':
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
    |    uint256 balance = token.balanceOf(this);
  > |    token.transfer(owner, balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(184)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CBS':
    |        super.transferByInternal(msg.sender, owner, _value);
    |        SellToken(msg.sender, _value, sellEth);
  > |        msg.sender.transfer(sellEth);
    |        contractEth = contractEth.sub(sellEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CBS':
    |    function transferEther(address _to, uint256 _value) onlyOwner public returns (bool) {
    |        require(_value <= contractEth);
  > |        _to.transfer(_value);
    |        contractEth = contractEth.sub(_value);
    |        TransferContractEth(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |        uint256 previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] = balances[_from].sub(_value);
    |        // Add the same to the recipient
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |        balances[_from] = balances[_from].sub(_value);
    |        // Add the same to the recipient
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |        require(_mintedAmount > 0);
    |        require(maxSupply_ > 0 && totalSupply_.add(_mintedAmount) <= maxSupply_);
  > |        balances[_target] = balances[_target].add(_mintedAmount);
    |        totalSupply_ = totalSupply_.add(_mintedAmount);
    |        Transfer(0, _target, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |        require(maxSupply_ > 0 && totalSupply_.add(_mintedAmount) <= maxSupply_);
    |        balances[_target] = balances[_target].add(_mintedAmount);
  > |        totalSupply_ = totalSupply_.add(_mintedAmount);
    |        Transfer(0, _target, _mintedAmount);
    |        MintedToken(_target, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |     */
    |    function approve(address _spender, uint256 _value) onlyPayloadSize(2) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) onlyPayloadSize(2) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |
    |        super.transferByInternal(owner, msg.sender, tokens);
  > |        contractEth = contractEth.add(_value);
    |        BuyToken(msg.sender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |        require(_value <= contractEth);
    |        _to.transfer(_value);
  > |        contractEth = contractEth.sub(_value);
    |        TransferContractEth(_to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |        SellToken(msg.sender, _value, sellEth);
    |        msg.sender.transfer(sellEth);
  > |        contractEth = contractEth.sub(sellEth);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |
    |    function setAllowBuy(bool _allowBuy) public onlyOwner {
  > |        allowBuy = _allowBuy;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |
    |    function setBuyPrices(uint256 _newBuyPrice) public onlyOwner {
  > |        buyPrice = _newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |
    |    function setAllowSell(bool _allowSell) public onlyOwner {
  > |        allowSell = _allowSell;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'CBS':
    |
    |    function setSellPrices(uint256 _newSellPrice) public onlyOwner {
  > |        sellPrice = _newSellPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(359)

[33mWarning[0m for LockedEther in contract 'CanReclaimToken':
    |}
    |
  > |contract CanReclaimToken is Ownable {
    |    using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'CanReclaimToken':
    |
    |contract Ownable {
  > |    address public owner;
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'CanReclaimToken':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'CanReclaimToken':
    |   * @param token ERC20Basic The address of the token contract
    |   */
  > |  function reclaimToken(ERC20Basic token) external onlyOwner {
    |    uint256 balance = token.balanceOf(this);
    |    token.transfer(owner, balance);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(182)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.transfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(183)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
    |    uint256 balance = token.balanceOf(this);
  > |    token.transfer(owner, balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(184)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
  > |    uint256 balance = token.balanceOf(this);
    |    token.transfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |  function reclaimToken(ERC20Basic token) external onlyOwner {
    |    uint256 balance = token.balanceOf(this);
  > |    token.transfer(owner, balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'CanReclaimToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(75)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(75)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    |}
    |
  > |library SafeERC20 {
    |    function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |        assert(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(197)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.15;
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_mintedAmount > 0);
    |        require(maxSupply_ > 0 && totalSupply_.add(_mintedAmount) <= maxSupply_);
  > |        balances[_target] = balances[_target].add(_mintedAmount);
    |        totalSupply_ = totalSupply_.add(_mintedAmount);
    |        Transfer(0, _target, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(maxSupply_ > 0 && totalSupply_.add(_mintedAmount) <= maxSupply_);
    |        balances[_target] = balances[_target].add(_mintedAmount);
  > |        totalSupply_ = totalSupply_.add(_mintedAmount);
    |        Transfer(0, _target, _mintedAmount);
    |        MintedToken(_target, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) onlyPayloadSize(2) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) onlyPayloadSize(2) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x833161e61337b6b6a4866cdffabaf20edf25ae77.sol(75)


