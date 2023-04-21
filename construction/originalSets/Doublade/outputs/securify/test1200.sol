Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol:BaseAirdrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol:ERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol:ICHXAirdrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol:Lockable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol:SelfDestructible
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol:Withdrawal
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BaseAirdrop':
    |// File: contracts/base/BaseAirdrop.sol
    |
  > |contract BaseAirdrop is Lockable {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(185)

[31mViolation[0m for MissingInputValidation in contract 'BaseAirdrop':
    |    address public tokenHolder;
    |
  > |    mapping(address => bool) public users;
    |
    |    event AirdropToken(address indexed to, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'BaseAirdrop':
    |    }
    |
  > |    function airdrop(uint8 v, bytes32 r, bytes32 s, uint amount) public whenNotLocked {
    |        if (users[msg.sender] || ecrecover(prefixedHash(amount), v, r, s) != owner) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(202)

[31mViolation[0m for MissingInputValidation in contract 'BaseAirdrop':
    |    }
    |
  > |    function getAirdropStatus(address user) public constant returns (bool success) {
    |        return users[user];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'BaseAirdrop':
    |contract Ownable {
    |
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'BaseAirdrop':
    |
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'BaseAirdrop':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        pendingOwner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'BaseAirdrop':
    |     * @dev Allows the pendingOwner address to finalize the transfer.
    |     */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'BaseAirdrop':
    |    event Unlock();
    |
  > |    bool public locked = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'BaseAirdrop':
    |     * @dev called by the owner to locke, triggers locked state
    |     */
  > |    function lock() public onlyOwner whenNotLocked {
    |        locked = true;
    |        emit Lock();
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'BaseAirdrop':
    |     *      to unlock, returns to unlocked state
    |     */
  > |    function unlock() public onlyOwner whenLocked {
    |        locked = false;
    |        emit Unlock();
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'BaseAirdrop':
    |    using SafeMath for uint;
    |
  > |    ERC20Token public token;
    |
    |    address public tokenHolder;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'BaseAirdrop':
    |    ERC20Token public token;
    |
  > |    address public tokenHolder;
    |
    |    mapping(address => bool) public users;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'BaseAirdrop':
    |    }
    |
  > |    function originalHash(uint amount) internal view returns (bytes32) {
    |        return keccak256(abi.encodePacked(
    |                "Signed for Airdrop",
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'BaseAirdrop':
    |    }
    |
  > |    function prefixedHash(uint amount) internal view returns (bytes32) {
    |        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
    |        return keccak256(abi.encodePacked(prefix, originalHash(amount)));
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(225)

[33mWarning[0m for UnhandledException in contract 'BaseAirdrop':
    |
    |    function airdrop(uint8 v, bytes32 r, bytes32 s, uint amount) public whenNotLocked {
  > |        if (users[msg.sender] || ecrecover(prefixedHash(amount), v, r, s) != owner) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(203)

[33mWarning[0m for UnhandledException in contract 'BaseAirdrop':
    |        }
    |        users[msg.sender] = true;
  > |        token.transferFrom(tokenHolder, msg.sender, amount);
    |        emit AirdropToken(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseAirdrop':
    |
    |    function airdrop(uint8 v, bytes32 r, bytes32 s, uint amount) public whenNotLocked {
  > |        if (users[msg.sender] || ecrecover(prefixedHash(amount), v, r, s) != owner) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BaseAirdrop':
    |        }
    |        users[msg.sender] = true;
  > |        token.transferFrom(tokenHolder, msg.sender, amount);
    |        emit AirdropToken(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseAirdrop':
    |            revert();
    |        }
  > |        users[msg.sender] = true;
    |        token.transferFrom(tokenHolder, msg.sender, amount);
    |        emit AirdropToken(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseAirdrop':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseAirdrop':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseAirdrop':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseAirdrop':
    |     */
    |    function lock() public onlyOwner whenNotLocked {
  > |        locked = true;
    |        emit Lock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseAirdrop':
    |     */
    |    function unlock() public onlyOwner whenLocked {
  > |        locked = false;
    |        emit Unlock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(170)

[33mWarning[0m for DAOConstantGas in contract 'ICHXAirdrop':
    |    // withdraw funds, if any, only for owner
    |    function withdraw() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(241)

[33mWarning[0m for LockedEther in contract 'ICHXAirdrop':
    | * @title ICHX token airdrop contract.
    | */
  > |contract ICHXAirdrop is BaseAirdrop, Withdrawal, SelfDestructible {
    |
    |    constructor(address _token, address _tokenHolder) public BaseAirdrop(_token, _tokenHolder) {
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(287)

[31mViolation[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |    address public tokenHolder;
    |
  > |    mapping(address => bool) public users;
    |
    |    event AirdropToken(address indexed to, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |    }
    |
  > |    function airdrop(uint8 v, bytes32 r, bytes32 s, uint amount) public whenNotLocked {
    |        if (users[msg.sender] || ecrecover(prefixedHash(amount), v, r, s) != owner) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(202)

[31mViolation[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |    }
    |
  > |    function getAirdropStatus(address user) public constant returns (bool success) {
    |        return users[user];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |contract Ownable {
    |
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        pendingOwner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |     * @dev Allows the pendingOwner address to finalize the transfer.
    |     */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |    event Unlock();
    |
  > |    bool public locked = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |     * @dev called by the owner to locke, triggers locked state
    |     */
  > |    function lock() public onlyOwner whenNotLocked {
    |        locked = true;
    |        emit Lock();
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |     *      to unlock, returns to unlocked state
    |     */
  > |    function unlock() public onlyOwner whenLocked {
    |        locked = false;
    |        emit Unlock();
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |    using SafeMath for uint;
    |
  > |    ERC20Token public token;
    |
    |    address public tokenHolder;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |    ERC20Token public token;
    |
  > |    address public tokenHolder;
    |
    |    mapping(address => bool) public users;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |    }
    |
  > |    function originalHash(uint amount) internal view returns (bytes32) {
    |        return keccak256(abi.encodePacked(
    |                "Signed for Airdrop",
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |    }
    |
  > |    function prefixedHash(uint amount) internal view returns (bytes32) {
    |        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
    |        return keccak256(abi.encodePacked(prefix, originalHash(amount)));
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |
    |    // withdraw funds, if any, only for owner
  > |    function withdraw() public onlyOwner {
    |        owner.transfer(address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(240)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |
    |    // withdraw stuck tokens, if any, only for owner
  > |    function withdrawTokens(address _someToken) public onlyOwner {
    |        ERC20Token someToken = ERC20Token(_someToken);
    |        uint balance = someToken.balanceOf(address(this));
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |    }
    |
  > |    function originalHash() internal view returns (bytes32) {
    |        return keccak256(abi.encodePacked(
    |                "Signed for Selfdestruct",
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(268)

[33mWarning[0m for MissingInputValidation in contract 'ICHXAirdrop':
    |    }
    |
  > |    function prefixedHash() internal view returns (bytes32) {
    |        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
    |        return keccak256(abi.encodePacked(prefix, originalHash()));
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(276)

[31mViolation[0m for TODAmount in contract 'ICHXAirdrop':
    |    // withdraw funds, if any, only for owner
    |    function withdraw() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(241)

[31mViolation[0m for TODReceiver in contract 'ICHXAirdrop':
    |    // withdraw funds, if any, only for owner
    |    function withdraw() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(241)

[33mWarning[0m for UnhandledException in contract 'ICHXAirdrop':
    |
    |    function airdrop(uint8 v, bytes32 r, bytes32 s, uint amount) public whenNotLocked {
  > |        if (users[msg.sender] || ecrecover(prefixedHash(amount), v, r, s) != owner) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(203)

[33mWarning[0m for UnhandledException in contract 'ICHXAirdrop':
    |        }
    |        users[msg.sender] = true;
  > |        token.transferFrom(tokenHolder, msg.sender, amount);
    |        emit AirdropToken(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(207)

[33mWarning[0m for UnhandledException in contract 'ICHXAirdrop':
    |    // withdraw funds, if any, only for owner
    |    function withdraw() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(241)

[33mWarning[0m for UnhandledException in contract 'ICHXAirdrop':
    |    function withdrawTokens(address _someToken) public onlyOwner {
    |        ERC20Token someToken = ERC20Token(_someToken);
  > |        uint balance = someToken.balanceOf(address(this));
    |        someToken.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(247)

[33mWarning[0m for UnhandledException in contract 'ICHXAirdrop':
    |        ERC20Token someToken = ERC20Token(_someToken);
    |        uint balance = someToken.balanceOf(address(this));
  > |        someToken.transfer(owner, balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICHXAirdrop':
    |
    |    function airdrop(uint8 v, bytes32 r, bytes32 s, uint amount) public whenNotLocked {
  > |        if (users[msg.sender] || ecrecover(prefixedHash(amount), v, r, s) != owner) {
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICHXAirdrop':
    |        }
    |        users[msg.sender] = true;
  > |        token.transferFrom(tokenHolder, msg.sender, amount);
    |        emit AirdropToken(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICHXAirdrop':
    |    // withdraw funds, if any, only for owner
    |    function withdraw() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICHXAirdrop':
    |    function withdrawTokens(address _someToken) public onlyOwner {
    |        ERC20Token someToken = ERC20Token(_someToken);
  > |        uint balance = someToken.balanceOf(address(this));
    |        someToken.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICHXAirdrop':
    |        ERC20Token someToken = ERC20Token(_someToken);
    |        uint balance = someToken.balanceOf(address(this));
  > |        someToken.transfer(owner, balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'ICHXAirdrop':
    |            revert();
    |        }
  > |        users[msg.sender] = true;
    |        token.transferFrom(tokenHolder, msg.sender, amount);
    |        emit AirdropToken(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'ICHXAirdrop':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'ICHXAirdrop':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'ICHXAirdrop':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'ICHXAirdrop':
    |     */
    |    function lock() public onlyOwner whenNotLocked {
  > |        locked = true;
    |        emit Lock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'ICHXAirdrop':
    |     */
    |    function unlock() public onlyOwner whenLocked {
  > |        locked = false;
    |        emit Unlock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(170)

[33mWarning[0m for LockedEther in contract 'Lockable':
    | *      implement main operations locking mechanism.
    | */
  > |contract Lockable is Ownable {
    |    event Lock();
    |    event Unlock();
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |contract Ownable {
    |
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        pendingOwner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |     * @dev Allows the pendingOwner address to finalize the transfer.
    |     */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |    event Unlock();
    |
  > |    bool public locked = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |     * @dev called by the owner to locke, triggers locked state
    |     */
  > |    function lock() public onlyOwner whenNotLocked {
    |        locked = true;
    |        emit Lock();
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |     *      to unlock, returns to unlocked state
    |     */
  > |    function unlock() public onlyOwner whenLocked {
    |        locked = false;
    |        emit Unlock();
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |     */
    |    function lock() public onlyOwner whenNotLocked {
  > |        locked = true;
    |        emit Lock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |     */
    |    function unlock() public onlyOwner whenLocked {
  > |        locked = false;
    |        emit Unlock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(170)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions". It has two-stage ownership transfer.
    | */
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        pendingOwner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @dev Allows the pendingOwner address to finalize the transfer.
    |     */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(122)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(9)

[33mWarning[0m for LockedEther in contract 'SelfDestructible':
    | * in case of deployment error.
    | */
  > |contract SelfDestructible is Ownable {
    |
    |    function selfDestruct(uint8 v, bytes32 r, bytes32 s) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(259)

[33mWarning[0m for MissingInputValidation in contract 'SelfDestructible':
    |contract Ownable {
    |
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'SelfDestructible':
    |
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'SelfDestructible':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        pendingOwner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'SelfDestructible':
    |     * @dev Allows the pendingOwner address to finalize the transfer.
    |     */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'SelfDestructible':
    |    }
    |
  > |    function originalHash() internal view returns (bytes32) {
    |        return keccak256(abi.encodePacked(
    |                "Signed for Selfdestruct",
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(268)

[33mWarning[0m for MissingInputValidation in contract 'SelfDestructible':
    |    }
    |
  > |    function prefixedHash() internal view returns (bytes32) {
    |        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
    |        return keccak256(abi.encodePacked(prefix, originalHash()));
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfDestructible':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfDestructible':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfDestructible':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(122)

[33mWarning[0m for DAOConstantGas in contract 'Withdrawal':
    |    // withdraw funds, if any, only for owner
    |    function withdraw() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(241)

[33mWarning[0m for LockedEther in contract 'Withdrawal':
    | * @dev The Withdrawal contract has an owner address, and provides method for withdraw funds and tokens, if any
    | */
  > |contract Withdrawal is Ownable {
    |
    |    // withdraw funds, if any, only for owner
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'Withdrawal':
    |contract Ownable {
    |
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Withdrawal':
    |
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Withdrawal':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        pendingOwner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Withdrawal':
    |     * @dev Allows the pendingOwner address to finalize the transfer.
    |     */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'Withdrawal':
    |
    |    // withdraw funds, if any, only for owner
  > |    function withdraw() public onlyOwner {
    |        owner.transfer(address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(240)

[33mWarning[0m for MissingInputValidation in contract 'Withdrawal':
    |
    |    // withdraw stuck tokens, if any, only for owner
  > |    function withdrawTokens(address _someToken) public onlyOwner {
    |        ERC20Token someToken = ERC20Token(_someToken);
    |        uint balance = someToken.balanceOf(address(this));
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(245)

[31mViolation[0m for TODAmount in contract 'Withdrawal':
    |    // withdraw funds, if any, only for owner
    |    function withdraw() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(241)

[31mViolation[0m for TODReceiver in contract 'Withdrawal':
    |    // withdraw funds, if any, only for owner
    |    function withdraw() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(241)

[33mWarning[0m for UnhandledException in contract 'Withdrawal':
    |    // withdraw funds, if any, only for owner
    |    function withdraw() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(241)

[33mWarning[0m for UnhandledException in contract 'Withdrawal':
    |    function withdrawTokens(address _someToken) public onlyOwner {
    |        ERC20Token someToken = ERC20Token(_someToken);
  > |        uint balance = someToken.balanceOf(address(this));
    |        someToken.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(247)

[33mWarning[0m for UnhandledException in contract 'Withdrawal':
    |        ERC20Token someToken = ERC20Token(_someToken);
    |        uint balance = someToken.balanceOf(address(this));
  > |        someToken.transfer(owner, balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Withdrawal':
    |    // withdraw funds, if any, only for owner
    |    function withdraw() public onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Withdrawal':
    |    function withdrawTokens(address _someToken) public onlyOwner {
    |        ERC20Token someToken = ERC20Token(_someToken);
  > |        uint balance = someToken.balanceOf(address(this));
    |        someToken.transfer(owner, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Withdrawal':
    |        ERC20Token someToken = ERC20Token(_someToken);
    |        uint balance = someToken.balanceOf(address(this));
  > |        someToken.transfer(owner, balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawal':
    |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
  > |        pendingOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawal':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit OwnershipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Withdrawal':
    |        emit OwnershipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2524807188073516056eadd24753fb3cebf8ba.sol(122)


