Processing contract: /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol:SellERC20BasicTokens
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Ownable':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(69)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _token ERC20Basic The address of the token contract
    |     */
  > |    function rescueTokens(ERC20Basic _token) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(owner, balance));
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @dev Withdraw Ether
    |     */
  > |    function withdrawEther() external onlyOwner {
    |        owner.transfer(address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(68)

[31mViolation[0m for TODAmount in contract 'Ownable':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(69)

[31mViolation[0m for TODReceiver in contract 'Ownable':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(69)

[33mWarning[0m for UnhandledException in contract 'Ownable':
    |     */
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(owner, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(61)

[33mWarning[0m for UnhandledException in contract 'Ownable':
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(owner, balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(62)

[33mWarning[0m for UnhandledException in contract 'Ownable':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ownable':
    |     */
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(owner, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(61)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ownable':
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(owner, balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(62)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ownable':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(52)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(78)

[33mWarning[0m for DAOConstantGas in contract 'SellERC20BasicTokens':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(69)

[33mWarning[0m for DAOConstantGas in contract 'SellERC20BasicTokens':
    |
    |        // transfer eth back to owner
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(208)

[33mWarning[0m for LockedEther in contract 'SellERC20BasicTokens':
    | * @title Sell ERC20Basic Tokens
    | */
  > |contract SellERC20BasicTokens is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(124)

[31mViolation[0m for TODAmount in contract 'SellERC20BasicTokens':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(69)

[31mViolation[0m for TODAmount in contract 'SellERC20BasicTokens':
    |
    |        // transfer eth back to owner
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(208)

[33mWarning[0m for TODAmount in contract 'SellERC20BasicTokens':
    |
    |            // refund
  > |            msg.sender.transfer(weiAmount - weiExpense.mul(10 ** decimalDiff));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(198)

[31mViolation[0m for TODReceiver in contract 'SellERC20BasicTokens':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(69)

[31mViolation[0m for TODReceiver in contract 'SellERC20BasicTokens':
    |
    |        // transfer eth back to owner
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(208)

[33mWarning[0m for TODReceiver in contract 'SellERC20BasicTokens':
    |
    |            // refund
  > |            msg.sender.transfer(weiAmount - weiExpense.mul(10 ** decimalDiff));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(198)

[33mWarning[0m for UnhandledException in contract 'SellERC20BasicTokens':
    |     */
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(owner, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(61)

[33mWarning[0m for UnhandledException in contract 'SellERC20BasicTokens':
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(owner, balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(62)

[33mWarning[0m for UnhandledException in contract 'SellERC20BasicTokens':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(69)

[33mWarning[0m for UnhandledException in contract 'SellERC20BasicTokens':
    |
    |        // make sure: onsale > 0
  > |        uint256 balance = token.balanceOf(address(this));
    |        uint256 onsale = balance.sub(deposit);
    |        require(onsale > 0);
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(176)

[33mWarning[0m for UnhandledException in contract 'SellERC20BasicTokens':
    |        // transfer tokens
    |        if (tokenAmount <= onsale) {
  > |            assert(token.transfer(msg.sender, tokenBought));
    |        } else {
    |            uint256 weiExpense = onsale.div(rate + depositRate);
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(188)

[33mWarning[0m for UnhandledException in contract 'SellERC20BasicTokens':
    |
    |            // transfer tokens
  > |            assert(token.transfer(msg.sender, tokenBought));
    |
    |            // refund
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(195)

[33mWarning[0m for UnhandledException in contract 'SellERC20BasicTokens':
    |
    |            // refund
  > |            msg.sender.transfer(weiAmount - weiExpense.mul(10 ** decimalDiff));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(198)

[33mWarning[0m for UnhandledException in contract 'SellERC20BasicTokens':
    |
    |        // onsale -
  > |        onsale = token.balanceOf(address(this)).sub(deposit);
    |
    |        // transfer eth back to owner
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(205)

[33mWarning[0m for UnhandledException in contract 'SellERC20BasicTokens':
    |
    |        // transfer eth back to owner
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(208)

[33mWarning[0m for UnhandledException in contract 'SellERC20BasicTokens':
    |        require(msg.sender == wallet);
    |        require(_amount <= deposit);
  > |        assert(token.transfer(_receiver, _amount));
    |        deposit = deposit.sub(_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SellERC20BasicTokens':
    |     */
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(owner, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(61)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SellERC20BasicTokens':
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(owner, balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(62)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SellERC20BasicTokens':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SellERC20BasicTokens':
    |
    |        // make sure: onsale > 0
  > |        uint256 balance = token.balanceOf(address(this));
    |        uint256 onsale = balance.sub(deposit);
    |        require(onsale > 0);
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SellERC20BasicTokens':
    |        // transfer tokens
    |        if (tokenAmount <= onsale) {
  > |            assert(token.transfer(msg.sender, tokenBought));
    |        } else {
    |            uint256 weiExpense = onsale.div(rate + depositRate);
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SellERC20BasicTokens':
    |
    |            // transfer tokens
  > |            assert(token.transfer(msg.sender, tokenBought));
    |
    |            // refund
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(195)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SellERC20BasicTokens':
    |
    |            // refund
  > |            msg.sender.transfer(weiAmount - weiExpense.mul(10 ** decimalDiff));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(198)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SellERC20BasicTokens':
    |
    |        // onsale -
  > |        onsale = token.balanceOf(address(this)).sub(deposit);
    |
    |        // transfer eth back to owner
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SellERC20BasicTokens':
    |
    |        // transfer eth back to owner
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(208)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SellERC20BasicTokens':
    |        require(msg.sender == wallet);
    |        require(_amount <= deposit);
  > |        assert(token.transfer(_receiver, _amount));
    |        deposit = deposit.sub(_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'SellERC20BasicTokens':
    |
    |        // deposit +
  > |        deposit = deposit.add(tokenDeposit);
    |
    |        // onsale -
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'SellERC20BasicTokens':
    |        require(_amount <= deposit);
    |        assert(token.transfer(_receiver, _amount));
  > |        deposit = deposit.sub(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'SellERC20BasicTokens':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'SellERC20BasicTokens':
    |     */
    |    function setRate(uint256 _rate, uint256 _depositRate) external onlyOwner {
  > |        rate = _rate;
    |        depositRate = _depositRate;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'SellERC20BasicTokens':
    |    function setRate(uint256 _rate, uint256 _depositRate) external onlyOwner {
    |        rate = _rate;
  > |        depositRate = _depositRate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'SellERC20BasicTokens':
    |     */
    |    function setWallet(address _wallet) external onlyOwner {
  > |        wallet = _wallet;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x967719548b8385be3c21ee96bdc57b9409b501cb.sol(241)


