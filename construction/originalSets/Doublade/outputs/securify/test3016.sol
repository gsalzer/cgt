Processing contract: /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol:PornTokenV2Upgrader
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol:token
[31mViolation[0m for LockedEther in contract 'PornTokenV2Upgrader':
    |}
    |
  > |contract PornTokenV2Upgrader {
    |    address public exchanger;
    |    token public tokenExchange;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |
    |contract PornTokenV2Upgrader {
  > |    address public exchanger;
    |    token public tokenExchange;
    |    token public tokenPtx;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |contract PornTokenV2Upgrader {
    |    address public exchanger;
  > |    token public tokenExchange;
    |    token public tokenPtx;
    |
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |    address public exchanger;
    |    token public tokenExchange;
  > |    token public tokenPtx;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint _value);
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |     * Effectively a 4:1 trade from PT to PTWO
    |     */
  > |    function ptToPtwo() public returns (bool success) {
    |        
    |        uint tokenAmount = tokenPtx.allowance(msg.sender, this);
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |     * Deposit untraded tokens to PornToken Account 100k Safe
    |     */
  > |    function returnUnsoldSafeSmall() public {
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |     * Deposit untraded tokens to PornToken Account 100k Safe
    |     */
  > |    function returnUnsoldSafeMedium() public {
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 100000;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |     * Deposit untraded tokens to PornToken Account 100k Safe
    |     */
  > |    function returnUnsoldSafeLarge() public {
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 1000000;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |     * Deposit untraded tokens to PornToken Account 100k Safe
    |     */
  > |    function returnUnsoldSafeXLarge() public {
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000000;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |     * Deposit traded tokens to PornToken Account 100k Safe
    |     */
  > |    function returnPtSafeSmall() public {
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |     * Deposit traded tokens to PornToken Account 100k Safe
    |     */
  > |    function returnPtSafeMedium() public {
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 100000;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |     * Deposit traded tokens to PornToken Account 100k Safe
    |     */
  > |    function returnPtSafeLarge() public {
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 1000000;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'PornTokenV2Upgrader':
    |     * Deposit traded tokens to PornToken Account 100k Safe
    |     */
  > |    function returnPtSafeXLarge() public {
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000000;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(170)

[33mWarning[0m for UnhandledException in contract 'PornTokenV2Upgrader':
    |    function ptToPtwo() public returns (bool success) {
    |        
  > |        uint tokenAmount = tokenPtx.allowance(msg.sender, this);
    |        require(tokenAmount > 0); 
    |        uint tokenAmountReverseSplitAdjusted = tokenAmount / 4;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(59)

[33mWarning[0m for UnhandledException in contract 'PornTokenV2Upgrader':
    |        uint tokenAmountReverseSplitAdjusted = tokenAmount / 4;
    |        require(tokenAmountReverseSplitAdjusted > 0); 
  > |        require(tokenPtx.transferFrom(msg.sender, this, tokenAmount));
    |        tokenExchange.transfer(msg.sender, tokenAmountReverseSplitAdjusted);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(63)

[33mWarning[0m for UnhandledException in contract 'PornTokenV2Upgrader':
    |        require(tokenAmountReverseSplitAdjusted > 0); 
    |        require(tokenPtx.transferFrom(msg.sender, this, tokenAmount));
  > |        tokenExchange.transfer(msg.sender, tokenAmountReverseSplitAdjusted);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(64)

[33mWarning[0m for UnhandledException in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000;
  > |            tokenExchange.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(87)

[33mWarning[0m for UnhandledException in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 100000;
  > |            tokenExchange.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(99)

[33mWarning[0m for UnhandledException in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 1000000;
  > |            tokenExchange.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(111)

[33mWarning[0m for UnhandledException in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000000;
  > |            tokenExchange.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(123)

[33mWarning[0m for UnhandledException in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000;
  > |            tokenPtx.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(137)

[33mWarning[0m for UnhandledException in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 100000;
  > |            tokenPtx.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(149)

[33mWarning[0m for UnhandledException in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 1000000;
  > |            tokenPtx.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(161)

[33mWarning[0m for UnhandledException in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000000;
  > |            tokenPtx.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornTokenV2Upgrader':
    |    function ptToPtwo() public returns (bool success) {
    |        
  > |        uint tokenAmount = tokenPtx.allowance(msg.sender, this);
    |        require(tokenAmount > 0); 
    |        uint tokenAmountReverseSplitAdjusted = tokenAmount / 4;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(59)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornTokenV2Upgrader':
    |        uint tokenAmountReverseSplitAdjusted = tokenAmount / 4;
    |        require(tokenAmountReverseSplitAdjusted > 0); 
  > |        require(tokenPtx.transferFrom(msg.sender, this, tokenAmount));
    |        tokenExchange.transfer(msg.sender, tokenAmountReverseSplitAdjusted);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(63)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornTokenV2Upgrader':
    |        require(tokenAmountReverseSplitAdjusted > 0); 
    |        require(tokenPtx.transferFrom(msg.sender, this, tokenAmount));
  > |        tokenExchange.transfer(msg.sender, tokenAmountReverseSplitAdjusted);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(64)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000;
  > |            tokenExchange.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(87)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 100000;
  > |            tokenExchange.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(99)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 1000000;
  > |            tokenExchange.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(111)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000000;
  > |            tokenExchange.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(123)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000;
  > |            tokenPtx.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 100000;
  > |            tokenPtx.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 1000000;
  > |            tokenPtx.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornTokenV2Upgrader':
    |        if (exchanger == msg.sender) {
    |            uint tokenAmount = 10000000;
  > |            tokenPtx.transfer(exchanger, tokenAmount * 1 ether);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc58575d957ac5cd69267049eee86be8807ff4343.sol(173)


