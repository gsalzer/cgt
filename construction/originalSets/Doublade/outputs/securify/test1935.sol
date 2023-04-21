Processing contract: /home/jiaming/mavs_srcs/contract@0x7c2d76735b09de69c1ead5849b3a5176fa688f4a.sol:Highfiveeth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Highfiveeth':
    |pragma solidity ^0.4.25;
    |
  > |contract Highfiveeth {
    |    mapping (address => uint256) invested;
    |    mapping (address => uint256) atBlock;
  at /home/jiaming/mavs_srcs/contract@0x7c2d76735b09de69c1ead5849b3a5176fa688f4a.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'Highfiveeth':
    |     * This function show deposit
    |     */
  > |    function showDeposit (address _deposit) public view returns(uint256) {
    |        return invested[_deposit];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c2d76735b09de69c1ead5849b3a5176fa688f4a.sol(129)

[31mViolation[0m for MissingInputValidation in contract 'Highfiveeth':
    |     * This function show block of last change
    |     */
  > |    function showLastChange (address _deposit) public view returns(uint256) {
    |        return atBlock[_deposit];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7c2d76735b09de69c1ead5849b3a5176fa688f4a.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'Highfiveeth':
    |     * This function show unpayed percent of deposit
    |     */
  > |    function showUnpayedPercent (address _deposit) public view returns(uint256) {
    |        uint256 amount = invested[_deposit] * getPercent(_deposit) / 10000 * (block.number - atBlock[_deposit]) / 5900;
    |        return amount;
  at /home/jiaming/mavs_srcs/contract@0x7c2d76735b09de69c1ead5849b3a5176fa688f4a.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'Highfiveeth':
    |     * more than 40 Ether   - 5.0  %
    |     */
  > |        function getPercent(address _investor) internal view returns (uint256) {
    |        uint256 percent = 400;
    |        if(invested[_investor] >= 1 ether && invested[_investor] < 10 ether) {
  at /home/jiaming/mavs_srcs/contract@0x7c2d76735b09de69c1ead5849b3a5176fa688f4a.sol(77)


