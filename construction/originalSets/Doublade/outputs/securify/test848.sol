Processing contract: /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol:VNETPrivatePlacement
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
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(81)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _token ERC20Basic The address of the token contract
    |     */
  > |    function rescueTokens(ERC20Basic _token) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(owner, balance));
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @dev Withdraw Ether
    |     */
  > |    function withdrawEther() external onlyOwner {
    |        owner.transfer(address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(80)

[31mViolation[0m for TODAmount in contract 'Ownable':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(81)

[31mViolation[0m for TODReceiver in contract 'Ownable':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(81)

[33mWarning[0m for UnhandledException in contract 'Ownable':
    |     */
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(owner, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(73)

[33mWarning[0m for UnhandledException in contract 'Ownable':
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(owner, balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(74)

[33mWarning[0m for UnhandledException in contract 'Ownable':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(81)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ownable':
    |     */
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(owner, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(73)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ownable':
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(owner, balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ownable':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(64)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(90)

[33mWarning[0m for DAOConstantGas in contract 'VNETPrivatePlacement':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(81)

[33mWarning[0m for DAOConstantGas in contract 'VNETPrivatePlacement':
    |        if (balance >= tokenAmount) {
    |            assert(vnetToken.transfer(msg.sender, tokenAmount));
  > |            owner.transfer(address(this).balance);
    |        } else {
    |            uint256 expend = balance.div(rate);
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(173)

[33mWarning[0m for DAOConstantGas in contract 'VNETPrivatePlacement':
    |            uint256 expend = balance.div(rate);
    |            assert(vnetToken.transfer(msg.sender, balance));
  > |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
    |            owner.transfer(address(this).balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(177)

[33mWarning[0m for DAOConstantGas in contract 'VNETPrivatePlacement':
    |            assert(vnetToken.transfer(msg.sender, balance));
    |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
  > |            owner.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(178)

[33mWarning[0m for LockedEther in contract 'VNETPrivatePlacement':
    | * @title VNET Token Private Placement
    | */
  > |contract VNETPrivatePlacement is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(136)

[31mViolation[0m for TODAmount in contract 'VNETPrivatePlacement':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(81)

[31mViolation[0m for TODAmount in contract 'VNETPrivatePlacement':
    |        if (balance >= tokenAmount) {
    |            assert(vnetToken.transfer(msg.sender, tokenAmount));
  > |            owner.transfer(address(this).balance);
    |        } else {
    |            uint256 expend = balance.div(rate);
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(173)

[31mViolation[0m for TODAmount in contract 'VNETPrivatePlacement':
    |            assert(vnetToken.transfer(msg.sender, balance));
    |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
  > |            owner.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(178)

[33mWarning[0m for TODAmount in contract 'VNETPrivatePlacement':
    |            uint256 expend = balance.div(rate);
    |            assert(vnetToken.transfer(msg.sender, balance));
  > |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
    |            owner.transfer(address(this).balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(177)

[31mViolation[0m for TODReceiver in contract 'VNETPrivatePlacement':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(81)

[31mViolation[0m for TODReceiver in contract 'VNETPrivatePlacement':
    |        if (balance >= tokenAmount) {
    |            assert(vnetToken.transfer(msg.sender, tokenAmount));
  > |            owner.transfer(address(this).balance);
    |        } else {
    |            uint256 expend = balance.div(rate);
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(173)

[31mViolation[0m for TODReceiver in contract 'VNETPrivatePlacement':
    |            assert(vnetToken.transfer(msg.sender, balance));
    |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
  > |            owner.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(178)

[33mWarning[0m for TODReceiver in contract 'VNETPrivatePlacement':
    |            uint256 expend = balance.div(rate);
    |            assert(vnetToken.transfer(msg.sender, balance));
  > |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
    |            owner.transfer(address(this).balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(177)

[33mWarning[0m for UnhandledException in contract 'VNETPrivatePlacement':
    |     */
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(owner, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(73)

[33mWarning[0m for UnhandledException in contract 'VNETPrivatePlacement':
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(owner, balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(74)

[33mWarning[0m for UnhandledException in contract 'VNETPrivatePlacement':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(81)

[33mWarning[0m for UnhandledException in contract 'VNETPrivatePlacement':
    |    function () public payable {
    |        // Make sure balance > 0
  > |        uint256 balance = vnetToken.balanceOf(address(this));
    |        require(balance > 0);
    |        
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(159)

[33mWarning[0m for UnhandledException in contract 'VNETPrivatePlacement':
    |        // Send VNET
    |        if (balance >= tokenAmount) {
  > |            assert(vnetToken.transfer(msg.sender, tokenAmount));
    |            owner.transfer(address(this).balance);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(172)

[33mWarning[0m for UnhandledException in contract 'VNETPrivatePlacement':
    |        if (balance >= tokenAmount) {
    |            assert(vnetToken.transfer(msg.sender, tokenAmount));
  > |            owner.transfer(address(this).balance);
    |        } else {
    |            uint256 expend = balance.div(rate);
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(173)

[33mWarning[0m for UnhandledException in contract 'VNETPrivatePlacement':
    |        } else {
    |            uint256 expend = balance.div(rate);
  > |            assert(vnetToken.transfer(msg.sender, balance));
    |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
    |            owner.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(176)

[33mWarning[0m for UnhandledException in contract 'VNETPrivatePlacement':
    |            uint256 expend = balance.div(rate);
    |            assert(vnetToken.transfer(msg.sender, balance));
  > |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
    |            owner.transfer(address(this).balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(177)

[33mWarning[0m for UnhandledException in contract 'VNETPrivatePlacement':
    |            assert(vnetToken.transfer(msg.sender, balance));
    |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
  > |            owner.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(178)

[33mWarning[0m for UnhandledException in contract 'VNETPrivatePlacement':
    |     */ 
    |    function sendVNET(address _to, uint256 _amount) external onlyOwner {
  > |        assert(vnetToken.transfer(_to, _amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETPrivatePlacement':
    |     */
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
  > |        uint256 balance = _token.balanceOf(this);
    |        assert(_token.transfer(owner, balance));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(73)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETPrivatePlacement':
    |    function rescueTokens(ERC20Basic _token) external onlyOwner {
    |        uint256 balance = _token.balanceOf(this);
  > |        assert(_token.transfer(owner, balance));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETPrivatePlacement':
    |     */
    |    function withdrawEther() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(81)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETPrivatePlacement':
    |    function () public payable {
    |        // Make sure balance > 0
  > |        uint256 balance = vnetToken.balanceOf(address(this));
    |        require(balance > 0);
    |        
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETPrivatePlacement':
    |        // Send VNET
    |        if (balance >= tokenAmount) {
  > |            assert(vnetToken.transfer(msg.sender, tokenAmount));
    |            owner.transfer(address(this).balance);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(172)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETPrivatePlacement':
    |        if (balance >= tokenAmount) {
    |            assert(vnetToken.transfer(msg.sender, tokenAmount));
  > |            owner.transfer(address(this).balance);
    |        } else {
    |            uint256 expend = balance.div(rate);
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETPrivatePlacement':
    |        } else {
    |            uint256 expend = balance.div(rate);
  > |            assert(vnetToken.transfer(msg.sender, balance));
    |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
    |            owner.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETPrivatePlacement':
    |            uint256 expend = balance.div(rate);
    |            assert(vnetToken.transfer(msg.sender, balance));
  > |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
    |            owner.transfer(address(this).balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETPrivatePlacement':
    |            assert(vnetToken.transfer(msg.sender, balance));
    |            msg.sender.transfer(weiAmount - expend.mul(10 ** 12));
  > |            owner.transfer(address(this).balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VNETPrivatePlacement':
    |     */ 
    |    function sendVNET(address _to, uint256 _amount) external onlyOwner {
  > |        assert(vnetToken.transfer(_to, _amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'VNETPrivatePlacement':
    | * @title VNET Token Private Placement
    | */
  > |contract VNETPrivatePlacement is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'VNETPrivatePlacement':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'VNETPrivatePlacement':
    | * @title VNET Token Private Placement
    | */
  > |contract VNETPrivatePlacement is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x36790877badeb0ab1306dffe6c97a099d96a4f6a.sol(136)


