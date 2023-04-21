Processing contract: /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol:NectarToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol:OfferMultiSig
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol:OfferRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(208)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(418)

[33mWarning[0m for LockedEther in contract 'NectarToken':
    |// File: contracts/NectarToken.sol
    |
  > |contract NectarToken is MintableToken {
    |    string public name = "Nectar";
    |    string public symbol = "NCT";
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(426)

[33mWarning[0m for UnhandledException in contract 'NectarToken':
    |
    |        // solium-disable-next-line security/no-low-level-calls, indentation
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))),
    |            msg.sender, _value, this, _extraData), "receiveApproval failed");
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(471)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NectarToken':
    |
    |        // solium-disable-next-line security/no-low-level-calls, indentation
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))),
    |            msg.sender, _value, this, _extraData), "receiveApproval failed");
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    // Approves and then calls the receiving contract
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'NectarToken':
    |
    |    function enableTransfers() public onlyOwner whenTransfersNotEnabled {
  > |        transfersEnabled = true;
    |        emit TransfersEnabled();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(446)

[31mViolation[0m for LockedEther in contract 'OfferRegistry':
    |
    |/// @title Creates new Offer Channel contracts and keeps track of them
  > |contract OfferRegistry is Pausable {
    |
    |    struct OfferChannel {
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(981)

[33mWarning[0m for UnhandledException in contract 'OfferRegistry':
    |            /// @dev check to make sure the participants don't already have an open channel
    |            // solium-disable-next-line indentation
  > |            require(OfferMultiSig(participantsToChannel[key]).isChannelOpen() == false,
    |                "Channel already exists between parties");
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(1027)

[33mWarning[0m for UnhandledException in contract 'OfferRegistry':
    |
    |        for (uint i = 0; i < channelsGuids.length; i++) {
  > |            OfferMultiSig(guidToChannel[channelsGuids[i]].msig).pause();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(1095)

[33mWarning[0m for UnhandledException in contract 'OfferRegistry':
    |
    |        for (uint i = 0; i < channelsGuids.length; i++) {
  > |            OfferMultiSig(guidToChannel[channelsGuids[i]].msig).unpause();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(1110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OfferRegistry':
    |            /// @dev check to make sure the participants don't already have an open channel
    |            // solium-disable-next-line indentation
  > |            require(OfferMultiSig(participantsToChannel[key]).isChannelOpen() == false,
    |                "Channel already exists between parties");
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(1027)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OfferRegistry':
    |
    |        for (uint i = 0; i < channelsGuids.length; i++) {
  > |            OfferMultiSig(guidToChannel[channelsGuids[i]].msig).pause();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(1095)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OfferRegistry':
    |
    |        for (uint i = 0; i < channelsGuids.length; i++) {
  > |            OfferMultiSig(guidToChannel[channelsGuids[i]].msig).unpause();
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(1110)

[33mWarning[0m for UnrestrictedWrite in contract 'OfferRegistry':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'OfferRegistry':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'OfferRegistry':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'OfferRegistry':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(108)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(63)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(108)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(119)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6e88630a466e054ba3a7da00422b66f7562ce943.sol(359)


