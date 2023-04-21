Processing contract: /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol:AzbitAirdrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol:AzbitTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'AzbitAirdrop':
    |    {
    |        // transfer tokens
  > |        require(azbitToken.transfer(beneficiary, amount), "Tokens were not transferred");
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(224)

[33mWarning[0m for LockedEther in contract 'AzbitAirdrop':
    |
    |
  > |contract AzbitAirdrop is Ownable {
    |
    |    // ** PUBLIC STATE VARIABLES **
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'AzbitAirdrop':
    |    * @param amount The token amount
    |    */
  > |    function sendTokens(
    |        address beneficiary,
    |        uint256 amount
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'AzbitAirdrop':
    |    * @return the address of the owner.
    |    */
  > |    function owner() public view returns(address) {
    |        return _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'AzbitAirdrop':
    |    * @return true if `msg.sender` is the owner of the contract.
    |    */
  > |    function isOwner() public view returns(bool) {
    |        return msg.sender == _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'AzbitAirdrop':
    |    * modifier anymore.
    |    */
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
    |        _owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'AzbitAirdrop':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        _transferOwnership(newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'AzbitAirdrop':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function _transferOwnership(address newOwner) internal {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'AzbitAirdrop':
    |
    |    // Azbit token
  > |    AzbitTokenInterface public azbitToken;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'AzbitAirdrop':
    |    * @return total tokens of this contract.
    |    */
  > |    function contractTokenBalance()
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'AzbitAirdrop':
    |
    |    // Helper: send tokens to beneficiary
  > |    function _sendTokens(
    |        address beneficiary,
    |        uint256 amount
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(217)

[33mWarning[0m for UnhandledException in contract 'AzbitAirdrop':
    |        returns(uint256)
    |    {
  > |        return azbitToken.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(203)

[33mWarning[0m for UnhandledException in contract 'AzbitAirdrop':
    |    {
    |        // transfer tokens
  > |        require(azbitToken.transfer(beneficiary, amount), "Tokens were not transferred");
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(224)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AzbitAirdrop':
    |        returns(uint256)
    |    {
  > |        return azbitToken.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AzbitAirdrop':
    |    {
    |        // transfer tokens
  > |        require(azbitToken.transfer(beneficiary, amount), "Tokens were not transferred");
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'AzbitAirdrop':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'AzbitAirdrop':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'AzbitAirdrop':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(77)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address private _owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @return the address of the owner.
    |    */
  > |    function owner() public view returns(address) {
    |        return _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @return true if `msg.sender` is the owner of the contract.
    |    */
  > |    function isOwner() public view returns(bool) {
    |        return msg.sender == _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * modifier anymore.
    |    */
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
    |        _owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        _transferOwnership(newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function _transferOwnership(address newOwner) internal {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipTransferred(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(_owner, newOwner);
  > |        _owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaaaaa798ebb90066788951e0fc03bc71e6bc2b51.sol(77)


