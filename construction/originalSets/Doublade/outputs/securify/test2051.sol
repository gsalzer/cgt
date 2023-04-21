Processing contract: /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol:ShortAddressProtection
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic, ShortAddressProtection {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(93)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * @title Flowcoin token
    | */
  > |contract MintableToken is Ownable, StandardToken {
    |
    |    event Mint(address indexed to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) onlyPayloadSize(2) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function mint(address _to, uint256 _amount) onlySaleAgent canMint public returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function mint(address _to, uint256 _amount) onlySaleAgent canMint public returns (bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
    |        Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    function setSaleAgent(address _saleAgent) onlyOwner public {
    |        require(_saleAgent != address(0));
  > |        saleAgent = _saleAgent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function finishMinting() onlySaleAgent canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(286)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(236)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(7)

[33mWarning[0m for LockedEther in contract 'ShortAddressProtection':
    |}
    |
  > |contract ShortAddressProtection {
    |
    |    modifier onlyPayloadSize(uint256 numwords) {
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(66)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping(address => mapping(address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) onlyPayloadSize(2) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(200)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is MintableToken {
    |    string public constant name = "TOKPIE";
    |    string public constant symbol = "TKP";
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        // SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(_value <= allowed[_from][msg.sender]);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) onlyPayloadSize(2) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |     */
    |    function mint(address _to, uint256 _amount) onlySaleAgent canMint public returns (bool) {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function mint(address _to, uint256 _amount) onlySaleAgent canMint public returns (bool) {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Mint(_to, _amount);
    |        Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function setSaleAgent(address _saleAgent) onlyOwner public {
    |        require(_saleAgent != address(0));
  > |        saleAgent = _saleAgent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |     */
    |    function finishMinting() onlySaleAgent canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x85da32246e44be963f67361a6e317684ffb9b91f.sol(286)


