Processing contract: /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol:BitUPToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BitUPToken':
    |
    |}
  > |contract BitUPToken is ERC20, Ownable {
    |
    |    using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUPToken':
    |        // balances[burner] = balances[burner].sub(_value);
    |        decrementBalance(burner, _value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUPToken':
    |        decrementBalance(_from, _amount);
    |        addToBalance(_to, _amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        Transfer(_from, _to, _amount);
    |        assert(balances[_from] + balances[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUPToken':
    |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        require((_value == 0) || (allowance(msg.sender, _spender) == 0));
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUPToken':
    |        addToBalance(teamAddress, teamSupply6Months);
    |        Transfer(0x0, teamAddress, teamSupply6Months);
  > |        teamSupply6Months = 0;
    |        teamSupply.sub(teamSupply6Months);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUPToken':
    |        addToBalance(teamAddress, teamSupply12Months);
    |        Transfer(0x0, teamAddress, teamSupply12Months);
  > |        teamSupply12Months = 0;
    |        teamSupply.sub(teamSupply12Months);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUPToken':
    |        addToBalance(teamAddress, teamSupply18Months);
    |        Transfer(0x0, teamAddress, teamSupply18Months);
  > |        teamSupply18Months = 0;
    |        teamSupply.sub(teamSupply18Months);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUPToken':
    |        addToBalance(teamAddress, teamSupply24Months);
    |        Transfer(0x0, teamAddress, teamSupply24Months);
  > |        teamSupply24Months = 0;
    |        teamSupply.sub(teamSupply24Months);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUPToken':
    |    // -------------------------------------------------
    |    function addToBalance(address _address, uint _amount) internal {
  > |        balances[_address] = SafeMath.add(balances[_address], _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUPToken':
    |    // -------------------------------------------------
    |    function decrementBalance(address _address, uint _amount) internal {
  > |        balances[_address] = SafeMath.sub(balances[_address], _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUPToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(85)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |  event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |}
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(85)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xb2e260f12406c401874ecc960893c0f74cd6afcd.sol(2)


