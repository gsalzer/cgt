Processing contract: /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol:MithrilToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    | * @dev Interface for erc20 standard
    | */
  > |contract ERC20Token {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        uint256 previousBalances = balanceOf[from].add(balanceOf[to]);
    |
  > |        balanceOf[from] = balanceOf[from].sub(value);
    |        balanceOf[to] = balanceOf[to].add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |
    |        balanceOf[from] = balanceOf[from].sub(value);
  > |        balanceOf[to] = balanceOf[to].add(value);
    |
    |        Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function transferFrom(address from, address to, uint256 value) public returns (bool success) {
    |        require(value <= allowance[from][msg.sender]);
  > |        allowance[from][msg.sender] = allowance[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |     */
    |    function approve(address spender, uint256 value, bytes extraData) public returns (bool success) {
  > |        allowance[msg.sender][spender] = value;
    |        Approval(msg.sender, value, spender, extraData);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(136)

[31mViolation[0m for LockedEther in contract 'MithrilToken':
    | * @dev MithrilToken
    | */
  > |contract MithrilToken is Owned, ERC20Token {
    |
    |    // Address where funds are collected.
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MithrilToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |        OwnershipTransfered(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'MithrilToken':
    |        uint256 previousBalances = balanceOf[from].add(balanceOf[to]);
    |
  > |        balanceOf[from] = balanceOf[from].sub(value);
    |        balanceOf[to] = balanceOf[to].add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'MithrilToken':
    |    function transferFrom(address from, address to, uint256 value) public returns (bool success) {
    |        require(value <= allowance[from][msg.sender]);
  > |        allowance[from][msg.sender] = allowance[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'MithrilToken':
    |     */
    |    function approve(address spender, uint256 value, bytes extraData) public returns (bool success) {
  > |        allowance[msg.sender][spender] = value;
    |        Approval(msg.sender, value, spender, extraData);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'MithrilToken':
    |        require(_vault != 0x0);
    |
  > |        totalSupply = _supply;
    |        vault = _vault;
    |        balanceOf[vault] = totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'MithrilToken':
    |
    |        totalSupply = _supply;
  > |        vault = _vault;
    |        balanceOf[vault] = totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'MithrilToken':
    |        totalSupply = _supply;
    |        vault = _vault;
  > |        balanceOf[vault] = totalSupply;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(160)

[33mWarning[0m for LockedEther in contract 'Owned':
    | * @dev Ownership model
    | */
  > |contract Owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |        OwnershipTransfered(owner);
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    | */
    |contract Owned {
  > |    address public owner;
    |
    |    event OwnershipTransfered(address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |        OwnershipTransfered(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(49)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x9ec017c453daa314624b75c2019ae53dc9f01e41.sol(7)


