Processing contract: /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol:Maths
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Maths':
    | * A library to make working with numbers in Solidity hurt your brain less.
    | */
  > |library Maths {
    |  /**
    |   * @dev Adds two addends together, returns the sum
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return sum the sum of the equation (e.g. addendA + addendB)
    |   */
  > |  function plus(
    |    uint256 addendA,
    |    uint256 addendB
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return difference the difference (e.g. minuend - subtrahend)
    |   */
  > |  function minus(
    |    uint256 minuend,
    |    uint256 subtrahend
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return product the product of the equation (e.g. factorA * factorB)
    |   */
  > |  function mul(
    |    uint256 factorA,
    |    uint256 factorB
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return product the product of the equation (e.g. factorA * factorB)
    |   */
  > |  function times(
    |    uint256 factorA,
    |    uint256 factorB
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return quotient the quotient of the equation (e.g. dividend / divisor)
    |   */
  > |  function div(
    |    uint256 dividend,
    |    uint256 divisor
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return quotient the quotient of the equation (e.g. dividend / divisor)
    |   */
  > |  function dividedBy(
    |    uint256 dividend,
    |    uint256 divisor
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return remainder the remainder of the equation (e.g. dividend % divisor)
    |   */
  > |  function divideSafely(
    |    uint256 dividend,
    |    uint256 divisor
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return result the lesser of the two values
    |   */
  > |  function min(
    |    uint256 a,
    |    uint256 b
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return result the greater of the two values
    |   */
  > |  function max(
    |    uint256 a,
    |    uint256 b
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is less than b
    |   */
  > |  function isLessThan(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a < b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is less than or equal to b
    |   */
  > |  function isAtMost(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a <= b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is greater than b
    |   */
  > |  function isGreaterThan(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a > b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is less than b
    |   */
  > |  function isAtLeast(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a >= b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb5f1efa8a3267cce1aea000dd2cc7a0778aa8299.sol(167)


