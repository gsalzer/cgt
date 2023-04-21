Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:ELTToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:ELTTokenImpl
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:ELTTokenType
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:ERC223Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:OwnershipTransferrable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:StandardTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:TimeVaultInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:TimeVaultToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:VersionedToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    | * As part of the ERC223 standard we need to call the fallback of the token
    | */
  > |contract ContractReceiver {
    |    struct TKN {
    |        address sender;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    }
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |        TKN memory tkn;
    |        tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    | * As part of the ERC223 standard we need to call the fallback of the token
    | */
  > |contract ContractReceiver {
    |    struct TKN {
    |        address sender;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(45)

[33mWarning[0m for LockedEther in contract 'ELTToken':
    |    }
    |}
  > |contract ELTToken is VersionedToken, ELTTokenType {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(370)

[31mViolation[0m for MissingInputValidation in contract 'ELTToken':
    |     */
    |
  > |    function upgradeToken(address newImplementation) onlyOwner public {
    |        upgradableContractAddress = newImplementation;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(330)

[33mWarning[0m for MissingInputValidation in contract 'ELTToken':
    | */
    |contract owned {
  > |    address public owner;
    |
    |    function  owned() public {
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'ELTToken':
    | */
    |contract ELTTokenType {
  > |    uint public decimals;
    |    uint public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'ELTToken':
    |contract ELTTokenType {
    |    uint public decimals;
  > |    uint public totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'ELTToken':
    |
    |    // Token release switch
  > |    bool public released;
    |
    |    // The date before the release must be finalized (a unix timestamp)
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'ELTToken':
    |
    |    // The date before the release must be finalized (a unix timestamp)
  > |    uint public globalTimeVault;
    |
    |    event Transfer(address indexed from, address indexed to, uint tokens);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'ELTToken':
    |}
    |contract VersionedToken is owned {
  > |    address public upgradableContractAddress;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'ELTToken':
    |}
    |contract ELTToken is VersionedToken, ELTTokenType {
  > |    string public name;
    |    string public symbol;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(371)

[33mWarning[0m for MissingInputValidation in contract 'ELTToken':
    |contract ELTToken is VersionedToken, ELTTokenType {
    |    string public name;
  > |    string public symbol;
    |
    |    function ELTToken(address _tokenOwner, string _tokenName, string _tokenSymbol, uint _totalSupply, uint _decimals, uint _globalTimeVaultOpeningTime, address _initialImplementation) VersionedToken(_initialImplementation)  public {
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTToken':
    |
    |    function upgradeToken(address newImplementation) onlyOwner public {
  > |        upgradableContractAddress = newImplementation;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(331)

[31mViolation[0m for LockedEther in contract 'ELTTokenImpl':
    |    }
    |}
  > |contract ELTTokenImpl is StandardTokenExt {
    |    /** Name and symbol were updated. */
    |    event UpdatedTokenInformation(string newName, string newSymbol);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(387)

[33mWarning[0m for UnhandledException in contract 'ELTTokenImpl':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ELTTokenImpl':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |    }
    |}
  > |contract ELTTokenImpl is StandardTokenExt {
    |    /** Name and symbol were updated. */
    |    event UpdatedTokenInformation(string newName, string newSymbol);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |     */
    |    function approve(address _spender, uint _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |            require (_value <= allowed[_from][msg.sender]);
    |        }
  > |        balances[_from] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |        }
    |        balances[_from] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |    function transferByOwner(address to, uint value, uint earliestReTransferTime) onlyOwner public returns (bool) {
    |        transfer(to, value);
  > |        timevault[to] = earliestReTransferTime;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |    }
    |}
  > |contract ELTTokenImpl is StandardTokenExt {
    |    /** Name and symbol were updated. */
    |    event UpdatedTokenInformation(string newName, string newSymbol);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |     */
    |    function releaseTokenTransfer(bool _value) onlyOwner public {
  > |        released = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |
    |    function setGlobalTimeVault(uint _globalTimeVaultOpeningTime) onlyOwner public {
  > |        globalTimeVault = _globalTimeVaultOpeningTime;
    |    }
    |     function admin(string functionName, string p1, string p2, string p3) onlyOwner public returns (bool result) {
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'ELTTokenImpl':
    |     function admin(string functionName, string p1, string p2, string p3) onlyOwner public returns (bool result) {
    |        // Use parameters to remove warning
  > |        adminReturnStatus = (bytes(functionName).length + bytes(p1).length + bytes(p2).length + bytes(p3).length) != 0;
    |
    |        return adminReturnStatus ;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(407)

[33mWarning[0m for LockedEther in contract 'ELTTokenType':
    | * All meta information for the Token must be defined here so that it can be accessed from both sides of proxy
    | */
  > |contract ELTTokenType {
    |    uint public decimals;
    |    uint public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'ELTTokenType':
    | */
    |contract ELTTokenType {
  > |    uint public decimals;
    |    uint public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'ELTTokenType':
    |contract ELTTokenType {
    |    uint public decimals;
  > |    uint public totalSupply;
    |
    |    mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'ELTTokenType':
    |
    |    // Token release switch
  > |    bool public released;
    |
    |    // The date before the release must be finalized (a unix timestamp)
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'ELTTokenType':
    |
    |    // The date before the release must be finalized (a unix timestamp)
  > |    uint public globalTimeVault;
    |
    |    event Transfer(address indexed from, address indexed to, uint tokens);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(121)

[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |}
    |
  > |contract ERC20Token is ERC20Interface, ERC223Interface, ELTTokenType {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(126)

[33mWarning[0m for UnhandledException in contract 'ERC20Token':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20Token':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |     */
    |    function approve(address _spender, uint _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |            require (_value <= allowed[_from][msg.sender]);
    |        }
  > |        balances[_from] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(223)

[33mWarning[0m for LockedEther in contract 'OwnershipTransferrable':
    |    }
    |}
  > |contract OwnershipTransferrable is TimeVaultToken {
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(289)

[33mWarning[0m for UnhandledException in contract 'OwnershipTransferrable':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OwnershipTransferrable':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnershipTransferrable':
    |     */
    |    function approve(address _spender, uint _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnershipTransferrable':
    |            require (_value <= allowed[_from][msg.sender]);
    |        }
  > |        balances[_from] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnershipTransferrable':
    |        }
    |        balances[_from] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(224)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |    function mul(uint a, uint b) internal pure returns (uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(75)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |}
  > |contract StandardToken is TimeVaultToken {
    |    /**
    |     * approve should be called when allowed[_spender] == 0. To increment
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(257)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            require (_value <= allowed[_from][msg.sender]);
    |        }
  > |        balances[_from] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        }
    |        balances[_from] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transferByOwner(address to, uint value, uint earliestReTransferTime) onlyOwner public returns (bool) {
    |        transfer(to, value);
  > |        timevault[to] = earliestReTransferTime;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(275)

[33mWarning[0m for LockedEther in contract 'StandardTokenExt':
    |
    |}
  > |contract StandardTokenExt is StandardToken {
    |
    |    /* Interface declaration */
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(282)

[33mWarning[0m for UnhandledException in contract 'StandardTokenExt':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardTokenExt':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |     */
    |    function approve(address _spender, uint _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |            require (_value <= allowed[_from][msg.sender]);
    |        }
  > |        balances[_from] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |        }
    |        balances[_from] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    function transferByOwner(address to, uint value, uint earliestReTransferTime) onlyOwner public returns (bool) {
    |        transfer(to, value);
  > |        timevault[to] = earliestReTransferTime;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(275)

[33mWarning[0m for LockedEther in contract 'TimeVaultToken':
    |    }
    |}
  > |contract TimeVaultToken is  owned, TimeVaultInterface, ERC20Token {
    |
    |    function transferByOwner(address to, uint value, uint earliestReTransferTime) onlyOwner public returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(240)

[33mWarning[0m for UnhandledException in contract 'TimeVaultToken':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TimeVaultToken':
    |        transferIfRequirementsMet(msg.sender, _to, _value, withAllowance);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'TimeVaultToken':
    |     */
    |    function approve(address _spender, uint _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'TimeVaultToken':
    |            require (_value <= allowed[_from][msg.sender]);
    |        }
  > |        balances[_from] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'TimeVaultToken':
    |        }
    |        balances[_from] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'TimeVaultToken':
    |    function transferByOwner(address to, uint value, uint earliestReTransferTime) onlyOwner public returns (bool) {
    |        transfer(to, value);
  > |        timevault[to] = earliestReTransferTime;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(244)

[33mWarning[0m for LockedEther in contract 'VersionedToken':
    |
    |}
  > |contract VersionedToken is owned {
    |    address public upgradableContractAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(301)

[31mViolation[0m for MissingInputValidation in contract 'VersionedToken':
    |     */
    |
  > |    function upgradeToken(address newImplementation) onlyOwner public {
    |        upgradableContractAddress = newImplementation;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(330)

[33mWarning[0m for MissingInputValidation in contract 'VersionedToken':
    | */
    |contract owned {
  > |    address public owner;
    |
    |    function  owned() public {
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'VersionedToken':
    |}
    |contract VersionedToken is owned {
  > |    address public upgradableContractAddress;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'VersionedToken':
    |
    |    function upgradeToken(address newImplementation) onlyOwner public {
  > |        upgradableContractAddress = newImplementation;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(331)

[33mWarning[0m for LockedEther in contract 'owned':
    | * @dev To verify ownership
    | */
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    | */
    |contract owned {
  > |    address public owner;
    |
    |    function  owned() public {
  at /home/jiaming/mavs_srcs/contract@0x7a66266651283651ddc1ae929aa8763f407180e7.sol(30)


