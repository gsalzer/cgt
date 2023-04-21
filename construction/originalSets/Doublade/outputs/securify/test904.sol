Processing contract: /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol:DOCToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol:DOCTokenConfig
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol:FinalizableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DOCToken':
    |}
    |
  > |contract DOCToken is FinalizableToken, DOCTokenConfig {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |        if (fromBalance < _value) return false;
    |        if (_value > 0 && msg.sender != _to) {
  > |          balances[msg.sender] = fromBalance.sub(_value);
    |          balances[_to] = balances[_to].add(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |        if (_value > 0 && msg.sender != _to) {
    |          balances[msg.sender] = fromBalance.sub(_value);
  > |          balances[_to] = balances[_to].add(_value);
    |        }
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |        if (fromBalance < _value) return false;
    |    
  > |        allowed [_from][msg.sender] = spenderAllowance.sub(_value);
    |    
    |        if (_value > 0 && _from != _to) {
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |    
    |        if (_value > 0 && _from != _to) {
  > |          balances [_from] = fromBalance.add(_value);
    |          balances [_to] = balances[_to].add(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |        if (_value > 0 && _from != _to) {
    |          balances [_from] = fromBalance.add(_value);
  > |          balances [_to] = balances[_to].add(_value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |        }
    |        //if not then first it will do address(0) then it will return true.
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        tokenTotalSupply = tokenTotalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        tokenTotalSupply = tokenTotalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |        }
    |
  > |        balances[account] = balances[account].sub(amount);
    |        balances[owner] = balances[owner].add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'DOCToken':
    |
    |        balances[account] = balances[account].sub(amount);
  > |        balances[owner] = balances[owner].add(amount);
    |
    |        Transfer(account, owner, amount);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(362)

[33mWarning[0m for LockedEther in contract 'DOCTokenConfig':
    |}
    |
  > |contract DOCTokenConfig {
    |
    |    string  public constant TOKEN_SYMBOL      = "DOC";
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(311)

[33mWarning[0m for MissingInputValidation in contract 'DOCTokenConfig':
    |contract DOCTokenConfig {
    |
  > |    string  public constant TOKEN_SYMBOL      = "DOC";
    |    string  public constant TOKEN_NAME        = "DOMUSCOINS Token";
    |    uint8   public constant TOKEN_DECIMALS    = 18;
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(313)

[33mWarning[0m for MissingInputValidation in contract 'DOCTokenConfig':
    |
    |    string  public constant TOKEN_SYMBOL      = "DOC";
  > |    string  public constant TOKEN_NAME        = "DOMUSCOINS Token";
    |    uint8   public constant TOKEN_DECIMALS    = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(314)

[33mWarning[0m for MissingInputValidation in contract 'DOCTokenConfig':
    |    string  public constant TOKEN_SYMBOL      = "DOC";
    |    string  public constant TOKEN_NAME        = "DOMUSCOINS Token";
  > |    uint8   public constant TOKEN_DECIMALS    = 18;
    |
    |    uint256 public constant DECIMALSFACTOR    = 10**uint256(TOKEN_DECIMALS);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(315)

[33mWarning[0m for MissingInputValidation in contract 'DOCTokenConfig':
    |    uint8   public constant TOKEN_DECIMALS    = 18;
    |
  > |    uint256 public constant DECIMALSFACTOR    = 10**uint256(TOKEN_DECIMALS);
    |    uint256 public constant TOKEN_TOTALSUPPLY = 1000000000 * DECIMALSFACTOR;
    |
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(317)

[33mWarning[0m for MissingInputValidation in contract 'DOCTokenConfig':
    |
    |    uint256 public constant DECIMALSFACTOR    = 10**uint256(TOKEN_DECIMALS);
  > |    uint256 public constant TOKEN_TOTALSUPPLY = 1000000000 * DECIMALSFACTOR;
    |
    |    address public constant PUBLIC_RESERVED = 0xcd6b3d0c0dd850bad071cd20e428940d2e25120f;
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'DOCTokenConfig':
    |    uint256 public constant TOKEN_TOTALSUPPLY = 1000000000 * DECIMALSFACTOR;
    |
  > |    address public constant PUBLIC_RESERVED = 0xcd6b3d0c0dd850bad071cd20e428940d2e25120f;
    |    uint256 public constant PUBLIC_RESERVED_PERSENTAGE = 9000;
    |
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(320)

[33mWarning[0m for MissingInputValidation in contract 'DOCTokenConfig':
    |
    |    address public constant PUBLIC_RESERVED = 0xcd6b3d0c0dd850bad071cd20e428940d2e25120f;
  > |    uint256 public constant PUBLIC_RESERVED_PERSENTAGE = 9000;
    |
    |    address[] public BOARD_RESERVED = [ 0x91cdb4c96d43591432fba178b672800b30266d63,
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'DOCTokenConfig':
    |    uint256 public constant PUBLIC_RESERVED_PERSENTAGE = 9000;
    |
  > |    address[] public BOARD_RESERVED = [ 0x91cdb4c96d43591432fba178b672800b30266d63,
    |    0x5a4dd8f6fc098869fa306c4143b281f214384de4,
    |    0x2e067592283a463f9b425165c3bde40bc6cf8309,
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(323)

[33mWarning[0m for MissingInputValidation in contract 'DOCTokenConfig':
    |    ];
    |
  > |    uint256[] public BOARD_RESERVED_PERSENTAGE = [200,200,200,500,500,1000,1000,2000,2000,2400];
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(335)

[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |}
    |
  > |contract ERC20Token is ERC20Interface {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        if (fromBalance < _value) return false;
    |        if (_value > 0 && msg.sender != _to) {
  > |          balances[msg.sender] = fromBalance.sub(_value);
    |          balances[_to] = balances[_to].add(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        if (fromBalance < _value) return false;
    |    
  > |        allowed [_from][msg.sender] = spenderAllowance.sub(_value);
    |    
    |        if (_value > 0 && _from != _to) {
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(160)

[33mWarning[0m for LockedEther in contract 'FinalizableToken':
    |}
    |
  > |contract FinalizableToken is ERC20Token, Owned {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        if (fromBalance < _value) return false;
    |        if (_value > 0 && msg.sender != _to) {
  > |          balances[msg.sender] = fromBalance.sub(_value);
    |          balances[_to] = balances[_to].add(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        if (_value > 0 && msg.sender != _to) {
    |          balances[msg.sender] = fromBalance.sub(_value);
  > |          balances[_to] = balances[_to].add(_value);
    |        }
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        if (fromBalance < _value) return false;
    |    
  > |        allowed [_from][msg.sender] = spenderAllowance.sub(_value);
    |    
    |        if (_value > 0 && _from != _to) {
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |    
    |        if (_value > 0 && _from != _to) {
  > |          balances [_from] = fromBalance.add(_value);
    |          balances [_to] = balances[_to].add(_value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        if (_value > 0 && _from != _to) {
    |          balances [_from] = fromBalance.add(_value);
  > |          balances [_to] = balances[_to].add(_value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        tokenTotalSupply = tokenTotalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        }
    |        //if not then first it will do address(0) then it will return true.
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'FinalizableToken':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(227)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(168)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |    address public proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    address public owner;
  > |    address public proposedOwner = address(0);
    |
    |    event OwnershipTransferInitiated(address indexed _proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function isOwner(address _address) public view returns (bool) {
    |        return (_address == owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function initiateOwnershipTransfer(address _proposedOwner) public onlyOwner returns (bool) {
    |        require(_proposedOwner != address(0));
    |        require(_proposedOwner != address(this));
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function cancelOwnershipTransfer() public onlyOwner returns (bool) {
    |        //if proposedOwner address already address(0) then it will return true.
    |        if (proposedOwner == address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |
  > |    function completeOwnershipTransfer() public returns (bool) {
    |
    |        require(msg.sender == proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(_proposedOwner != owner);
    |
  > |        proposedOwner = _proposedOwner;
    |
    |        OwnershipTransferInitiated(proposedOwner);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        }
    |        //if not then first it will do address(0) then it will return true.
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCanceled();
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == proposedOwner);
    |
  > |        owner = msg.sender;
    |        proposedOwner = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |        owner = msg.sender;
  > |        proposedOwner = address(0);
    |
    |        OwnershipTransferCompleted(owner);
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(227)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x39a87dc12a7199aa012c18f114b763e27d0deca4.sol(2)


