Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:BlackList
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:HOME
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:MultiTransferToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |// @dev Basic version of StandardToken, with no allowances.
    |// ----------------------------------------------------------------------------
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(74)

[33mWarning[0m for LockedEther in contract 'BlackList':
    |// @dev Base contract which allows children to implement an emergency stop mechanism.
    |// ----------------------------------------------------------------------------
  > |contract BlackList is Ownable {
    |
    |    event Lock(address indexed LockedAddress);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'BlackList':
    |    event Unlock(address indexed UnLockedAddress);
    |
  > |    mapping( address => bool ) public blackList;
    |
    |    modifier CheckBlackList { require(blackList[msg.sender] != true); _; }
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'BlackList':
    |    }
    |
  > |    function UnLockAddress(address _unlockAddress) external onlyOwner returns (bool) {
    |        require(blackList[_unlockAddress] != false);
    |        
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'BlackList':
    |contract Ownable {
    |    // Development Team Leader
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'BlackList':
    |    modifier CheckBlackList { require(blackList[msg.sender] != true); _; }
    |
  > |    function SetLockAddress(address _lockAddress) external onlyOwner returns (bool) {
    |        require(_lockAddress != address(0));
    |        require(_lockAddress != owner);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackList':
    |        require(blackList[_lockAddress] != true);
    |        
  > |        blackList[_lockAddress] = true;
    |        
    |        emit Lock(_lockAddress);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'BlackList':
    |        require(blackList[_unlockAddress] != false);
    |        
  > |        blackList[_unlockAddress] = false;
    |        
    |        emit Unlock(_unlockAddress);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(126)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |// @dev Token that can be irreversibly burned (destroyed).
    |// ----------------------------------------------------------------------------
  > |contract BurnableToken is StandardToken, Ownable {
    |
    |    event BurnAdminAmount(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |    
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |    
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    
    |        if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |        } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        allowed[msg.sender][_spender] = 0;
    |        } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |    
    |        emit BurnAdminAmount(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(254)

[33mWarning[0m for LockedEther in contract 'HOME':
    |// @Source HomeCoin 
    |// ----------------------------------------------------------------------------
  > |contract HOME is PausableToken, MintableToken, BurnableToken, MultiTransferToken {
    |    string public name = "HOME";
    |    string public symbol = "HOM";
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |    
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |    
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |    
    |        if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |        } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |        allowed[msg.sender][_spender] = 0;
    |        } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |
    |        for (ui = 0; ui < _to.length; ui++) {
  > |            balances[msg.sender] = balances[msg.sender].sub(_amount[ui]);
    |            balances[_to[ui]] = balances[_to[ui]].add(_amount[ui]);
    |        
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |        for (ui = 0; ui < _to.length; ui++) {
    |            balances[msg.sender] = balances[msg.sender].sub(_amount[ui]);
  > |            balances[_to[ui]] = balances[_to[ui]].add(_amount[ui]);
    |        
    |            emit Transfer(msg.sender, _to[ui], _amount[ui]);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |    
    |        emit BurnAdminAmount(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |    
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |        require(blackList[_lockAddress] != true);
    |        
  > |        blackList[_lockAddress] = true;
    |        
    |        emit Lock(_lockAddress);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |        require(blackList[_unlockAddress] != false);
    |        
  > |        blackList[_unlockAddress] = false;
    |        
    |        emit Unlock(_unlockAddress);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'HOME':
    |
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(285)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |// Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    |// ----------------------------------------------------------------------------
  > |contract MintableToken is StandardToken, Ownable {
    |    event Mint(address indexed to, uint256 amount);
    |    event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |    
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |    
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    
    |        if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |        } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        allowed[msg.sender][_spender] = 0;
    |        } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |        totalSupply_ = totalSupply_.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |        totalSupply_ = totalSupply_.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |    
    |        emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(285)

[33mWarning[0m for LockedEther in contract 'MultiTransferToken':
    |// @dev Only Admin
    |// ----------------------------------------------------------------------------
  > |contract MultiTransferToken is StandardToken, Ownable {
    |
    |    function MultiTransfer(address[] _to, uint256[] _amount) onlyOwner public returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiTransferToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiTransferToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiTransferToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |    
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiTransferToken':
    |
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiTransferToken':
    |    
    |        if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |        } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiTransferToken':
    |        allowed[msg.sender][_spender] = 0;
    |        } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiTransferToken':
    |
    |        for (ui = 0; ui < _to.length; ui++) {
  > |            balances[msg.sender] = balances[msg.sender].sub(_amount[ui]);
    |            balances[_to[ui]] = balances[_to[ui]].add(_amount[ui]);
    |        
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(233)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |// @title Ownable
    |// ----------------------------------------------------------------------------
  > |contract Ownable {
    |    // Development Team Leader
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    // Development Team Leader
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(90)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |// @dev Base contract which allows children to implement an emergency stop mechanism.
    |// ----------------------------------------------------------------------------
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    // Development Team Leader
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    modifier whenNotPaused() { require(!paused); _; }
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    modifier whenPaused() { require(paused); _; }
    |
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(152)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |// @dev StandardToken modified with pausable transfers.
    |// ----------------------------------------------------------------------------
  > |contract PausableToken is StandardToken, Pausable, BlackList {
    |
    |    function transfer(address _to, uint256 _value) public whenNotPaused CheckBlackList returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |    
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    
    |        if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |        } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        allowed[msg.sender][_spender] = 0;
    |        } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(blackList[_lockAddress] != true);
    |        
  > |        blackList[_lockAddress] = true;
    |        
    |        emit Lock(_lockAddress);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(blackList[_unlockAddress] != false);
    |        
  > |        blackList[_unlockAddress] = false;
    |        
    |        emit Unlock(_unlockAddress);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(152)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// https://github.com/OpenZeppelin/zeppelin-solidity/blob/master/contracts/math/SafeMath.sol
    |// ----------------------------------------------------------------------------
  > |library SafeMath {
    |    
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(8)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |// https://github.com/ethereum/EIPs/issues/20
    |// ----------------------------------------------------------------------------
  > |contract StandardToken is ERC20, BasicToken {
    |  
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |    
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = (allowed[msg.sender][_spender].add(_addedValue));
    |    
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    
    |        if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |        } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        allowed[msg.sender][_spender] = 0;
    |        } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd550664d0298ee97751f8cfaabf5b746b941e147.sol(205)


