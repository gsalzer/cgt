Processing contract: /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol:AidocToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol:CappedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol:TokenParam
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AidocToken':
    |}
    |
  > |contract AidocToken is CappedToken,TokenParam {
    |    string public constant name = "AI Doctor";
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'AidocToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'AidocToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'AidocToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'AidocToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'AidocToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'AidocToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'AidocToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'AidocToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'AidocToken':
    |    }
    |    function addMinter(address _addr) onlyOwner {
  > |        minters[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'AidocToken':
    |
    |    function deleteMinter(address _addr) onlyOwner {
  > |        delete minters[_addr];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'AidocToken':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(264)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic, Ownable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(96)

[33mWarning[0m for LockedEther in contract 'CappedToken':
    | */
    |
  > |contract CappedToken is MintableToken {
    |
    |    uint256 public cap;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    }
    |    function addMinter(address _addr) onlyOwner {
  > |        minters[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    function deleteMinter(address _addr) onlyOwner {
  > |        delete minters[_addr];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(264)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken {
    |    event Mint(address indexed to, uint256 amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    }
    |    function addMinter(address _addr) onlyOwner {
  > |        minters[_addr] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    function deleteMinter(address _addr) onlyOwner {
  > |        delete minters[_addr];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(264)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(75)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(14)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        }
    |        else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function enableTransfers() public onlyOwner {
  > |        transfersEnabledFlag = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(96)

[33mWarning[0m for LockedEther in contract 'TokenParam':
    |}
    |
  > |contract TokenParam {
    |	/**
    |	 * 小数点位数
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(298)

[33mWarning[0m for MissingInputValidation in contract 'TokenParam':
    |	 * 小数点位数
    |	 */
  > |    uint256 public constant decimals = 18;
    |	
    |	/**
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'TokenParam':
    |	 * 总量
    |	 */
  > |    uint256 public constant capacity = 777777777 * 10 ** decimals;
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0x584b44853680ee34a0f337b712a8f66d816df151.sol(307)


