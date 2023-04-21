Processing contract: /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol:DStore
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol:ERC664Balances
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol:IERC664Balances
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol:SafeGuard
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for LockedEther in contract 'DStore':
    | * @author Panos
    | */
  > |contract DStore is ERC664Balances {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(404)

[33mWarning[0m for TODAmount in contract 'DStore':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for TODReceiver in contract 'DStore':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for UnhandledException in contract 'DStore':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DStore':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function setApprove(address _sender, address _spender, uint256 _value) external onlyModule returns (bool) {
  > |        allowed[_sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(282)

[31mViolation[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function decApprove(address _from, address _spender, uint _value) external onlyModule returns (bool) {
  > |        allowed[_from][_spender] = allowed[_from][_spender].sub(_value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(294)

[31mViolation[0m for UnrestrictedWrite in contract 'DStore':
    |    onlyModule
    |    returns (bool) {
  > |        balances[_from] = balances[_from].sub(_amount);
    |        emit BalanceAdj(msg.sender, _from, _amount, "-");
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(445)

[31mViolation[0m for UnrestrictedWrite in contract 'DStore':
    |        balances[_from] = balances[_from].sub(_amount);
    |        emit BalanceAdj(msg.sender, _from, _amount, "-");
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit BalanceAdj(msg.sender, _to, _amount, "+");
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(447)

[31mViolation[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function incApprove(address _from, address _spender, uint _value) external onlyModule returns (bool) {
  > |        allowed[_from][_spender] = allowed[_from][_spender].add(_value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function setModule(address _acct, bool _set) external onlyOwner returns (bool) {
  > |        modules[_acct] = _set;
    |        emit ModuleSet(_acct, _set);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'DStore':
    |     */
    |    function transferRoot(address _newOwner) external onlyOwner returns(bool) {
  > |        owner = _newOwner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(335)

[33mWarning[0m for DAO in contract 'ERC664Balances':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for LockedEther in contract 'ERC664Balances':
    | * @author chrisfranko
    | */
  > |contract ERC664Balances is IERC664Balances, SafeGuard {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(247)

[33mWarning[0m for TODAmount in contract 'ERC664Balances':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for TODReceiver in contract 'ERC664Balances':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for UnhandledException in contract 'ERC664Balances':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC664Balances':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function setApprove(address _sender, address _spender, uint256 _value) external onlyModule returns (bool) {
  > |        allowed[_sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function decApprove(address _from, address _spender, uint _value) external onlyModule returns (bool) {
  > |        allowed[_from][_spender] = allowed[_from][_spender].sub(_value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |    */
    |    function incTotalSupply(uint _val) external onlyOwner returns (bool) {
  > |        totalSupply = totalSupply.add(_val);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function decTotalSupply(uint _val) external onlyOwner returns (bool) {
  > |        totalSupply = totalSupply.sub(_val);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function setModule(address _acct, bool _set) external onlyOwner returns (bool) {
  > |        modules[_acct] = _set;
    |        emit ModuleSet(_acct, _set);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function transferRoot(address _newOwner) external onlyOwner returns(bool) {
  > |        owner = _newOwner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function incBalance(address _acct, uint _val) public onlyModule returns (bool) {
  > |        balances[_acct] = balances[_acct].add(_val);
    |        emit BalanceAdj(msg.sender, _acct, _val, "+");
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC664Balances':
    |     */
    |    function decBalance(address _acct, uint _val) public onlyModule returns (bool) {
  > |        balances[_acct] = balances[_acct].sub(_val);
    |        emit BalanceAdj(msg.sender, _acct, _val, "-");
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(394)

[33mWarning[0m for LockedEther in contract 'Owned':
    | *  the ownership to be removed to allow for decentralization
    | */
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |     * @param _newOwnerCandidate The address being proposed as the new owner
    |     */
  > |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |     *  transfer of ownership
    |     */
  > |    function acceptOwnership() external {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |     * @param _newOwner The address of the new owner
    |     */
  > |    function changeOwnership(address _newOwner) external onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |     * @param _dac `0xdac` has to be entered for this function to work
    |     */
  > |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |     */
    |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(191)

[33mWarning[0m for DAO in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for LockedEther in contract 'SafeGuard':
    | * @author Panos
    | */
  > |contract SafeGuard is Owned {
    |
    |    event Transaction(address indexed destination, uint value, bytes data);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(200)

[31mViolation[0m for MissingInputValidation in contract 'SafeGuard':
    |     * @param _newOwnerCandidate The address being proposed as the new owner
    |     */
  > |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
    |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'SafeGuard':
    |     * @dev Allows owner to execute a transaction.
    |     */
  > |    function executeTransaction(address destination, uint value, bytes data)
    |    public
    |    onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |contract Owned {
    |
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed by, address indexed to);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |     *  transfer of ownership
    |     */
  > |    function acceptOwnership() external {
    |        require(msg.sender == newOwnerCandidate);
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |     * @param _newOwner The address of the new owner
    |     */
  > |    function changeOwnership(address _newOwner) external onlyOwner {
    |        require(_newOwner != 0x0);
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |     * @param _dac `0xdac` has to be entered for this function to work
    |     */
  > |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'SafeGuard':
    |     *  of the Solidity's code generator to produce a loop that copies tx.data into memory.
    |     */
  > |    function externalCall(address destination, uint value, uint dataLength, bytes data)
    |    private
    |    returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(219)

[33mWarning[0m for TODAmount in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for TODReceiver in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[31mViolation[0m for UnhandledException in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for UnhandledException in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SafeGuard':
    |            // (0x40 is where "free memory" pointer is stored by convention)
    |            let d := add(data, 32) // First 32 bytes are the padded length of data, so exclude that
  > |            result := call(
    |            sub(gas, 34710), // 34710 is the value that solidity is currently emitting
    |            // It includes callGas (700) + callVeryLow (3, to pay for SUB) + callValueTransferGas (9000) +
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |     */
    |    function proposeOwnership(address _newOwnerCandidate) external onlyOwner {
  > |        newOwnerCandidate = _newOwnerCandidate;
    |        emit OwnershipRequested(msg.sender, newOwnerCandidate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |
    |        address oldOwner = owner;
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |        address oldOwner = owner;
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |
    |        address oldOwner = owner;
  > |        owner = _newOwner;
    |        newOwnerCandidate = 0x0;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |        address oldOwner = owner;
    |        owner = _newOwner;
  > |        newOwnerCandidate = 0x0;
    |
    |        emit OwnershipTransferred(oldOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |    function removeOwnership(address _dac) external onlyOwner {
    |        require(_dac == 0xdac);
  > |        owner = 0x0;
    |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'SafeGuard':
    |        require(_dac == 0xdac);
    |        owner = 0x0;
  > |        newOwnerCandidate = 0x0;
    |        emit OwnershipRemoved();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(191)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |    /**
    |    * @dev Multiplies two numbers, reverts on overflow.
  at /home/jiaming/mavs_srcs/contract@0x8c461d9f3622e74c7d75a776f57339d1f8790226.sol(41)


