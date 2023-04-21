Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol:DStore
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol:ERC20Detailed
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol:ERC664Balances
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol:IERC664Balances
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol:PreDeriveum
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol:SafeGuard
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'DStore':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for LockedEther in contract 'DStore':
    | * @author Panos
    | */
  > |contract DStore is ERC664Balances {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(640)

[33mWarning[0m for TODAmount in contract 'DStore':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for TODReceiver in contract 'DStore':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for UnhandledException in contract 'DStore':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DStore':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[31mViolation[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function setApprove(address _sender, address _spender, uint256 _value) external onlyModule returns (bool) {
  > |        allowed[_sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(518)

[31mViolation[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function decApprove(address _from, address _spender, uint _value) external onlyModule returns (bool) {
  > |        allowed[_from][_spender] = allowed[_from][_spender].sub(_value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(530)

[31mViolation[0m for UnrestrictedWrite in contract 'DStore':
    |    onlyModule
    |    returns (bool) {
  > |        balances[_from] = balances[_from].sub(_amount);
    |        emit BalanceAdj(msg.sender, _from, _amount, "-");
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(681)

[31mViolation[0m for UnrestrictedWrite in contract 'DStore':
    |        balances[_from] = balances[_from].sub(_amount);
    |        emit BalanceAdj(msg.sender, _from, _amount, "-");
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit BalanceAdj(msg.sender, _to, _amount, "+");
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(683)

[31mViolation[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function incApprove(address _from, address _spender, uint _value) external onlyModule returns (bool) {
  > |        allowed[_from][_spender] = allowed[_from][_spender].add(_value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(696)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function setModule(address _acct, bool _set) external onlyOwner returns (bool) {
  > |        modules[_acct] = _set;
    |        emit ModuleSet(_acct, _set);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(561)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function transferRoot(address _newOwner) external onlyOwner returns(bool) {
  > |        owner = _newOwner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(571)

[33mWarning[0m for LockedEther in contract 'ERC20':
    | * Originally based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract ERC20 is IERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
    |        _transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(spender != address(0));
    |
  > |        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(to != address(0));
    |
  > |        _balances[from] = _balances[from].sub(value);
    |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(429)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |        _balances[from] = _balances[from].sub(value);
  > |        _balances[to] = _balances[to].add(value);
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(430)

[33mWarning[0m for DAO in contract 'ERC664Balances':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for LockedEther in contract 'ERC664Balances':
    | * @author chrisfranko
    | */
  > |contract ERC664Balances is IERC664Balances, SafeGuard {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(483)

[33mWarning[0m for TODAmount in contract 'ERC664Balances':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for TODReceiver in contract 'ERC664Balances':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for UnhandledException in contract 'ERC664Balances':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC664Balances':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function setApprove(address _sender, address _spender, uint256 _value) external onlyModule returns (bool) {
  > |        allowed[_sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(518)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function decApprove(address _from, address _spender, uint _value) external onlyModule returns (bool) {
  > |        allowed[_from][_spender] = allowed[_from][_spender].sub(_value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(530)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |    */
    |    function incTotalSupply(uint _val) external onlyOwner returns (bool) {
  > |        totalSupply = totalSupply.add(_val);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function decTotalSupply(uint _val) external onlyOwner returns (bool) {
  > |        totalSupply = totalSupply.sub(_val);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(550)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function setModule(address _acct, bool _set) external onlyOwner returns (bool) {
  > |        modules[_acct] = _set;
    |        emit ModuleSet(_acct, _set);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(561)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function transferRoot(address _newOwner) external onlyOwner returns(bool) {
  > |        owner = _newOwner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(571)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function incBalance(address _acct, uint _val) public onlyModule returns (bool) {
  > |        balances[_acct] = balances[_acct].add(_val);
    |        emit BalanceAdj(msg.sender, _acct, _val, "+");
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(618)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function decBalance(address _acct, uint _val) public onlyModule returns (bool) {
  > |        balances[_acct] = balances[_acct].sub(_val);
    |        emit BalanceAdj(msg.sender, _acct, _val, "-");
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(630)

[33mWarning[0m for LockedEther in contract 'Owned':
    | *  the ownership to be removed to allow for decentralization
    | */
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |     * @param _newOwnerCandidate The address being proposed as the new owner
    |     */
  > |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |     *  transfer of ownership
    |     */
  > |    function acceptOwnership() external {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |     * @param _newOwner The address of the new owner
    |     */
  > |    function changeOwnership(address _newOwner) external onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |     * @param _dac `0xdac` has to be entered for this function to work
    |     */
  > |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |     */
    |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(214)

[33mWarning[0m for DAO in contract 'PreDeriveum':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for LockedEther in contract 'PreDeriveum':
    | *
    | */
  > |contract PreDeriveum is ERC20, ERC20Detailed, SafeGuard {
    |    uint256 public constant INITIAL_SUPPLY = 10000000000;
    |    DStore public tokenDB;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(732)

[33mWarning[0m for TODAmount in contract 'PreDeriveum':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for TODReceiver in contract 'PreDeriveum':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |    */
    |    function totalSupply() public view returns (uint256) {
  > |        return tokenDB.getTotalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(751)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |    */
    |    function balanceOf(address owner) public view returns (uint256) {
  > |        return tokenDB.getBalance(owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(760)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |     */
    |    function allowance(address owner, address spender) public view returns (uint256) {
  > |        return tokenDB.getAllowance(owner, spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(770)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |        require(spender != address(0));
    |
  > |        require(tokenDB.setApprove(msg.sender, spender, value));
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(785)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        uint256 allow = tokenDB.getAllowance(from, msg.sender);
    |        allow = allow.sub(value);
    |        require(tokenDB.setApprove(from, msg.sender, allow));
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(797)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |        uint256 allow = tokenDB.getAllowance(from, msg.sender);
    |        allow = allow.sub(value);
  > |        require(tokenDB.setApprove(from, msg.sender, allow));
    |        _transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(799)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |        require(spender != address(0));
    |
  > |        uint256 allow = tokenDB.getAllowance(msg.sender, spender);
    |        allow = allow.add(addedValue);
    |        require(tokenDB.setApprove(msg.sender, spender, allow));
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(816)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |        uint256 allow = tokenDB.getAllowance(msg.sender, spender);
    |        allow = allow.add(addedValue);
  > |        require(tokenDB.setApprove(msg.sender, spender, allow));
    |        emit Approval(msg.sender, spender, allow);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(818)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |        require(spender != address(0));
    |
  > |        uint256 allow = tokenDB.getAllowance(msg.sender, spender);
    |        allow = allow.sub(subtractedValue);
    |        require(tokenDB.setApprove(msg.sender, spender, allow));
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(835)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |        uint256 allow = tokenDB.getAllowance(msg.sender, spender);
    |        allow = allow.sub(subtractedValue);
  > |        require(tokenDB.setApprove(msg.sender, spender, allow));
    |        emit Approval(msg.sender, spender, allow);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(837)

[33mWarning[0m for UnhandledException in contract 'PreDeriveum':
    |        require(to != address(0));
    |
  > |        require(tokenDB.move(from, to, value));
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(851)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |    */
    |    function totalSupply() public view returns (uint256) {
  > |        return tokenDB.getTotalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(751)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |    */
    |    function balanceOf(address owner) public view returns (uint256) {
  > |        return tokenDB.getBalance(owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(760)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |     */
    |    function allowance(address owner, address spender) public view returns (uint256) {
  > |        return tokenDB.getAllowance(owner, spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(770)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |        require(spender != address(0));
    |
  > |        require(tokenDB.setApprove(msg.sender, spender, value));
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(785)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |     */
    |    function transferFrom(address from, address to, uint256 value) public returns (bool) {
  > |        uint256 allow = tokenDB.getAllowance(from, msg.sender);
    |        allow = allow.sub(value);
    |        require(tokenDB.setApprove(from, msg.sender, allow));
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(797)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |        uint256 allow = tokenDB.getAllowance(from, msg.sender);
    |        allow = allow.sub(value);
  > |        require(tokenDB.setApprove(from, msg.sender, allow));
    |        _transfer(from, to, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(799)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |        require(spender != address(0));
    |
  > |        uint256 allow = tokenDB.getAllowance(msg.sender, spender);
    |        allow = allow.add(addedValue);
    |        require(tokenDB.setApprove(msg.sender, spender, allow));
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(816)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |        uint256 allow = tokenDB.getAllowance(msg.sender, spender);
    |        allow = allow.add(addedValue);
  > |        require(tokenDB.setApprove(msg.sender, spender, allow));
    |        emit Approval(msg.sender, spender, allow);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(818)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |        require(spender != address(0));
    |
  > |        uint256 allow = tokenDB.getAllowance(msg.sender, spender);
    |        allow = allow.sub(subtractedValue);
    |        require(tokenDB.setApprove(msg.sender, spender, allow));
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(835)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |        uint256 allow = tokenDB.getAllowance(msg.sender, spender);
    |        allow = allow.sub(subtractedValue);
  > |        require(tokenDB.setApprove(msg.sender, spender, allow));
    |        emit Approval(msg.sender, spender, allow);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(837)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |        require(to != address(0));
    |
  > |        require(tokenDB.move(from, to, value));
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(851)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreDeriveum':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'PreDeriveum':
    |     */
    |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'PreDeriveum':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'PreDeriveum':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'PreDeriveum':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'PreDeriveum':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'PreDeriveum':
    |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'PreDeriveum':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(214)

[33mWarning[0m for DAO in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for LockedEther in contract 'SafeGuard':
    | * @author Panos
    | */
  > |contract SafeGuard is Owned {
    |
    |    event Transaction(address indexed destination, uint value, bytes data);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(223)

[31mViolation[0m for MissingInputValidation in contract 'SafeGuard':
    |     * @param _newOwnerCandidate The address being proposed as the new owner
    |     */
  > |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(169)

[31mViolation[0m for MissingInputValidation in contract 'SafeGuard':
    |     * @dev Allows owner to execute a transaction.
    |     */
  > |    function executeTransaction(address destination, uint value, bytes data)
    |    public
    |    onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |     *  transfer of ownership
    |     */
  > |    function acceptOwnership() external {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |     * @param _newOwner The address of the new owner
    |     */
  > |    function changeOwnership(address _newOwner) external onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |     * @param _dac `0xdac` has to be entered for this function to work
    |     */
  > |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |     *  of the Solidity's code generator to produce a loop that copies tx.data into memory.
    |     */
  > |    function externalCall(address destination, uint value, uint dataLength, bytes data)
    |    private
    |    returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(242)

[33mWarning[0m for TODAmount in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for TODReceiver in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[31mViolation[0m for UnhandledException in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for UnhandledException in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |     */
    |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(214)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |    /**
    |    * @dev Multiplies two numbers, reverts on overflow.
  at /home/jiaming/mavs_srcs/contract@0x5f04e5ad6992fbc8fdd200b11e67990974174c16.sol(64)


