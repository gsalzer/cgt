Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol:BENEFITToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol:BaseFixedERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol:BaseICOTokenWithBonus
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol:Lockable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BENEFITToken':
    | * @title BENEFIT token contract.
    | */
  > |contract BENEFITToken is BaseICOTokenWithBonus {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |     */
    |    function lock() public onlyOwner whenNotLocked {
  > |        locked = true;
    |        Lock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |     */
    |    function unlock() public onlyOwner whenLocked {
  > |        locked = false;
    |        Unlock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |        require(to_ != address(0) && value_ <= balances[msg.sender]);
    |        // SafeMath.sub will throw an exception if there is not enough balance
  > |        balances[msg.sender] = balances[msg.sender].sub(value_);
    |        balances[to_] = balances[to_].add(value_);
    |        Transfer(msg.sender, to_, value_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |        // SafeMath.sub will throw an exception if there is not enough balance
    |        balances[msg.sender] = balances[msg.sender].sub(value_);
  > |        balances[to_] = balances[to_].add(value_);
    |        Transfer(msg.sender, to_, value_);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |    function transferFrom(address from_, address to_, uint value_) public whenNotLocked returns (bool) {
    |        require(to_ != address(0) && value_ <= balances[from_] && value_ <= allowed[from_][msg.sender]);
  > |        balances[from_] = balances[from_].sub(value_);
    |        balances[to_] = balances[to_].add(value_);
    |        allowed[from_][msg.sender] = allowed[from_][msg.sender].sub(value_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |        require(to_ != address(0) && value_ <= balances[from_] && value_ <= allowed[from_][msg.sender]);
    |        balances[from_] = balances[from_].sub(value_);
  > |        balances[to_] = balances[to_].add(value_);
    |        allowed[from_][msg.sender] = allowed[from_][msg.sender].sub(value_);
    |        Transfer(from_, to_, value_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |        balances[from_] = balances[from_].sub(value_);
    |        balances[to_] = balances[to_].add(value_);
  > |        allowed[from_][msg.sender] = allowed[from_][msg.sender].sub(value_);
    |        Transfer(from_, to_, value_);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |            revert();
    |        }
  > |        allowed[msg.sender][spender_] = value_;
    |        Approval(msg.sender, spender_, value_);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |     */
    |    function changeICO(address ico_) public onlyOwner {
  > |        ico = ico_;
    |        ICOChanged(ico);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |    function setBonusUnlockAt(uint bonusUnlockAt_) public onlyOwner {
    |        require(bonusUnlockAt_ > block.timestamp);
  > |        bonusUnlockAt = bonusUnlockAt_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |    function icoInvestment(address to_, uint amount_, uint bonusAmount_) public onlyICO returns (uint) {
    |        require(isValidICOInvestment(to_, amount_));
  > |        availableSupply = availableSupply.sub(amount_);
    |        balances[to_] = balances[to_].add(amount_);
    |        bonusBalances[to_] = bonusBalances[to_].add(bonusAmount_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |        require(isValidICOInvestment(to_, amount_));
    |        availableSupply = availableSupply.sub(amount_);
  > |        balances[to_] = balances[to_].add(amount_);
    |        bonusBalances[to_] = bonusBalances[to_].add(bonusAmount_);
    |        ICOTokensInvested(to_, amount_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |        availableSupply = availableSupply.sub(amount_);
    |        balances[to_] = balances[to_].add(amount_);
  > |        bonusBalances[to_] = bonusBalances[to_].add(bonusAmount_);
    |        ICOTokensInvested(to_, amount_);
    |        return amount_;
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |        require(availableSupply > 0);
    |        uint burned = availableSupply;
  > |        totalSupply = totalSupply.sub(burned);
    |        availableSupply = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |        uint burned = availableSupply;
    |        totalSupply = totalSupply.sub(burned);
  > |        availableSupply = 0;
    |
    |        TokensBurned(burned);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |            || (group_ == RESERVED_COMPANY_GROUP && block.timestamp >= RESERVED_COMPANY_UNLOCK_AT));
    |        // SafeMath will check reserved[group_] >= amount
  > |        reserved[group_] = reserved[group_].sub(amount_);
    |        balances[to_] = balances[to_].add(amount_);
    |        ReservedTokensDistributed(to_, group_, amount_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'BENEFITToken':
    |        // SafeMath will check reserved[group_] >= amount
    |        reserved[group_] = reserved[group_].sub(amount_);
  > |        balances[to_] = balances[to_].add(amount_);
    |        ReservedTokensDistributed(to_, group_, amount_);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(409)

[33mWarning[0m for LockedEther in contract 'BaseFixedERC20Token':
    |// File: contracts/base/BaseFixedERC20Token.sol
    |
  > |contract BaseFixedERC20Token is Lockable {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseFixedERC20Token':
    |        require(to_ != address(0) && value_ <= balances[msg.sender]);
    |        // SafeMath.sub will throw an exception if there is not enough balance
  > |        balances[msg.sender] = balances[msg.sender].sub(value_);
    |        balances[to_] = balances[to_].add(value_);
    |        Transfer(msg.sender, to_, value_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseFixedERC20Token':
    |        balances[from_] = balances[from_].sub(value_);
    |        balances[to_] = balances[to_].add(value_);
  > |        allowed[from_][msg.sender] = allowed[from_][msg.sender].sub(value_);
    |        Transfer(from_, to_, value_);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseFixedERC20Token':
    |            revert();
    |        }
  > |        allowed[msg.sender][spender_] = value_;
    |        Approval(msg.sender, spender_, value_);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseFixedERC20Token':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseFixedERC20Token':
    |     */
    |    function lock() public onlyOwner whenNotLocked {
  > |        locked = true;
    |        Lock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseFixedERC20Token':
    |     */
    |    function unlock() public onlyOwner whenLocked {
  > |        locked = false;
    |        Unlock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(120)

[33mWarning[0m for LockedEther in contract 'BaseICOTokenWithBonus':
    | * @dev Not mintable, ERC20 compliant token, distributed by ICO/Pre-ICO.
    | */
  > |contract BaseICOTokenWithBonus is BaseFixedERC20Token {
    |
    |    /// @dev Available supply of tokens
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |     */
    |    function lock() public onlyOwner whenNotLocked {
  > |        locked = true;
    |        Lock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |     */
    |    function unlock() public onlyOwner whenLocked {
  > |        locked = false;
    |        Unlock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |        require(to_ != address(0) && value_ <= balances[msg.sender]);
    |        // SafeMath.sub will throw an exception if there is not enough balance
  > |        balances[msg.sender] = balances[msg.sender].sub(value_);
    |        balances[to_] = balances[to_].add(value_);
    |        Transfer(msg.sender, to_, value_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |        // SafeMath.sub will throw an exception if there is not enough balance
    |        balances[msg.sender] = balances[msg.sender].sub(value_);
  > |        balances[to_] = balances[to_].add(value_);
    |        Transfer(msg.sender, to_, value_);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |    function transferFrom(address from_, address to_, uint value_) public whenNotLocked returns (bool) {
    |        require(to_ != address(0) && value_ <= balances[from_] && value_ <= allowed[from_][msg.sender]);
  > |        balances[from_] = balances[from_].sub(value_);
    |        balances[to_] = balances[to_].add(value_);
    |        allowed[from_][msg.sender] = allowed[from_][msg.sender].sub(value_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |        require(to_ != address(0) && value_ <= balances[from_] && value_ <= allowed[from_][msg.sender]);
    |        balances[from_] = balances[from_].sub(value_);
  > |        balances[to_] = balances[to_].add(value_);
    |        allowed[from_][msg.sender] = allowed[from_][msg.sender].sub(value_);
    |        Transfer(from_, to_, value_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |        balances[from_] = balances[from_].sub(value_);
    |        balances[to_] = balances[to_].add(value_);
  > |        allowed[from_][msg.sender] = allowed[from_][msg.sender].sub(value_);
    |        Transfer(from_, to_, value_);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |            revert();
    |        }
  > |        allowed[msg.sender][spender_] = value_;
    |        Approval(msg.sender, spender_, value_);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |     */
    |    function changeICO(address ico_) public onlyOwner {
  > |        ico = ico_;
    |        ICOChanged(ico);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |    function setBonusUnlockAt(uint bonusUnlockAt_) public onlyOwner {
    |        require(bonusUnlockAt_ > block.timestamp);
  > |        bonusUnlockAt = bonusUnlockAt_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |    function icoInvestment(address to_, uint amount_, uint bonusAmount_) public onlyICO returns (uint) {
    |        require(isValidICOInvestment(to_, amount_));
  > |        availableSupply = availableSupply.sub(amount_);
    |        balances[to_] = balances[to_].add(amount_);
    |        bonusBalances[to_] = bonusBalances[to_].add(bonusAmount_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |        require(isValidICOInvestment(to_, amount_));
    |        availableSupply = availableSupply.sub(amount_);
  > |        balances[to_] = balances[to_].add(amount_);
    |        bonusBalances[to_] = bonusBalances[to_].add(bonusAmount_);
    |        ICOTokensInvested(to_, amount_);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseICOTokenWithBonus':
    |        availableSupply = availableSupply.sub(amount_);
    |        balances[to_] = balances[to_].add(amount_);
  > |        bonusBalances[to_] = bonusBalances[to_].add(bonusAmount_);
    |        ICOTokensInvested(to_, amount_);
    |        return amount_;
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(296)

[33mWarning[0m for LockedEther in contract 'Lockable':
    | *      implement main operations locking mechanism.
    | */
  > |contract Lockable is Ownable {
    |    event Lock();
    |    event Unlock();
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |    event Unlock();
    |
  > |    bool public locked = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |     * @dev called by the owner to locke, triggers locked state
    |     */
  > |    function lock() public onlyOwner whenNotLocked {
    |        locked = true;
    |        Lock();
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'Lockable':
    |     *      to unlock, returns to unlocked state
    |     */
  > |    function unlock() public onlyOwner whenLocked {
    |        locked = false;
    |        Unlock();
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |     */
    |    function lock() public onlyOwner whenNotLocked {
  > |        locked = true;
    |        Lock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Lockable':
    |     */
    |    function unlock() public onlyOwner whenLocked {
  > |        locked = false;
    |        Unlock();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(120)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(72)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4c2b12b0b55bb905d1ab300864213270033d361c.sol(9)


