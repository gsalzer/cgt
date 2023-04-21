Processing contract: /home/jiaming/mavs_srcs/contract@0x14d5171c7ff67c391e394a0545437aabb639c224.sol:ElecWhitelist
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x14d5171c7ff67c391e394a0545437aabb639c224.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ElecWhitelist':
    |
    |
  > |contract ElecWhitelist is Ownable {
    |    // cap is in wei. The value of 1 is just a stub.
    |    // after kyc registration ends, we change it to the actual value with setUsersCap
  at /home/jiaming/mavs_srcs/contract@0x14d5171c7ff67c391e394a0545437aabb639c224.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecWhitelist':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x14d5171c7ff67c391e394a0545437aabb639c224.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecWhitelist':
    |    // Onwer can also change it at any time
    |    function listAddress( address _user, uint _cap ) public onlyOwner {
  > |        addressCap[_user] = _cap;
    |        ListAddress( _user, _cap, now );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x14d5171c7ff67c391e394a0545437aabb639c224.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecWhitelist':
    |
    |    function setUsersCap( uint _cap ) public  onlyOwner {
  > |        communityusersCap = _cap;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x14d5171c7ff67c391e394a0545437aabb639c224.sol(70)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x14d5171c7ff67c391e394a0545437aabb639c224.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x14d5171c7ff67c391e394a0545437aabb639c224.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x14d5171c7ff67c391e394a0545437aabb639c224.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x14d5171c7ff67c391e394a0545437aabb639c224.sol(36)


