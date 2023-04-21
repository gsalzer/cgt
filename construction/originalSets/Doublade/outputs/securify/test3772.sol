Processing contract: /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol:TokenTimelock
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |    function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |        require(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol(40)

[33mWarning[0m for LockedEther in contract 'TokenTimelock':
    | * beneficiary to extract the tokens after a given release time
    | */
  > |contract TokenTimelock {
    |    using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol(66)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |library SafeERC20 {
    |    function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |        require(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol(42)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |            secondPay = 0;
    |        }else if (block.timestamp >= thirdTime && thirdPay > 0) {
  > |            tmpPay = token.balanceOf(this);
    |            thirdPay = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol(104)

[33mWarning[0m for UnhandledException in contract 'TokenTimelock':
    |        }
    |        require(tmpPay > 0);
  > |        uint256 amount = token.balanceOf(this);
    |        require(amount >= tmpPay);
    |        token.safeTransfer(beneficiary, tmpPay);
  at /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol(108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |library SafeERC20 {
    |    function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |        require(token.transfer(to, value));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol(42)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |            secondPay = 0;
    |        }else if (block.timestamp >= thirdTime && thirdPay > 0) {
  > |            tmpPay = token.balanceOf(this);
    |            thirdPay = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimelock':
    |        }
    |        require(tmpPay > 0);
  > |        uint256 amount = token.balanceOf(this);
    |        require(amount >= tmpPay);
    |        token.safeTransfer(beneficiary, tmpPay);
  at /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |        if(block.timestamp >= firstTime && firstPay > 0){
    |            tmpPay = firstPay;
  > |            firstPay = 0;
    |        }else if(block.timestamp >= secondTime && secondPay > 0 ){
    |            tmpPay = secondPay;
  at /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |        }else if(block.timestamp >= secondTime && secondPay > 0 ){
    |            tmpPay = secondPay;
  > |            secondPay = 0;
    |        }else if (block.timestamp >= thirdTime && thirdPay > 0) {
    |            tmpPay = token.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenTimelock':
    |        }else if (block.timestamp >= thirdTime && thirdPay > 0) {
    |            tmpPay = token.balanceOf(this);
  > |            thirdPay = 0;
    |        }
    |        require(tmpPay > 0);
  at /home/jiaming/mavs_srcs/contract@0xf7d93efa5616836d48573fdee9d6d92873ffe5d5.sol(105)


