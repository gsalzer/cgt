Processing contract: /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol:Fermat
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Fermat':
    |        require(now >= releaseTime);
    |
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(49)

[33mWarning[0m for DAOConstantGas in contract 'Fermat':
    |        uint256 value = solve(a, b, c, n);
    |        if (value == 0) {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(64)

[33mWarning[0m for LockedEther in contract 'Fermat':
    |*/
    |
  > |contract Fermat {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Fermat':
    |    *  in the future from the timestamp of the contract creation
    |    */
  > |    address public owner = msg.sender;
    |    uint releaseTime = now + 17280000;
    |
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Fermat':
    |    * This function is used to increase the bounty
    |    */
  > |    function addBalance() public payable {
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Fermat':
    |    }
    |
  > |    function getOwner() view public returns (address)  {
    |        return owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Fermat':
    |    * to withdraw the deposited funds from the contract.
    |    */
  > |    function getReleaseTime() view public returns (uint)  {
    |        return releaseTime;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Fermat':
    |     * withdraw the bounty after the release time has passed
    |     */
  > |    function withdraw() public {
    |        require(msg.sender == owner);
    |        require(now >= releaseTime);
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Fermat':
    |    }
    |
  > |    function getBalance() view public returns (uint256) {
    |        return this.balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Fermat':
    |     * Returns the value of a^n + b^n - c^n, n > 2
    |     */
  > |    function solve(int256 a, int256 b, int256 c, int256 n) pure public returns (uint256) {
    |        assert(n > 2);
    |        assert(a > 0);
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Fermat':
    |     A safe way to handle exponentiation. Throws error on overflow.
    |    */
  > |    function power(int256 a, int256 pow)  pure public returns (uint256) {
    |        assert(a >= 0);
    |        assert(pow >= 0);
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Fermat':
    |     A safe way to handle addition. Throws error on overflow.
    |    */
  > |    function add(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'Fermat':
    |     A safe way to handle subtraction. Throws error on underflow.
    |    */
  > |    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(118)

[31mViolation[0m for TODAmount in contract 'Fermat':
    |        require(now >= releaseTime);
    |
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(49)

[31mViolation[0m for TODAmount in contract 'Fermat':
    |        uint256 value = solve(a, b, c, n);
    |        if (value == 0) {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(64)

[33mWarning[0m for TODReceiver in contract 'Fermat':
    |        require(now >= releaseTime);
    |
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(49)

[33mWarning[0m for TODReceiver in contract 'Fermat':
    |        uint256 value = solve(a, b, c, n);
    |        if (value == 0) {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(64)

[33mWarning[0m for UnhandledException in contract 'Fermat':
    |        require(now >= releaseTime);
    |
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(49)

[33mWarning[0m for UnhandledException in contract 'Fermat':
    |        uint256 value = solve(a, b, c, n);
    |        if (value == 0) {
  > |            msg.sender.transfer(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(64)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Fermat':
    |        require(now >= releaseTime);
    |
  > |        msg.sender.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdfab9f43f279bd8bd87026b84105c5d1543ae99e.sol(49)


