Processing contract: /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol:TokenVesting
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
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(104)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |    function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |        require(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(43)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(121)

[33mWarning[0m for LockedEther in contract 'TokenVesting':
    | * owner.
    | */
  > |contract TokenVesting is Ownable {
    |    using SafeMath for uint256;
    |    using SafeERC20 for ERC20Basic;
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(171)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |library SafeERC20 {
    |    function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |        require(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(45)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |        require(!revoked[token]);
    |
  > |        uint256 balance = token.balanceOf(this);
    |
    |        uint256 unreleased = releasableAmount(token);
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(242)

[33mWarning[0m for UnhandledException in contract 'TokenVesting':
    |     */
    |    function vestedAmount(ERC20Basic token) public view returns (uint256) {
  > |        uint256 currentBalance = token.balanceOf(this);
    |        uint256 totalBalance = currentBalance.add(released[token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(267)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |library SafeERC20 {
    |    function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |        require(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(45)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |        require(!revoked[token]);
    |
  > |        uint256 balance = token.balanceOf(this);
    |
    |        uint256 unreleased = releasableAmount(token);
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(242)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVesting':
    |     */
    |    function vestedAmount(ERC20Basic token) public view returns (uint256) {
  > |        uint256 currentBalance = token.balanceOf(this);
    |        uint256 totalBalance = currentBalance.add(released[token]);
    |
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |        require(unreleased > 0);
    |
  > |        released[token] = released[token].add(unreleased);
    |
    |        token.safeTransfer(beneficiary, unreleased);
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVesting':
    |        uint256 refund = balance.sub(unreleased);
    |
  > |        revoked[token] = true;
    |
    |        token.safeTransfer(owner, refund);
  at /home/jiaming/mavs_srcs/contract@0x996f21b677fc6d68f51c74018877512288ebb545.sol(247)


