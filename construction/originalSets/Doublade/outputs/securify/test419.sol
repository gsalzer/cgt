Processing contract: /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol:CXTCContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic, Pausable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        freeBalances[msg.sender] = freeBalances[msg.sender].sub(_value);
    |        freeBalances[_to] = freeBalances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(156)

[33mWarning[0m for LockedEther in contract 'CXTCContract':
    | * `StandardToken` functions.
    | */
  > |contract CXTCContract is StandardToken {
    |
    |    string public constant name = "Culture eXchange Token Chain"; // solium-disable-line uppercase
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'CXTCContract':
    | * `StandardToken` functions.
    | */
  > |contract CXTCContract is StandardToken {
    |
    |    string public constant name = "Culture eXchange Token Chain"; // solium-disable-line uppercase
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        freeBalances[msg.sender] = freeBalances[msg.sender].sub(_value);
    |        freeBalances[_to] = freeBalances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        freeBalances[msg.sender] = freeBalances[msg.sender].sub(_value);
  > |        freeBalances[_to] = freeBalances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        freeBalances[_from] = freeBalances[_from].sub(_value);
    |        freeBalances[_to] = freeBalances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |
    |        freeBalances[_from] = freeBalances[_from].sub(_value);
  > |        freeBalances[_to] = freeBalances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        freeBalances[_from] = freeBalances[_from].sub(_value);
    |        freeBalances[_to] = freeBalances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |     */
    |    function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public whenNotPaused returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |    function setParter(address _parter, uint256 _amount, uint256 _timestamp) public onlyOwner {
    |        parterAcc.push(_parter);
  > |        frozenBalances[owner] = frozenBalances[owner].sub(_amount);
    |        frozenBalances[_parter] = frozenBalances[_parter].add(_amount);
    |        freezeRecord[_parter][_timestamp] = freezeRecord[_parter][_timestamp].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        parterAcc.push(_parter);
    |        frozenBalances[owner] = frozenBalances[owner].sub(_amount);
  > |        frozenBalances[_parter] = frozenBalances[_parter].add(_amount);
    |        freezeRecord[_parter][_timestamp] = freezeRecord[_parter][_timestamp].add(_amount);
    |        Freeze(_parter, _amount, _timestamp);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        frozenBalances[owner] = frozenBalances[owner].sub(_amount);
    |        frozenBalances[_parter] = frozenBalances[_parter].add(_amount);
  > |        freezeRecord[_parter][_timestamp] = freezeRecord[_parter][_timestamp].add(_amount);
    |        Freeze(_parter, _amount, _timestamp);
    |        SetParter(_parter, _amount);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        // 2018/03/23 = 1521734400
    |        require(frozenBalances[owner] >= _amount);
  > |        frozenBalances[owner] = frozenBalances[owner].sub(_amount);
    |        frozenBalances[_addr]= frozenBalances[_addr].add(_amount);
    |        freezeRecord[_addr][_timestamp] = freezeRecord[_addr][_timestamp].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        require(frozenBalances[owner] >= _amount);
    |        frozenBalances[owner] = frozenBalances[owner].sub(_amount);
  > |        frozenBalances[_addr]= frozenBalances[_addr].add(_amount);
    |        freezeRecord[_addr][_timestamp] = freezeRecord[_addr][_timestamp].add(_amount);
    |        Freeze(_addr, _amount, _timestamp);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        frozenBalances[owner] = frozenBalances[owner].sub(_amount);
    |        frozenBalances[_addr]= frozenBalances[_addr].add(_amount);
  > |        freezeRecord[_addr][_timestamp] = freezeRecord[_addr][_timestamp].add(_amount);
    |        Freeze(_addr, _amount, _timestamp);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |     */
    |    function distribute(address _to, uint256 _amount, uint256 _timestamp, address[] _addressLst, uint256[] _amountLst) public onlySys returns(bool) {
  > |        frozenBalances[_to]= frozenBalances[_to].add(_amount);
    |        freezeRecord[_to][_timestamp] = freezeRecord[_to][_timestamp].add(_amount);
    |        for(uint i = 0; i < _addressLst.length; i++) {
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(457)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |    function distribute(address _to, uint256 _amount, uint256 _timestamp, address[] _addressLst, uint256[] _amountLst) public onlySys returns(bool) {
    |        frozenBalances[_to]= frozenBalances[_to].add(_amount);
  > |        freezeRecord[_to][_timestamp] = freezeRecord[_to][_timestamp].add(_amount);
    |        for(uint i = 0; i < _addressLst.length; i++) {
    |            frozenBalances[_addressLst[i]] = frozenBalances[_addressLst[i]].sub(_amountLst[i]);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        freezeRecord[_to][_timestamp] = freezeRecord[_to][_timestamp].add(_amount);
    |        for(uint i = 0; i < _addressLst.length; i++) {
  > |            frozenBalances[_addressLst[i]] = frozenBalances[_addressLst[i]].sub(_amountLst[i]);
    |            Defreeze(_addressLst[i], _amountLst[i], _timestamp);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        require(_to != address(0));
    |        uint256 toAmt = _amount.sub(_fee);
  > |        freeBalances[msg.sender] = freeBalances[msg.sender].sub(_amount);
    |        freeBalances[_to] = freeBalances[_to].add(toAmt);
    |        // systemAcc
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        uint256 toAmt = _amount.sub(_fee);
    |        freeBalances[msg.sender] = freeBalances[msg.sender].sub(_amount);
  > |        freeBalances[_to] = freeBalances[_to].add(toAmt);
    |        // systemAcc
    |        frozenBalances[systemAcc] = frozenBalances[systemAcc].add(_fee);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        freeBalances[_to] = freeBalances[_to].add(toAmt);
    |        // systemAcc
  > |        frozenBalances[systemAcc] = frozenBalances[systemAcc].add(_fee);
    |        freezeRecord[systemAcc][_timestamp] = freezeRecord[systemAcc][_timestamp].add(_fee);
    |        Transfer(msg.sender, _to, toAmt);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        // systemAcc
    |        frozenBalances[systemAcc] = frozenBalances[systemAcc].add(_fee);
  > |        freezeRecord[systemAcc][_timestamp] = freezeRecord[systemAcc][_timestamp].add(_fee);
    |        Transfer(msg.sender, _to, toAmt);
    |        Freeze(systemAcc, _fee, _timestamp);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(479)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |    function freeze(uint256 _amount, uint256 _timestamp) public whenNotPaused returns (bool) {
    |        require(freeBalances[msg.sender] >= _amount);
  > |        freeBalances[msg.sender] = freeBalances[msg.sender].sub(_amount);
    |        frozenBalances[msg.sender] = frozenBalances[msg.sender].add(_amount);
    |        freezeRecord[msg.sender][_timestamp] = freezeRecord[msg.sender][_timestamp].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        require(freeBalances[msg.sender] >= _amount);
    |        freeBalances[msg.sender] = freeBalances[msg.sender].sub(_amount);
  > |        frozenBalances[msg.sender] = frozenBalances[msg.sender].add(_amount);
    |        freezeRecord[msg.sender][_timestamp] = freezeRecord[msg.sender][_timestamp].add(_amount);
    |        Freeze(msg.sender, _amount, _timestamp);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        freeBalances[msg.sender] = freeBalances[msg.sender].sub(_amount);
    |        frozenBalances[msg.sender] = frozenBalances[msg.sender].add(_amount);
  > |        freezeRecord[msg.sender][_timestamp] = freezeRecord[msg.sender][_timestamp].add(_amount);
    |        Freeze(msg.sender, _amount, _timestamp);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        require(_addressLst.length == _amountLst.length);
    |        for(uint i = 0; i < _addressLst.length; i++) {
  > |            freeBalances[_addressLst[i]] = freeBalances[_addressLst[i]].add(_amountLst[i]);
    |            frozenBalances[_addressLst[i]] = frozenBalances[_addressLst[i]].sub(_amountLst[i]);
    |            Release(_addressLst[i], _amountLst[i]);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(503)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        for(uint i = 0; i < _addressLst.length; i++) {
    |            freeBalances[_addressLst[i]] = freeBalances[_addressLst[i]].add(_amountLst[i]);
  > |            frozenBalances[_addressLst[i]] = frozenBalances[_addressLst[i]].sub(_amountLst[i]);
    |            Release(_addressLst[i], _amountLst[i]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        require(_addressLst.length == _amountLst.length);
    |        for(uint i = 0; i < _addressLst.length; i++) {
  > |            freeBalances[_addressLst[i]] = freeBalances[_addressLst[i]].add(_amountLst[i]);
    |            Transfer(systemAcc, _addressLst[i], _amountLst[i]);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |     */
    |    function setParter(address _parter, uint256 _amount, uint256 _timestamp) public onlyOwner {
  > |        parterAcc.push(_parter);
    |        frozenBalances[owner] = frozenBalances[owner].sub(_amount);
    |        frozenBalances[_parter] = frozenBalances[_parter].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'CXTCContract':
    |     */
    |    function setSysAcc(address _sysAcc) public onlyOwner returns (bool) {
  > |        systemAcc = _sysAcc;
    |        SetSysAcc(_sysAcc);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(372)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |    address public systemAcc; // charge fee
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    address public systemAcc; // charge fee
    |
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public systemAcc; // charge fee
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(114)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    address public systemAcc; // charge fee
    |
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    address public owner;
  > |    address public systemAcc; // charge fee
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(156)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        freeBalances[msg.sender] = freeBalances[msg.sender].sub(_value);
    |        freeBalances[_to] = freeBalances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        freeBalances[_from] = freeBalances[_from].sub(_value);
    |        freeBalances[_to] = freeBalances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public whenNotPaused returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1afafc35b364595f06e89a0429c5762452eb7ffd.sol(156)


