Processing contract: /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol:VNETTokenPreSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _token ERC20Basic The address of the token contract
    |     */
  > |    function rescueTokens(ERC20Basic _token, address _receiver) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(_receiver, balance));
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(58)

[33mWarning[0m for UnhandledException in contract 'Ownable':
    |     */
    |    function rescueTokens(ERC20Basic _token, address _receiver) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(_receiver, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(70)

[33mWarning[0m for UnhandledException in contract 'Ownable':
    |    function rescueTokens(ERC20Basic _token, address _receiver) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(_receiver, balance));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(71)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ownable':
    |     */
    |    function rescueTokens(ERC20Basic _token, address _receiver) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(_receiver, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(70)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ownable':
    |    function rescueTokens(ERC20Basic _token, address _receiver) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(_receiver, balance));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(61)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(80)

[31mViolation[0m for DAOConstantGas in contract 'VNETTokenPreSale':
    |            emit BuyVNET(msg.sender, ratioNext, vnetBalance, weiExpend);
    |            vnetSold = vnetSold.add(vnetBalance);
  > |            msg.sender.transfer(weiAmount.sub(weiExpend));
    |            if (weiExpend >= weiWelfare) {
    |                welfare[msg.sender] = true;
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(191)

[33mWarning[0m for DAOConstantGas in contract 'VNETTokenPreSale':
    |        // transfer Ether
    |        uint256 etherBalance = address(this).balance;
  > |        wallet.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(203)

[33mWarning[0m for LockedEther in contract 'VNETTokenPreSale':
    | * @title VNET Token Pre-Sale
    | */
  > |contract VNETTokenPreSale is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(126)

[31mViolation[0m for TODAmount in contract 'VNETTokenPreSale':
    |        // transfer Ether
    |        uint256 etherBalance = address(this).balance;
  > |        wallet.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(203)

[33mWarning[0m for TODAmount in contract 'VNETTokenPreSale':
    |            emit BuyVNET(msg.sender, ratioNext, vnetBalance, weiExpend);
    |            vnetSold = vnetSold.add(vnetBalance);
  > |            msg.sender.transfer(weiAmount.sub(weiExpend));
    |            if (weiExpend >= weiWelfare) {
    |                welfare[msg.sender] = true;
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(191)

[31mViolation[0m for TODReceiver in contract 'VNETTokenPreSale':
    |        // transfer Ether
    |        uint256 etherBalance = address(this).balance;
  > |        wallet.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(203)

[33mWarning[0m for TODReceiver in contract 'VNETTokenPreSale':
    |            emit BuyVNET(msg.sender, ratioNext, vnetBalance, weiExpend);
    |            vnetSold = vnetSold.add(vnetBalance);
  > |            msg.sender.transfer(weiAmount.sub(weiExpend));
    |            if (weiExpend >= weiWelfare) {
    |                welfare[msg.sender] = true;
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(191)

[33mWarning[0m for UnhandledException in contract 'VNETTokenPreSale':
    |     */
    |    function rescueTokens(ERC20Basic _token, address _receiver) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(_receiver, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(70)

[33mWarning[0m for UnhandledException in contract 'VNETTokenPreSale':
    |    function rescueTokens(ERC20Basic _token, address _receiver) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(_receiver, balance));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(71)

[33mWarning[0m for UnhandledException in contract 'VNETTokenPreSale':
    |    function () public payable {
    |        // Make sure token balance > 0
  > |        uint256 vnetBalance = vnetToken.balanceOf(address(this));
    |        require(vnetBalance > 0);
    |        require(vnetSold < vnetSupply);
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(165)

[33mWarning[0m for UnhandledException in contract 'VNETTokenPreSale':
    |        // Transfer VNET
    |        if (vnetBalance >= vnetAmount) {
  > |            assert(vnetToken.transfer(msg.sender, vnetAmount));
    |            emit BuyVNET(msg.sender, ratioNext, vnetAmount, weiAmount);
    |            vnetSold = vnetSold.add(vnetAmount);
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(179)

[33mWarning[0m for UnhandledException in contract 'VNETTokenPreSale':
    |        } else {
    |            uint256 weiExpend = vnetBalance.mul(10 ** 18).div(ratioNext);
  > |            assert(vnetToken.transfer(msg.sender, vnetBalance));
    |            emit BuyVNET(msg.sender, ratioNext, vnetBalance, weiExpend);
    |            vnetSold = vnetSold.add(vnetBalance);
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(188)

[33mWarning[0m for UnhandledException in contract 'VNETTokenPreSale':
    |            emit BuyVNET(msg.sender, ratioNext, vnetBalance, weiExpend);
    |            vnetSold = vnetSold.add(vnetBalance);
  > |            msg.sender.transfer(weiAmount.sub(weiExpend));
    |            if (weiExpend >= weiWelfare) {
    |                welfare[msg.sender] = true;
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(191)

[33mWarning[0m for UnhandledException in contract 'VNETTokenPreSale':
    |        // transfer Ether
    |        uint256 etherBalance = address(this).balance;
  > |        wallet.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETTokenPreSale':
    |     */
    |    function rescueTokens(ERC20Basic _token, address _receiver) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(_receiver, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(70)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETTokenPreSale':
    |    function rescueTokens(ERC20Basic _token, address _receiver) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(_receiver, balance));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(71)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETTokenPreSale':
    |    function () public payable {
    |        // Make sure token balance > 0
  > |        uint256 vnetBalance = vnetToken.balanceOf(address(this));
    |        require(vnetBalance > 0);
    |        require(vnetSold < vnetSupply);
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETTokenPreSale':
    |        // Transfer VNET
    |        if (vnetBalance >= vnetAmount) {
  > |            assert(vnetToken.transfer(msg.sender, vnetAmount));
    |            emit BuyVNET(msg.sender, ratioNext, vnetAmount, weiAmount);
    |            vnetSold = vnetSold.add(vnetAmount);
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETTokenPreSale':
    |        } else {
    |            uint256 weiExpend = vnetBalance.mul(10 ** 18).div(ratioNext);
  > |            assert(vnetToken.transfer(msg.sender, vnetBalance));
    |            emit BuyVNET(msg.sender, ratioNext, vnetBalance, weiExpend);
    |            vnetSold = vnetSold.add(vnetBalance);
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETTokenPreSale':
    |            emit BuyVNET(msg.sender, ratioNext, vnetBalance, weiExpend);
    |            vnetSold = vnetSold.add(vnetBalance);
  > |            msg.sender.transfer(weiAmount.sub(weiExpend));
    |            if (weiExpend >= weiWelfare) {
    |                welfare[msg.sender] = true;
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETTokenPreSale':
    |        // transfer Ether
    |        uint256 etherBalance = address(this).balance;
  > |        wallet.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'VNETTokenPreSale':
    |            assert(vnetToken.transfer(msg.sender, vnetAmount));
    |            emit BuyVNET(msg.sender, ratioNext, vnetAmount, weiAmount);
  > |            vnetSold = vnetSold.add(vnetAmount);
    |            if (weiAmount >= weiWelfare) {
    |                welfare[msg.sender] = true;
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'VNETTokenPreSale':
    |            vnetSold = vnetSold.add(vnetAmount);
    |            if (weiAmount >= weiWelfare) {
  > |                welfare[msg.sender] = true;
    |                emit Welfare(msg.sender);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'VNETTokenPreSale':
    |            assert(vnetToken.transfer(msg.sender, vnetBalance));
    |            emit BuyVNET(msg.sender, ratioNext, vnetBalance, weiExpend);
  > |            vnetSold = vnetSold.add(vnetBalance);
    |            msg.sender.transfer(weiAmount.sub(weiExpend));
    |            if (weiExpend >= weiWelfare) {
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'VNETTokenPreSale':
    |            msg.sender.transfer(weiAmount.sub(weiExpend));
    |            if (weiExpend >= weiWelfare) {
  > |                welfare[msg.sender] = true;
    |                emit Welfare(msg.sender);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'VNETTokenPreSale':
    |     */
    |    function calcRatioNext() private {
  > |        ratioNext = ethPrice.mul(10 ** 6).div(vnetPriceStart.add(vnetPriceTarget.sub(vnetPriceStart).mul(vnetSold).div(vnetSupply)));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'VNETTokenPreSale':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'VNETTokenPreSale':
    |     */
    |    function updateWallet(address _wallet) onlyOwner public {
  > |        wallet = _wallet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'VNETTokenPreSale':
    |     */
    |    function updateEthPrice(uint256 _ethPrice) onlyOwner public {
  > |        ethPrice = _ethPrice;
    |        emit EthPrice(_ethPrice);
    |        calcRatioNext();
  at /home/jiaming/mavs_srcs/contract@0x652729577d5c5a13060f81c256aa79adb264f188.sol(224)


