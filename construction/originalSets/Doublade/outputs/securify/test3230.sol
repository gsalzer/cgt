Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:BancorChanger
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:IBancorFormula
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:IEtherToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:ISmartToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:ITokenChanger
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:ITokenHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:Managed
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:SmartTokenController
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol:Utils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Managed':
    |    Provides support and utilities for contract management
    |*/
  > |contract Managed {
    |    address public manager;
    |    address public newManager;
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |*/
    |contract Managed {
  > |    address public manager;
    |    address public newManager;
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |contract Managed {
    |    address public manager;
  > |    address public newManager;
    |
    |    event ManagerUpdate(address _prevManager, address _newManager);
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @param _newManager    new contract manager
    |    */
  > |    function transferManagement(address _newManager) public managerOnly {
    |        require(_newManager != manager);
    |        newManager = _newManager;
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'Managed':
    |        @dev used by a new manager to accept a management transfer
    |    */
  > |    function acceptManagement() public {
    |        require(msg.sender == newManager);
    |        ManagerUpdate(manager, newManager);
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |    function transferManagement(address _newManager) public managerOnly {
    |        require(_newManager != manager);
  > |        newManager = _newManager;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        require(msg.sender == newManager);
    |        ManagerUpdate(manager, newManager);
  > |        manager = newManager;
    |        newManager = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Managed':
    |        ManagerUpdate(manager, newManager);
    |        manager = newManager;
  > |        newManager = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(172)

[33mWarning[0m for LockedEther in contract 'Owned':
    |    Provides support and utilities for contract ownership
    |*/
  > |contract Owned is IOwned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(127)

[33mWarning[0m for LockedEther in contract 'SmartTokenController':
    |    Doing that will also remove the owner's ability to upgrade the controller.
    |*/
  > |contract SmartTokenController is TokenHolder {
    |    ISmartToken public token;   // smart token
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(232)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(205)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _newOwner    new token owner
    |    */
  > |    function transferTokenOwnership(address _newOwner) public ownerOnly {
    |        token.transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(263)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _disable    true to disable transfers, false to enable them
    |    */
  > |    function disableTokenTransfers(bool _disable) public ownerOnly {
    |        token.disableTransfers(_disable);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(281)

[31mViolation[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
    |        token.withdrawTokens(_token, _to, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(293)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |*/
    |contract SmartTokenController is TokenHolder {
  > |    ISmartToken public token;   // smart token
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'SmartTokenController':
    |        can only be called by the contract owner
    |    */
  > |    function acceptTokenOwnership() public ownerOnly {
    |        token.acceptOwnership();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(271)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(212)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(264)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(272)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(282)

[33mWarning[0m for UnhandledException in contract 'SmartTokenController':
    |    */
    |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
  > |        token.withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function transferTokenOwnership(address _newOwner) public ownerOnly {
  > |        token.transferOwnership(_newOwner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function acceptTokenOwnership() public ownerOnly {
  > |        token.acceptOwnership();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function disableTokenTransfers(bool _disable) public ownerOnly {
  > |        token.disableTransfers(_disable);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SmartTokenController':
    |    */
    |    function withdrawFromToken(IERC20Token _token, address _to, uint256 _amount) public ownerOnly {
  > |        token.withdrawTokens(_token, _to, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'SmartTokenController':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(127)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |    the owner to send tokens that were sent to the contract by mistake back to their sender.
    |*/
  > |contract TokenHolder is ITokenHolder, Owned, Utils {
    |    /**
    |        @dev constructor
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _amount  amount to withdraw
    |    */
  > |    function withdrawTokens(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(123)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(127)

[33mWarning[0m for LockedEther in contract 'Utils':
    |    Utilities & Common Modifiers
    |*/
  > |contract Utils {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0xd3e4ca9b4f0568ddb896dba2861e88c6c26e5375.sol(6)


