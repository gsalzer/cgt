Processing contract: /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol:Accessibility
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol:Address
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol:ConstantinopleMasterNodes
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol:InvestorsStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol:Percent
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol:Zero
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Accessibility':
    |
    |
  > |contract Accessibility {
    |    address private owner;
    |    modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(165)

[33mWarning[0m for LockedEther in contract 'Address':
    |
    |
  > |library Address {
    |    function toAddress(bytes source) internal pure returns(address addr) {
    |        assembly { addr := mload(add(source,0x14)) }
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(111)

[33mWarning[0m for LockedEther in contract 'InvestorsStorage':
    |
    |
  > |contract InvestorsStorage is Accessibility {
    |    struct Investment {
    |        uint value;
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |/**
    |
  > |The Constantinople Ethereum Plus is a financial project that is launched so that every Ethereum Holders can make a profit from using the Ethereum Blockchain Network. 
    |The Constantinople Ethereum Plus offers for the Ethereum Holders four ways to increase the amount of Ethereum:
    |1.Get profit by investing in the most modern platform of the Constantinople Ethereum Plus
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |
    |
  > |contract InvestorsStorage is Accessibility {
    |    struct Investment {
    |        uint value;
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        uint investment = investors[addr].overallInvestment;
    |        if (investment < 1 ether) {
  > |            investors[addr].individualPercent = Percent.percent(3,100);
    |        } else if (investment >= 1 ether && investment < 10 ether) {
    |            investors[addr].individualPercent = Percent.percent(4,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(3,100);
    |        } else if (investment >= 1 ether && investment < 10 ether) {
  > |            investors[addr].individualPercent = Percent.percent(4,100);
    |        } else if (investment >= 10 ether && investment < 50 ether) {
    |            investors[addr].individualPercent = Percent.percent(5,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(4,100);
    |        } else if (investment >= 10 ether && investment < 50 ether) {
  > |            investors[addr].individualPercent = Percent.percent(5,100);
    |        } else if (investment >= 150 ether && investment < 250 ether) {
    |            investors[addr].individualPercent = Percent.percent(7,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(5,100);
    |        } else if (investment >= 150 ether && investment < 250 ether) {
  > |            investors[addr].individualPercent = Percent.percent(7,100);
    |        } else if (investment >= 250 ether && investment < 500 ether) {
    |            investors[addr].individualPercent = Percent.percent(10,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(7,100);
    |        } else if (investment >= 250 ether && investment < 500 ether) {
  > |            investors[addr].individualPercent = Percent.percent(10,100);
    |        } else if (investment >= 500 ether && investment < 1000 ether) {
    |            investors[addr].individualPercent = Percent.percent(11,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(10,100);
    |        } else if (investment >= 500 ether && investment < 1000 ether) {
  > |            investors[addr].individualPercent = Percent.percent(11,100);
    |        } else if (investment >= 1000 ether && investment < 2000 ether) {
    |            investors[addr].individualPercent = Percent.percent(14,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(11,100);
    |        } else if (investment >= 1000 ether && investment < 2000 ether) {
  > |            investors[addr].individualPercent = Percent.percent(14,100);
    |        } else if (investment >= 2000 ether && investment < 5000 ether) {
    |            investors[addr].individualPercent = Percent.percent(15,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(14,100);
    |        } else if (investment >= 2000 ether && investment < 5000 ether) {
  > |            investors[addr].individualPercent = Percent.percent(15,100);
    |        } else if (investment >= 5000 ether && investment < 10000 ether) {
    |            investors[addr].individualPercent = Percent.percent(18,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(15,100);
    |        } else if (investment >= 5000 ether && investment < 10000 ether) {
  > |            investors[addr].individualPercent = Percent.percent(18,100);
    |        } else if (investment >= 10000 ether && investment < 30000 ether) {
    |            investors[addr].individualPercent = Percent.percent(20,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(18,100);
    |        } else if (investment >= 10000 ether && investment < 30000 ether) {
  > |            investors[addr].individualPercent = Percent.percent(20,100);
    |        } else if (investment >= 30000 ether && investment < 60000 ether) {
    |            investors[addr].individualPercent = Percent.percent(27,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(20,100);
    |        } else if (investment >= 30000 ether && investment < 60000 ether) {
  > |            investors[addr].individualPercent = Percent.percent(27,100);
    |        } else if (investment >= 60000 ether && investment < 100000 ether) {
    |            investors[addr].individualPercent = Percent.percent(35,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(27,100);
    |        } else if (investment >= 60000 ether && investment < 100000 ether) {
  > |            investors[addr].individualPercent = Percent.percent(35,100);
    |        } else if (investment >= 100000 ether) {
    |            investors[addr].individualPercent = Percent.percent(100,100);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            investors[addr].individualPercent = Percent.percent(35,100);
    |        } else if (investment >= 100000 ether) {
  > |            investors[addr].individualPercent = Percent.percent(100,100);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            return false;
    |        }
  > |        investors[addr].overallInvestment = investmentValue;
    |        investors[addr].paymentTime = paymentTime;
    |        investors[addr].investments.push(Investment(investmentValue, paymentTime, false, false));
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        }
    |        investors[addr].overallInvestment = investmentValue;
  > |        investors[addr].paymentTime = paymentTime;
    |        investors[addr].investments.push(Investment(investmentValue, paymentTime, false, false));
    |        updatePercent(addr);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        investors[addr].overallInvestment = investmentValue;
    |        investors[addr].paymentTime = paymentTime;
  > |        investors[addr].investments.push(Investment(investmentValue, paymentTime, false, false));
    |        updatePercent(addr);
    |        size++;
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        investors[addr].investments.push(Investment(investmentValue, paymentTime, false, false));
    |        updatePercent(addr);
  > |        size++;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            return false;
    |        }
  > |        investors[addr].overallInvestment += value;
    |        investors[addr].investments.push(Investment(value, now, false, false));
    |        updatePercent(addr);
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |        }
    |        investors[addr].overallInvestment += value;
  > |        investors[addr].investments.push(Investment(value, now, false, false));
    |        updatePercent(addr);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |            return false;
    |        }
  > |        investors[addr].paymentTime = paymentTime;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'InvestorsStorage':
    |     
    |    function disqualify(address addr) public onlyOwner returns (bool) {
  > |        investors[addr].overallInvestment = 0;
    |        investors[addr].investments.length = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(298)

[33mWarning[0m for LockedEther in contract 'Math':
    |pragma solidity 0.4.25;
    |pragma experimental ABIEncoderV2;
  > |library Math {
    |    function min(uint a, uint b) internal pure returns(uint) {
    |        if (a > b) {
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(16)

[33mWarning[0m for LockedEther in contract 'Percent':
    |
    |
  > |library Percent {
    |    struct percent {
    |        uint num;
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(53)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    function mul(uint256 _a, uint256 _b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(125)

[33mWarning[0m for LockedEther in contract 'Zero':
    |
    |
  > |library Zero {
    |    function requireNotZero(address addr) internal pure {
    |        require(addr != address(0), "require not zero address");
  at /home/jiaming/mavs_srcs/contract@0x6057c0ee0ff3a6c58a84716b12c5647a95e267a7.sol(26)


