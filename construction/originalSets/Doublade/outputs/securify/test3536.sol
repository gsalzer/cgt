Processing contract: /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol:POPCHAINCASH
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(62)

[33mWarning[0m for LockedEther in contract 'POPCHAINCASH':
    |}
    |
  > |contract POPCHAINCASH is ERC20, Ownable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        _balances[msg.sender] = _balances[msg.sender].sub(_value);
    |        _balances[_to] = _balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        _balances[msg.sender] = _balances[msg.sender].sub(_value);
  > |        _balances[_to] = _balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        require(_value <= _allowed[_from][msg.sender]);
    |
  > |        _balances[_from] = _balances[_from].sub(_value);
    |        _balances[_to] = _balances[_to].add(_value);
    |        _allowed[_from][msg.sender] = _allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |
    |        _balances[_from] = _balances[_from].sub(_value);
  > |        _balances[_to] = _balances[_to].add(_value);
    |        _allowed[_from][msg.sender] = _allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        _balances[_from] = _balances[_from].sub(_value);
    |        _balances[_to] = _balances[_to].add(_value);
  > |        _allowed[_from][msg.sender] = _allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |    function approve(address _spender, uint256 _value) public returns (bool) {
    |        require(_value > 0);
  > |        _allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        require(_value <= _balances[msg.sender]);
    |        address burner = msg.sender;
  > |        _balances[burner] = _balances[burner].sub(_value);
    |        _totalSupply = _totalSupply.sub(_value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        address burner = msg.sender;
    |        _balances[burner] = _balances[burner].sub(_value);
  > |        _totalSupply = _totalSupply.sub(_value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        require(_lockupRate == 50 || _lockupRate == 100);
    |
  > |        _balances[owner] = _balances[owner].sub(_value);
    |
    |        uint256 lockupValue = _value.mul(_lockupRate).div(100);
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        }
    |        
  > |        _balances[_to] = _balances[_to].add(givenValue);
    |        _lockupBalances[_to] = _lockupBalances[_to].add(lockupValue);
    |        _lockupExpireTime[_to] = ExpireTime;
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        
    |        _balances[_to] = _balances[_to].add(givenValue);
  > |        _lockupBalances[_to] = _lockupBalances[_to].add(lockupValue);
    |        _lockupExpireTime[_to] = ExpireTime;
    |
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        _balances[_to] = _balances[_to].add(givenValue);
    |        _lockupBalances[_to] = _lockupBalances[_to].add(lockupValue);
  > |        _lockupExpireTime[_to] = ExpireTime;
    |
    |        emit Transfer(owner, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        uint256 value = _lockupBalances[tokenHolder];
    |
  > |        _balances[tokenHolder] = _balances[tokenHolder].add(value);  
    |        _lockupBalances[tokenHolder] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |
    |        _balances[tokenHolder] = _balances[tokenHolder].add(value);  
  > |        _lockupBalances[tokenHolder] = 0;
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |    function acceptOwnership() public onlyNewOwner returns(bool) {
    |        uint256 ownerAmount = _balances[owner];
  > |        _balances[owner] = _balances[owner].sub(ownerAmount);
    |        _balances[newOwner] = _balances[newOwner].add(ownerAmount);
    |        emit Transfer(owner, newOwner, ownerAmount);   
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        uint256 ownerAmount = _balances[owner];
    |        _balances[owner] = _balances[owner].sub(ownerAmount);
  > |        _balances[newOwner] = _balances[newOwner].add(ownerAmount);
    |        emit Transfer(owner, newOwner, ownerAmount);   
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        _balances[newOwner] = _balances[newOwner].add(ownerAmount);
    |        emit Transfer(owner, newOwner, ownerAmount);   
  > |        owner = newOwner;
    |        newOwner = address(0);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |        emit Transfer(owner, newOwner, ownerAmount);   
    |        owner = newOwner;
  > |        newOwner = address(0);
    |        emit OwnershipTransferred(owner, newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'POPCHAINCASH':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != address(0));
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xe7d2064155debdcd7e8fc94545c07add0c53e9a5.sol(3)


