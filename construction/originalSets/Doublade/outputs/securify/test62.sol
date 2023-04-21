Processing contract: /home/jiaming/mavs_srcs/contract@0x03a9458d77dd705829fa758c64dbe770385295cc.sol:PolicyRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'PolicyRegistry':
    | *  @dev A contract to maintain a policy for each subcourt.
    | */
  > |contract PolicyRegistry {
    |    /* Events */
    |
  at /home/jiaming/mavs_srcs/contract@0x03a9458d77dd705829fa758c64dbe770385295cc.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'PolicyRegistry':
    | *  @dev A contract to maintain a policy for each subcourt.
    | */
  > |contract PolicyRegistry {
    |    /* Events */
    |
  at /home/jiaming/mavs_srcs/contract@0x03a9458d77dd705829fa758c64dbe770385295cc.sol(8)

[33mWarning[0m for UnrestrictedWrite in contract 'PolicyRegistry':
    | *  @dev A contract to maintain a policy for each subcourt.
    | */
  > |contract PolicyRegistry {
    |    /* Events */
    |
  at /home/jiaming/mavs_srcs/contract@0x03a9458d77dd705829fa758c64dbe770385295cc.sol(8)

[33mWarning[0m for UnrestrictedWrite in contract 'PolicyRegistry':
    |     *  @param _governor The new value for the `governor` storage variable.
    |     */
  > |    function changeGovernor(address _governor) external onlyByGovernor {governor = _governor;}
    |
    |    /** @dev Sets the policy for the specified subcourt.
  at /home/jiaming/mavs_srcs/contract@0x03a9458d77dd705829fa758c64dbe770385295cc.sol(39)


