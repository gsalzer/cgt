Processing contract: /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol:ERC20Core
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol:ERC20CoreBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol:ERC20WithApprove
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol:ERC20WithApproveBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol:Owned
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol:VendiCoins
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Core':
    |
    |
  > |contract ERC20Core is ERC20CoreBase {
    |    /**
    |    * @dev Transfer token for a specified address
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Core':
    |    */
    |
  > |    function balanceOf(address owner) public view returns(uint) {
    |        return _balanceOf[owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Core':
    |    */
    |
  > |    function totalSupply() public view returns(uint) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Core':
    |    */
    |
  > |    function _transfer(address from, address to, uint256 value) internal {
    |        _checkRequireERC20(to, value, true, _balanceOf[from]);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Core':
    |
    |
  > |    function _checkRequireERC20(address addr, uint value, bool checkMax, uint max) internal pure {
    |        require(addr != address(0), "Empty address");
    |        require(value > 0, "Empty value");
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Core':
    |        _checkRequireERC20(to, value, true, _balanceOf[from]);
    |
  > |        _balanceOf[from] -= value;
    |        _balanceOf[to] += value;
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20Core':
    |
    |        _balanceOf[from] -= value;
  > |        _balanceOf[to] += value;
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Core':
    |        _checkRequireERC20(to, value, true, _balanceOf[from]);
    |
  > |        _balanceOf[from] -= value;
    |        _balanceOf[to] += value;
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(138)

[33mWarning[0m for LockedEther in contract 'ERC20CoreBase':
    | */
    |
  > |contract ERC20CoreBase {
    |
    |    // string public name;
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'ERC20CoreBase':
    |    */
    |
  > |    function balanceOf(address owner) public view returns(uint) {
    |        return _balanceOf[owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'ERC20CoreBase':
    |    */
    |
  > |    function totalSupply() public view returns(uint) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(112)

[33mWarning[0m for LockedEther in contract 'ERC20WithApprove':
    |
    |
  > |contract ERC20WithApprove is ERC20WithApproveBase {
    |    /**
    |    * @dev Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(290)

[31mViolation[0m for MissingInputValidation in contract 'ERC20WithApprove':
    |    */
    |
  > |    function balanceOf(address owner) public view returns(uint) {
    |        return _balanceOf[owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'ERC20WithApprove':
    |    */
    |    
  > |    function allowance(address owner, address spender) public view returns(uint) {
    |        return _allowed[owner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(217)

[31mViolation[0m for MissingInputValidation in contract 'ERC20WithApprove':
    |    */
    |
  > |    function transferFrom(address from, address to, uint256 value) public {
    |        _transferFrom(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(312)

[31mViolation[0m for MissingInputValidation in contract 'ERC20WithApprove':
    |    */
    |
  > |    function decreaseAllowance(address spender, uint256 value) public {
    |        _decreaseAllowance(spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(340)

[33mWarning[0m for MissingInputValidation in contract 'ERC20WithApprove':
    |    */
    |
  > |    function totalSupply() public view returns(uint) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'ERC20WithApprove':
    |    */
    |
  > |    function _transfer(address from, address to, uint256 value) internal {
    |        _checkRequireERC20(to, value, true, _balanceOf[from]);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'ERC20WithApprove':
    |
    |
  > |    function _checkRequireERC20(address addr, uint value, bool checkMax, uint max) internal pure {
    |        require(addr != address(0), "Empty address");
    |        require(value > 0, "Empty value");
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'ERC20WithApprove':
    |    */
    |
  > |    function _approve(address spender, uint256 value) internal {
    |        _checkRequireERC20(spender, value, true, _balanceOf[msg.sender]);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'ERC20WithApprove':
    |    */
    |
  > |    function _transferFrom(address from, address to, uint256 value) internal {
    |        _checkRequireERC20(to, value, true, _allowed[from][msg.sender]);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'ERC20WithApprove':
    |    */
    |
  > |    function _increaseAllowance(address spender, uint256 value)  internal {
    |        _checkRequireERC20(spender, value, false, 0);
    |        require(_balanceOf[msg.sender] >= (_allowed[msg.sender][spender] + value), "Out of value");
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'ERC20WithApprove':
    |    */
    |
  > |    function _decreaseAllowance(address spender, uint256 value) internal {
    |        _checkRequireERC20(spender, value, true, _allowed[msg.sender][spender]);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(280)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20WithApprove':
    |        _checkRequireERC20(to, value, true, _balanceOf[from]);
    |
  > |        _balanceOf[from] -= value;
    |        _balanceOf[to] += value;
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20WithApprove':
    |
    |        _balanceOf[from] -= value;
  > |        _balanceOf[to] += value;
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20WithApprove':
    |        _checkRequireERC20(spender, value, true, _balanceOf[msg.sender]);
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20WithApprove':
    |        _checkRequireERC20(to, value, true, _allowed[from][msg.sender]);
    |
  > |        _allowed[from][msg.sender] -= value;
    |        _transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(248)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20WithApprove':
    |        require(_balanceOf[msg.sender] >= (_allowed[msg.sender][spender] + value), "Out of value");
    |
  > |        _allowed[msg.sender][spender] += value;
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20WithApprove':
    |        _checkRequireERC20(spender, value, true, _allowed[msg.sender][spender]);
    |
  > |        _allowed[msg.sender][spender] -= value;
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20WithApprove':
    |        _checkRequireERC20(spender, value, true, _balanceOf[msg.sender]);
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20WithApprove':
    |        _checkRequireERC20(to, value, true, _allowed[from][msg.sender]);
    |
  > |        _allowed[from][msg.sender] -= value;
    |        _transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20WithApprove':
    |        require(_balanceOf[msg.sender] >= (_allowed[msg.sender][spender] + value), "Out of value");
    |
  > |        _allowed[msg.sender][spender] += value;
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20WithApprove':
    |        _checkRequireERC20(spender, value, true, _allowed[msg.sender][spender]);
    |
  > |        _allowed[msg.sender][spender] -= value;
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(283)

[33mWarning[0m for LockedEther in contract 'ERC20WithApproveBase':
    |
    |
  > |contract ERC20WithApproveBase is ERC20CoreBase {
    |    mapping (address => mapping (address => uint256)) private _allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(200)

[31mViolation[0m for MissingInputValidation in contract 'ERC20WithApproveBase':
    |    */
    |
  > |    function balanceOf(address owner) public view returns(uint) {
    |        return _balanceOf[owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'ERC20WithApproveBase':
    |    */
    |    
  > |    function allowance(address owner, address spender) public view returns(uint) {
    |        return _allowed[owner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'ERC20WithApproveBase':
    |    */
    |
  > |    function totalSupply() public view returns(uint) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(112)

[33mWarning[0m for LockedEther in contract 'VendiCoins':
    |
    |
  > |contract VendiCoins is ERC20WithApprove, Owned {
    |	string public name;
    |	string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(346)

[31mViolation[0m for MissingInputValidation in contract 'VendiCoins':
    |    */
    |
  > |    function balanceOf(address owner) public view returns(uint) {
    |        return _balanceOf[owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'VendiCoins':
    |    */
    |    
  > |    function allowance(address owner, address spender) public view returns(uint) {
    |        return _allowed[owner][spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(217)

[31mViolation[0m for MissingInputValidation in contract 'VendiCoins':
    |    */
    |
  > |    function decreaseAllowance(address spender, uint256 value) public {
    |        _decreaseAllowance(spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(340)

[31mViolation[0m for MissingInputValidation in contract 'VendiCoins':
    |	}
    |
  > |	function transferFrom(address from, address to, uint value) public onlyUnfreeze {
    |		_transferFrom(from, to, value);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(389)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |	*/
    |
  > |    function owner() public view returns(address) {
    |        return _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |   * @return true if `msg.sender` is the owner of the contract.
    |   */
  > |    function isOwner() public view returns(bool) {
    |        return msg.sender == _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |   * modifier anymore.
    |   */
  > |    function renounceOwner() public onlyOwner {
    |        emit TransferredOwner(_owner, address(0));
    |        _owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |    function transferOwner(address newOwner) public onlyOwner {
    |        require(newOwner != address(0), "Empty address");
    |        _newOwner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |
    |
  > |    function cancelOwner() public onlyOwner {
    |        _newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |    }
    |
  > |    function confirmOwner() public {
    |        require(msg.sender == _newOwner, "Access is denied");
    |        emit TransferredOwner(_owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |    */
    |
  > |    function totalSupply() public view returns(uint) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |    */
    |
  > |    function _transfer(address from, address to, uint256 value) internal {
    |        _checkRequireERC20(to, value, true, _balanceOf[from]);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |    */
    |
  > |    function _mint(address account, uint256 value) internal {
    |        _checkRequireERC20(account, value, false, 0);
    |        _totalSupply += value;
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |    */
    |
  > |    function _burn(address account, uint256 value) internal {
    |        _checkRequireERC20(account, value, true, _balanceOf[account]);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |
    |
  > |    function _checkRequireERC20(address addr, uint value, bool checkMax, uint max) internal pure {
    |        require(addr != address(0), "Empty address");
    |        require(value > 0, "Empty value");
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |    */
    |
  > |    function _approve(address spender, uint256 value) internal {
    |        _checkRequireERC20(spender, value, true, _balanceOf[msg.sender]);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |    */
    |
  > |    function _transferFrom(address from, address to, uint256 value) internal {
    |        _checkRequireERC20(to, value, true, _allowed[from][msg.sender]);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |    */
    |
  > |    function _increaseAllowance(address spender, uint256 value)  internal {
    |        _checkRequireERC20(spender, value, false, 0);
    |        require(_balanceOf[msg.sender] >= (_allowed[msg.sender][spender] + value), "Out of value");
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |    */
    |
  > |    function _decreaseAllowance(address spender, uint256 value) internal {
    |        _checkRequireERC20(spender, value, true, _allowed[msg.sender][spender]);
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(280)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |
    |contract VendiCoins is ERC20WithApprove, Owned {
  > |	string public name;
    |	string public symbol;
    |	uint public decimals;
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(347)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |contract VendiCoins is ERC20WithApprove, Owned {
    |	string public name;
  > |	string public symbol;
    |	uint public decimals;
    |	bool public frozen;
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(348)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |	string public name;
    |	string public symbol;
  > |	uint public decimals;
    |	bool public frozen;
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(349)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |	string public symbol;
    |	uint public decimals;
  > |	bool public frozen;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(350)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |
    |
  > |	function freezeTransfers () public onlyOwner {
    |		if (!frozen) {
    |			frozen = true;
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(394)

[33mWarning[0m for MissingInputValidation in contract 'VendiCoins':
    |	* May only be called by smart contract owner.
    |	*/
  > |	function unfreezeTransfers () public onlyOwner {
    |		if (frozen) {
    |			frozen = false;
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(405)

[31mViolation[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        _checkRequireERC20(to, value, true, _balanceOf[from]);
    |
  > |        _balanceOf[from] -= value;
    |        _balanceOf[to] += value;
    |        emit Transfer(from, to, value);
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'VendiCoins':
    |
    |        _balanceOf[from] -= value;
  > |        _balanceOf[to] += value;
    |        emit Transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'VendiCoins':
    |    function _mint(address account, uint256 value) internal {
    |        _checkRequireERC20(account, value, false, 0);
  > |        _totalSupply += value;
    |        _balanceOf[account] += value;
    |        emit Transfer(address(0), account, value);
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        _checkRequireERC20(account, value, false, 0);
    |        _totalSupply += value;
  > |        _balanceOf[account] += value;
    |        emit Transfer(address(0), account, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        _checkRequireERC20(account, value, true, _balanceOf[account]);
    |
  > |        _totalSupply -= value;
    |        _balanceOf[account] -= value;
    |        emit Transfer(account, address(0), value);
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'VendiCoins':
    |
    |        _totalSupply -= value;
  > |        _balanceOf[account] -= value;
    |        emit Transfer(account, address(0), value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        _checkRequireERC20(spender, value, true, _balanceOf[msg.sender]);
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        _checkRequireERC20(to, value, true, _allowed[from][msg.sender]);
    |
  > |        _allowed[from][msg.sender] -= value;
    |        _transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(248)

[31mViolation[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        require(_balanceOf[msg.sender] >= (_allowed[msg.sender][spender] + value), "Out of value");
    |
  > |        _allowed[msg.sender][spender] += value;
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        _checkRequireERC20(spender, value, true, _allowed[msg.sender][spender]);
    |
  > |        _allowed[msg.sender][spender] -= value;
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'VendiCoins':
    |
    |        _totalSupply -= value;
  > |        _balanceOf[account] -= value;
    |        emit Transfer(account, address(0), value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        _checkRequireERC20(spender, value, true, _balanceOf[msg.sender]);
    |
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        _checkRequireERC20(to, value, true, _allowed[from][msg.sender]);
    |
  > |        _allowed[from][msg.sender] -= value;
    |        _transfer(from, to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        require(_balanceOf[msg.sender] >= (_allowed[msg.sender][spender] + value), "Out of value");
    |
  > |        _allowed[msg.sender][spender] += value;
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        _checkRequireERC20(spender, value, true, _allowed[msg.sender][spender]);
    |
  > |        _allowed[msg.sender][spender] -= value;
    |        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'VendiCoins':
    |    function renounceOwner() public onlyOwner {
    |        emit TransferredOwner(_owner, address(0));
  > |        _owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'VendiCoins':
    |    function transferOwner(address newOwner) public onlyOwner {
    |        require(newOwner != address(0), "Empty address");
  > |        _newOwner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'VendiCoins':
    |
    |    function cancelOwner() public onlyOwner {
  > |        _newOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'VendiCoins':
    |        require(msg.sender == _newOwner, "Access is denied");
    |        emit TransferredOwner(_owner, _newOwner);
  > |        _owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'VendiCoins':
    |	function freezeTransfers () public onlyOwner {
    |		if (!frozen) {
  > |			frozen = true;
    |			emit Freeze();
    |		}
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'VendiCoins':
    |	function unfreezeTransfers () public onlyOwner {
    |		if (frozen) {
  > |			frozen = false;
    |			emit Unfreeze();
    |		}
  at /home/jiaming/mavs_srcs/contract@0x4fd62361e708309ec219fe63e5ce4676863f350d.sol(407)


