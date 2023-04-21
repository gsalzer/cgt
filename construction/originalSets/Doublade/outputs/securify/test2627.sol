Processing contract: /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol:BitMilleCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BitMilleCrowdsale':
    |       */
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol(247)

[33mWarning[0m for LockedEther in contract 'BitMilleCrowdsale':
    | */
    |
  > |contract BitMilleCrowdsale {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol(87)

[33mWarning[0m for UnhandledException in contract 'BitMilleCrowdsale':
    |     */
    |    function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |        token.transfer(_beneficiary, _tokenAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol(198)

[33mWarning[0m for UnhandledException in contract 'BitMilleCrowdsale':
    |       */
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol(247)

[33mWarning[0m for UnhandledException in contract 'BitMilleCrowdsale':
    |
    |    function withdrawTokens() public onlyAfterClosing returns (bool) {
  > |        token.transfer(wallet, token.balanceOf(this));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitMilleCrowdsale':
    |     */
    |    function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |        token.transfer(_beneficiary, _tokenAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol(198)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitMilleCrowdsale':
    |       */
    |    function _forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitMilleCrowdsale':
    |
    |    function withdrawTokens() public onlyAfterClosing returns (bool) {
  > |        token.transfer(wallet, token.balanceOf(this));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'BitMilleCrowdsale':
    |
    |        // update state
  > |        weiRaised = weiRaised.add(weiAmount);
    |
    |        _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol(158)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xabc0bb482352ad835321e4a5d20682ee3999406b.sol(7)


