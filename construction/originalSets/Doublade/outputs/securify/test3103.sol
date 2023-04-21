Processing contract: /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol:MassVestingSender
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol:TokenTimelock
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MassVestingSender':
    |
    |
  > |contract MassVestingSender is Ownable
    |{
    |	mapping(uint32 => bool) processedTransactions;
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'MassVestingSender':
    |contract Ownable
    |{
  > |	address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'MassVestingSender':
    |	* @param newOwner The address to transfer ownership to.
    |	*/
  > |	function transferOwnership(address newOwner) public onlyOwner {
    |		require(newOwner != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'MassVestingSender':
    |
    |
  > |contract MassVestingSender is Ownable
    |{
    |	mapping(uint32 => bool) processedTransactions;
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'MassVestingSender':
    |	}
    |
  > |	function r(ERC20 token) external onlyOwner
    |	{
    |		token.transfer(owner, token.balanceOf(address(this)));
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(154)

[33mWarning[0m for UnhandledException in contract 'MassVestingSender':
    |				TokenTimelock vault = new TokenTimelock(token, receivers[i], vesting[i]);
    |
  > |				require(token.transfer(address(vault), transfers[i]));
    |
    |				processedTransactions[payment_ids[i]] = true;
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(145)

[33mWarning[0m for UnhandledException in contract 'MassVestingSender':
    |	function r(ERC20 token) external onlyOwner
    |	{
  > |		token.transfer(owner, token.balanceOf(address(this)));
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(156)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MassVestingSender':
    |				TokenTimelock vault = new TokenTimelock(token, receivers[i], vesting[i]);
    |
  > |				require(token.transfer(address(vault), transfers[i]));
    |
    |				processedTransactions[payment_ids[i]] = true;
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MassVestingSender':
    |	function r(ERC20 token) external onlyOwner
    |	{
  > |		token.transfer(owner, token.balanceOf(address(this)));
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'MassVestingSender':
    |				require(token.transfer(address(vault), transfers[i]));
    |
  > |				processedTransactions[payment_ids[i]] = true;
    |
    |				emit VestingTransfer(receivers[i], address(vault), vesting[i], transfers[i]);
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'MassVestingSender':
    |
    |		emit OwnershipTransferred(owner, newOwner);
  > |		owner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(59)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable
    |{
    |	address public owner;
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable
    |{
  > |	address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |	* @param newOwner The address to transfer ownership to.
    |	*/
  > |	function transferOwnership(address newOwner) public onlyOwner {
    |		require(newOwner != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |		emit OwnershipTransferred(owner, newOwner);
  > |		owner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(59)

[33mWarning[0m for LockedEther in contract 'TokenTimelock':
    | * beneficiary to extract the tokens after a given release time
    | */
  > |contract TokenTimelock {
    |	// ERC20 basic token contract being held
    |	ERC20 private _token;
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimelock':
    |	 * @return the token being held.
    |	 */
  > |	function token() public view returns (ERC20) {
    |		return _token;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimelock':
    |	 * @return the beneficiary of the tokens.
    |	 */
  > |	function beneficiary() public view returns (address) {
    |		return _beneficiary;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimelock':
    |	 * @return the time when the tokens are released.
    |	 */
  > |	function releaseTime() public view returns (uint256) {
    |		return _releaseTime;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimelock':
    |	 * @notice Transfers tokens held by timelock to beneficiary.
    |	 */
  > |	function release() public {
    |		// solium-disable-next-line security/no-block-members
    |		require(block.timestamp >= _releaseTime);
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(111)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |		require(block.timestamp >= _releaseTime);
    |
  > |		uint256 amount = _token.balanceOf(address(this));
    |		require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(115)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |		require(amount > 0);
    |
  > |		_token.transfer(_beneficiary, amount);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |		require(block.timestamp >= _releaseTime);
    |
  > |		uint256 amount = _token.balanceOf(address(this));
    |		require(amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |		require(amount > 0);
    |
  > |		_token.transfer(_beneficiary, amount);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xcbc66115e9d8655709c3408d0e320410aef1161a.sol(118)


