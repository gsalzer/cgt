Processing contract: /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol:FinalizableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol:HCXToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol:HCXTokenConfig
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |}
    |
  > |contract ERC20Token is ERC20Interface {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        if (fromBalance < _value) return false;
    |        if (_value > 0 && msg.sender != _to) {
  > |          balances[msg.sender] = fromBalance.sub(_value);
    |          balances[_to] = balances[_to].add(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        if (fromBalance < _value) return false;
    |    
  > |        allowed [_from][msg.sender] = spenderAllowance.sub(_value);
    |    
    |        if (_value > 0 && _from != _to) {
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(162)

[33mWarning[0m for LockedEther in contract 'FinalizableToken':
    |}
    |
  > |contract FinalizableToken is ERC20Token, Owned {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        if (fromBalance < _value) return false;
    |        if (_value > 0 && msg.sender != _to) {
  > |          balances[msg.sender] = fromBalance.sub(_value);
    |          balances[_to] = balances[_to].add(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        if (_value > 0 && msg.sender != _to) {
    |          balances[msg.sender] = fromBalance.sub(_value);
  > |          balances[_to] = balances[_to].add(_value);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        if (fromBalance < _value) return false;
    |    
  > |        allowed [_from][msg.sender] = spenderAllowance.sub(_value);
    |    
    |        if (_value > 0 && _from != _to) {
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |    
    |        if (_value > 0 && _from != _to) {
  > |          balances [_from] = fromBalance.sub(_value);
    |          balances [_to] = balances[_to].add(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        if (_value > 0 && _from != _to) {
    |          balances [_from] = fromBalance.sub(_value);
  > |          balances [_to] = balances[_to].add(_value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        tokenTotalSupply = tokenTotalSupply.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        tokenTotalSupply = tokenTotalSupply.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        emit OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        }
    |        //if not then first it will do address(0) then it will return true.
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(229)

[33mWarning[0m for LockedEther in contract 'HCXToken':
    |
    |// Holiday Capital issues vouchers in the form of blockchain tokens to spend in all of its apartments around the world.
  > |contract HCXToken is FinalizableToken, HCXTokenConfig {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |        if (fromBalance < _value) return false;
    |        if (_value > 0 && msg.sender != _to) {
  > |          balances[msg.sender] = fromBalance.sub(_value);
    |          balances[_to] = balances[_to].add(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |        if (_value > 0 && msg.sender != _to) {
    |          balances[msg.sender] = fromBalance.sub(_value);
  > |          balances[_to] = balances[_to].add(_value);
    |        }
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |        if (fromBalance < _value) return false;
    |    
  > |        allowed [_from][msg.sender] = spenderAllowance.sub(_value);
    |    
    |        if (_value > 0 && _from != _to) {
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |    
    |        if (_value > 0 && _from != _to) {
  > |          balances [_from] = fromBalance.sub(_value);
    |          balances [_to] = balances[_to].add(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |        if (_value > 0 && _from != _to) {
    |          balances [_from] = fromBalance.sub(_value);
  > |          balances [_to] = balances[_to].add(_value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        emit OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |        }
    |        //if not then first it will do address(0) then it will return true.
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        tokenTotalSupply = tokenTotalSupply.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        tokenTotalSupply = tokenTotalSupply.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |        }
    |
  > |        balances[account] = balances[account].sub(amount);
    |        balances[owner] = balances[owner].add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'HCXToken':
    |
    |        balances[account] = balances[account].sub(amount);
  > |        balances[owner] = balances[owner].add(amount);
    |
    |        emit Transfer(account, owner, amount);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(330)

[33mWarning[0m for LockedEther in contract 'HCXTokenConfig':
    |}
    |
  > |contract HCXTokenConfig {
    |
    |    string  public constant TOKEN_SYMBOL      = "HCX";
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(292)

[33mWarning[0m for MissingInputValidation in contract 'HCXTokenConfig':
    |contract HCXTokenConfig {
    |
  > |    string  public constant TOKEN_SYMBOL      = "HCX";
    |    string  public constant TOKEN_NAME        = "HOLIDAY CAPITAL Token";
    |    uint8   public constant TOKEN_DECIMALS    = 18;
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(294)

[33mWarning[0m for MissingInputValidation in contract 'HCXTokenConfig':
    |
    |    string  public constant TOKEN_SYMBOL      = "HCX";
  > |    string  public constant TOKEN_NAME        = "HOLIDAY CAPITAL Token";
    |    uint8   public constant TOKEN_DECIMALS    = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(295)

[33mWarning[0m for MissingInputValidation in contract 'HCXTokenConfig':
    |    string  public constant TOKEN_SYMBOL      = "HCX";
    |    string  public constant TOKEN_NAME        = "HOLIDAY CAPITAL Token";
  > |    uint8   public constant TOKEN_DECIMALS    = 18;
    |
    |    uint256 public constant DECIMALSFACTOR    = 10**uint256(TOKEN_DECIMALS);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(296)

[33mWarning[0m for MissingInputValidation in contract 'HCXTokenConfig':
    |    uint8   public constant TOKEN_DECIMALS    = 18;
    |
  > |    uint256 public constant DECIMALSFACTOR    = 10**uint256(TOKEN_DECIMALS);
    |    uint256 public constant TOKEN_TOTALSUPPLY = 1000000000 * DECIMALSFACTOR;
    |
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(298)

[33mWarning[0m for MissingInputValidation in contract 'HCXTokenConfig':
    |
    |    uint256 public constant DECIMALSFACTOR    = 10**uint256(TOKEN_DECIMALS);
  > |    uint256 public constant TOKEN_TOTALSUPPLY = 1000000000 * DECIMALSFACTOR;
    |
    |    address public constant PUBLIC_RESERVED = 0x6E22277b9A32a88cba52d5108ca7E836d994859f;
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(299)

[33mWarning[0m for MissingInputValidation in contract 'HCXTokenConfig':
    |    uint256 public constant TOKEN_TOTALSUPPLY = 1000000000 * DECIMALSFACTOR;
    |
  > |    address public constant PUBLIC_RESERVED = 0x6E22277b9A32a88cba52d5108ca7E836d994859f;
    |    uint256 public constant PUBLIC_RESERVED_PERSENTAGE = 10000;
    |
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(301)

[33mWarning[0m for MissingInputValidation in contract 'HCXTokenConfig':
    |
    |    address public constant PUBLIC_RESERVED = 0x6E22277b9A32a88cba52d5108ca7E836d994859f;
  > |    uint256 public constant PUBLIC_RESERVED_PERSENTAGE = 10000;
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(302)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public proposedOwner = address(0);
    |
    |    event OwnershipTransferInitiated(address indexed _proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function isOwner(address _address) public view returns (bool) {
    |        return (_address == owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function initiateOwnershipTransfer(address _proposedOwner) public onlyOwner returns (bool) {
    |        require(_proposedOwner != address(0));
    |        require(_proposedOwner != address(this));
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function cancelOwnershipTransfer() public onlyOwner returns (bool) {
    |        //if proposedOwner address already address(0) then it will return true.
    |        if (proposedOwner == address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function completeOwnershipTransfer() public returns (bool) {
    |
    |        require(msg.sender == proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        emit OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        }
    |        //if not then first it will do address(0) then it will return true.
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        emit OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(229)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x44f2cef73e136e97abc7923634ebeb447f8a48ed.sol(2)


