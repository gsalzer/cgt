Processing contract: /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol:ERC20TokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol:RFL_Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol:admined
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |* @notice Token definition contract
    |*/
  > |contract ERC20Token is ERC20TokenInterface,admined { //Standar definition of a ERC20Token
    |    using SafeMath for uint256; //SafeMath is used for uint256 operations
    |    mapping (address => uint256) balances; //A mapping of all balances per address
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_to != address(0)); //Dont want that any body destroy token
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(_to != address(0)); //If you dont want that people destroy token
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |      allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    */
    |    function mintToken(address _target, uint256 _mintedAmount) onlyAdmin public {
  > |        balances[_target] = SafeMath.add(balances[_target], _mintedAmount);
    |        totalSupply = SafeMath.add(totalSupply, _mintedAmount);
    |        Transfer(0, this, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function mintToken(address _target, uint256 _mintedAmount) onlyAdmin public {
    |        balances[_target] = SafeMath.add(balances[_target], _mintedAmount);
  > |        totalSupply = SafeMath.add(totalSupply, _mintedAmount);
    |        Transfer(0, this, _mintedAmount);
    |        Transfer(this, _target, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    */
    |    function burnToken(address _target, uint256 _burnedAmount) onlyAdmin public {
  > |        balances[_target] = SafeMath.sub(balances[_target], _burnedAmount);
    |        totalSupply = SafeMath.sub(totalSupply, _burnedAmount);
    |        Burned(_target, _burnedAmount);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function burnToken(address _target, uint256 _burnedAmount) onlyAdmin public {
    |        balances[_target] = SafeMath.sub(balances[_target], _burnedAmount);
  > |        totalSupply = SafeMath.sub(totalSupply, _burnedAmount);
    |        Burned(_target, _burnedAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    */
    |    function transferAdminship(address _newAdmin) onlyAdmin public { //Admin can be transfered
  > |        admin = _newAdmin;
    |        TransferAdminship(admin);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(64)

[33mWarning[0m for LockedEther in contract 'RFL_Token':
    |* @notice ERC20 token creation.
    |*/
  > |contract RFL_Token is ERC20Token {
    |    string public name;
    |    uint256 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'RFL_Token':
    |        require(_to != address(0)); //Dont want that any body destroy token
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'RFL_Token':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'RFL_Token':
    |        require(_to != address(0)); //If you dont want that people destroy token
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'RFL_Token':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] = balances[_to].add(_value);
  > |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'RFL_Token':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'RFL_Token':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |      allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'RFL_Token':
    |    */
    |    function mintToken(address _target, uint256 _mintedAmount) onlyAdmin public {
  > |        balances[_target] = SafeMath.add(balances[_target], _mintedAmount);
    |        totalSupply = SafeMath.add(totalSupply, _mintedAmount);
    |        Transfer(0, this, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'RFL_Token':
    |    function mintToken(address _target, uint256 _mintedAmount) onlyAdmin public {
    |        balances[_target] = SafeMath.add(balances[_target], _mintedAmount);
  > |        totalSupply = SafeMath.add(totalSupply, _mintedAmount);
    |        Transfer(0, this, _mintedAmount);
    |        Transfer(this, _target, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'RFL_Token':
    |    */
    |    function burnToken(address _target, uint256 _burnedAmount) onlyAdmin public {
  > |        balances[_target] = SafeMath.sub(balances[_target], _burnedAmount);
    |        totalSupply = SafeMath.sub(totalSupply, _burnedAmount);
    |        Burned(_target, _burnedAmount);
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'RFL_Token':
    |    function burnToken(address _target, uint256 _burnedAmount) onlyAdmin public {
    |        balances[_target] = SafeMath.sub(balances[_target], _burnedAmount);
  > |        totalSupply = SafeMath.sub(totalSupply, _burnedAmount);
    |        Burned(_target, _burnedAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'RFL_Token':
    |    */
    |    function transferAdminship(address _newAdmin) onlyAdmin public { //Admin can be transfered
  > |        admin = _newAdmin;
    |        TransferAdminship(admin);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(64)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    function sub(uint256 a, uint256 b) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x1e35c3200e564be5af35aff8d1bb5a16a4390a79.sol(7)


