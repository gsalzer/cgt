Processing contract: /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol:RareAsset
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol:RareNetwork
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(116)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// File: contracts/Owned.sol
    |
  > |contract Owned {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |  address public owner;
    |
    |  function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |  }
    |
  > |  function transferOwnership(address newOwner) external onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |  function transferOwnership(address newOwner) external onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(19)

[33mWarning[0m for LockedEther in contract 'RareAsset':
    |// File: contracts/RareAsset.sol
    |
  > |contract RareAsset is StandardToken {
    |
    |  bytes public name;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'RareAsset':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'RareAsset':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'RareAsset':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'RareAsset':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'RareAsset':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'RareAsset':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(235)

[33mWarning[0m for LockedEther in contract 'RareNetwork':
    |// File: contracts/RareNetwork.sol
    |
  > |contract RareNetwork is Owned {
    |
    |  address owner;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(265)

[31mViolation[0m for MissingInputValidation in contract 'RareNetwork':
    |  event AssetCreated(address indexed asset);
    |
  > |  function createAsset(bytes assetname, uint supply, bytes ipfsHash, bytes attrHash, address creator) public returns (RareAsset asset) {
    |    RareAsset newAsset;
    |
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(276)

[31mViolation[0m for MissingInputValidation in contract 'RareNetwork':
    |  }
    |
  > |  function addAssetToNetwork(address assetAddress) public onlyOwner  {
    |    RareAssets.push(assetAddress) -1;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'RareNetwork':
    |
    |contract Owned {
  > |  address public owner;
    |
    |  function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'RareNetwork':
    |  }
    |
  > |  function transferOwnership(address newOwner) external onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'RareNetwork':
    |// File: contracts/RareNetwork.sol
    |
  > |contract RareNetwork is Owned {
    |
    |  address owner;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(265)

[33mWarning[0m for MissingInputValidation in contract 'RareNetwork':
    |  address owner;
    |
  > |  string public standard = "RareNetwork 1.0";
    |  string public name = "Rare Network";
    |  uint public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'RareNetwork':
    |
    |  string public standard = "RareNetwork 1.0";
  > |  string public name = "Rare Network";
    |  uint public decimals = 0;
    |  address[] public RareAssets;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(270)

[33mWarning[0m for MissingInputValidation in contract 'RareNetwork':
    |  string public standard = "RareNetwork 1.0";
    |  string public name = "Rare Network";
  > |  uint public decimals = 0;
    |  address[] public RareAssets;
    |
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(271)

[33mWarning[0m for MissingInputValidation in contract 'RareNetwork':
    |  string public name = "Rare Network";
    |  uint public decimals = 0;
  > |  address[] public RareAssets;
    |
    |  event AssetCreated(address indexed asset);
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(272)

[33mWarning[0m for MissingInputValidation in contract 'RareNetwork':
    |  }
    |
  > |  function countAssets() view public returns (uint) {
    |    return RareAssets.length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(291)

[31mViolation[0m for UnrestrictedWrite in contract 'RareNetwork':
    |pragma solidity ^0.4.18;
    |
  > |// File: contracts/Owned.sol
    |
    |contract Owned {
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'RareNetwork':
    |		//Create RareAssets
    |    newAsset = new RareAsset(assetname, supply, ipfsHash, attrHash, creator);
  > |    RareAssets.push(newAsset);
    |
    |    emit AssetCreated(newAsset);
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'RareNetwork':
    |pragma solidity ^0.4.18;
    |
  > |// File: contracts/Owned.sol
    |
    |contract Owned {
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'RareNetwork':
    |  function transferOwnership(address newOwner) external onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(19)

[33mWarning[0m for UnrestrictedWrite in contract 'RareNetwork':
    |
    |  function addAssetToNetwork(address assetAddress) public onlyOwner  {
  > |    RareAssets.push(assetAddress) -1;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(288)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(30)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xe01317914a7104e264739a99485af6edff113fbc.sol(235)


