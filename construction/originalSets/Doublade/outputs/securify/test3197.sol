Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:ArbiterStaking
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:BountyRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:NectarToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ArbiterStaking':
    |//import "./BountyRegistry.sol";
    |
  > |contract ArbiterStaking is Pausable {
    |    using SafeMath for uint256;
    |    using SafeERC20 for NectarToken;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(510)

[33mWarning[0m for UnhandledException in contract 'ArbiterStaking':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(210)

[33mWarning[0m for UnhandledException in contract 'ArbiterStaking':
    |    internal
    |  {
  > |    require(token.transferFrom(from, to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(221)

[33mWarning[0m for UnhandledException in contract 'ArbiterStaking':
    |        returns (bool)
    |    {
  > |        require(registry.isArbiter(_from), "Deposit target is not an arbiter");
    |        // Ensure we are depositing something
    |        require(_value > 0, "Zero value being deposited");
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(609)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ArbiterStaking':
    |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
  > |    require(token.transfer(to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ArbiterStaking':
    |    internal
    |  {
  > |    require(token.transferFrom(from, to, value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ArbiterStaking':
    |        returns (bool)
    |    {
  > |        require(registry.isArbiter(_from), "Deposit target is not an arbiter");
    |        // Ensure we are depositing something
    |        require(_value > 0, "Zero value being deposited");
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(609)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |pragma solidity ^0.4.24;
    |
  > |// File: zeppelin-solidity/contracts/math/SafeMath.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |//import "./BountyRegistry.sol";
    |
  > |contract ArbiterStaking is Pausable {
    |    using SafeMath for uint256;
    |    using SafeERC20 for NectarToken;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(510)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |     */
    |    function setBountyRegistry(address _bountyRegistry) public onlyOwner {
  > |        registry = BountyRegistry(_bountyRegistry);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |
    |        token.safeTransferFrom(_from, this, _value);
  > |        deposits[_from].push(Deposit(block.number, _value));
    |        emit NewDeposit(_from, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(618)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |            if (ds[end].blockNumber <= latest_block) {
    |                if (ds[end].value >= remaining) {
  > |                    ds[end].value = ds[end].value.sub(remaining);
    |                    if (ds[end].value == 0) {
    |                        end++;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(687)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |        // Delete the obsolete deposits
    |        for (uint256 i = 0; i < ds.length.sub(end); i++) {
  > |            ds[i] = ds[i.add(end)];
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(707)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |        // New bounty
    |        if (!bounties[bountyGuid]) {
  > |            bounties[bountyGuid] = true;
    |            numBounties = numBounties.add(1);
    |            emit BountyRecorded(bountyGuid, blockNumber);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |        if (!bounties[bountyGuid]) {
    |            bounties[bountyGuid] = true;
  > |            numBounties = numBounties.add(1);
    |            emit BountyRecorded(bountyGuid, blockNumber);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(749)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |        // First response to this bounty by this arbiter
    |        if (!bountyResponseByGuidAndAddress[bountyGuid][arbiter]) {
  > |            bountyResponseByGuidAndAddress[bountyGuid][arbiter] = true;
    |            bountyResponses[arbiter] = bountyResponses[arbiter].add(1);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(755)

[33mWarning[0m for UnrestrictedWrite in contract 'ArbiterStaking':
    |        if (!bountyResponseByGuidAndAddress[bountyGuid][arbiter]) {
    |            bountyResponseByGuidAndAddress[bountyGuid][arbiter] = true;
  > |            bountyResponses[arbiter] = bountyResponses[arbiter].add(1);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(756)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(258)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(447)

[33mWarning[0m for LockedEther in contract 'NectarToken':
    |// File: contracts/NectarToken.sol
    |
  > |contract NectarToken is MintableToken {
    |    string public name = "Nectar";
    |    string public symbol = "NCT";
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(455)

[33mWarning[0m for UnhandledException in contract 'NectarToken':
    |
    |        // solium-disable-next-line security/no-low-level-calls, indentation
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))),
    |            msg.sender, _value, this, _extraData), "receiveApproval failed");
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(500)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NectarToken':
    |
    |        // solium-disable-next-line security/no-low-level-calls, indentation
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))),
    |            msg.sender, _value, this, _extraData), "receiveApproval failed");
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(436)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    // Approves and then calls the receiving contract
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |
    |    function enableTransfers() public onlyOwner whenTransfersNotEnabled {
  > |        transfersEnabled = true;
    |        emit TransfersEnabled();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(475)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(115)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(159)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(160)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(ERC20Basic token, address to, uint256 value) internal {
    |    require(token.transfer(to, value));
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(208)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(9)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd1786293b53a150ac32bf69375609821d6501d0f.sol(388)


