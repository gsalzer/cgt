Processing contract: /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol:BabyCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BabyCoin':
    |}
    |
  > |contract BabyCoin is Ownable {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyCoin':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyCoin':
    |    function _airdrop(address _owner) internal {
    |        if(!touched[_owner] && currentTotalSupply < airdropSupply) {
  > |            touched[_owner] = true;
    |            balances[_owner] = balances[_owner].add(airdropNum);
    |            currentTotalSupply = currentTotalSupply.add(airdropNum);
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyCoin':
    |        if(!touched[_owner] && currentTotalSupply < airdropSupply) {
    |            touched[_owner] = true;
  > |            balances[_owner] = balances[_owner].add(airdropNum);
    |            currentTotalSupply = currentTotalSupply.add(airdropNum);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyCoin':
    |            touched[_owner] = true;
    |            balances[_owner] = balances[_owner].add(airdropNum);
  > |            currentTotalSupply = currentTotalSupply.add(airdropNum);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyCoin':
    |        require(balances[_to] + _value >= balances[_to]);
    |        uint256 previousBalances = balances[_from] + balances[_to];
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);        
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyCoin':
    |        uint256 previousBalances = balances[_from] + balances[_to];
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);        
    |        assert(balances[_from] + balances[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    |        require(_value <= allowed[_from][msg.sender]);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyCoin':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyCoin':
    |
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyCoin':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'BabyCoin':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(138)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(46)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.21;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xf20a773b3d9f2a1f080fbae1156a5e9768ceb615.sol(3)


