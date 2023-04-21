Processing contract: /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol:KinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol:KinTokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol:TokenHolder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol:VestingTrustee
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |/// @title Basic ERC20 token contract implementation.
    |/// @dev Based on OpenZeppelin's StandardToken.
  > |contract BasicToken is ERC20 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    /// @param _value uint256 The amount to be transferred.
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        balances[_to] = balances[_to].add(_value);
    |
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(179)

[33mWarning[0m for LockedEther in contract 'KinToken':
    |
    |/// @title Kin token contract.
  > |contract KinToken is Ownable, BasicToken, TokenHolder {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(200)

[33mWarning[0m for UnhandledException in contract 'KinToken':
    |    /// @param _amount uint256 The amount of tokens to be transferred.
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) onlyOwner returns (bool success) {
  > |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KinToken':
    |    /// @param _amount uint256 The amount of tokens to be transferred.
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) onlyOwner returns (bool success) {
  > |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |        }
    |
  > |        allowed[msg.sender][_spender] = _value;
    |
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |    /// @param _value uint256 The amount to be transferred.
    |    function transfer(address _to, uint256 _value) public returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |    function transfer(address _to, uint256 _value) public returns (bool) {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |        uint256 _allowance = allowed[_from][msg.sender];
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |        balances[_to] = balances[_to].add(_value);
    |
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |    /// @param _amount uint256 Amount of Kin tokens to mint.
    |    function mint(address _to, uint256 _amount) external onlyOwner onlyDuringMinting {
  > |        totalSupply = totalSupply.add(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |    function mint(address _to, uint256 _amount) external onlyOwner onlyDuringMinting {
    |        totalSupply = totalSupply.add(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |
    |        Transfer(0x0, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |        require(_newOwnerCandidate != address(0));
    |
  > |        newOwnerCandidate = _newOwnerCandidate;
    |
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |        address previousOwner = owner;
    |
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = address(0);
    |
    |        OwnershipTransferred(previousOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'KinToken':
    |        }
    |
  > |        isMinting = false;
    |
    |        MintingEnded();
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(243)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |/// @dev The Ownable contract has an owner address, and provides basic authorization control functions, this simplifies
    |/// and the implementation of "user permissions".
  > |contract Ownable {
    |    address public owner;
    |    address public newOwnerCandidate;
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |/// and the implementation of "user permissions".
    |contract Ownable {
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed _by, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    /// @dev Proposes to transfer control of the contract to a newOwnerCandidate.
    |    /// @param _newOwnerCandidate address The address to transfer ownership to.
  > |    function requestOwnershipTransfer(address _newOwnerCandidate) external onlyOwner {
    |        require(_newOwnerCandidate != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |    /// @dev Accept ownership transfer. This method needs to be called by the previously proposed owner.
  > |    function acceptOwnership() external onlyOwnerCandidate {
    |        address previousOwner = owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwnerCandidate != address(0));
    |
  > |        newOwnerCandidate = _newOwnerCandidate;
    |
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        address previousOwner = owner;
    |
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = address(0);
    |
    |        OwnershipTransferred(previousOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(51)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |/// @title Math operations with safety checks
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(58)

[33mWarning[0m for LockedEther in contract 'TokenHolder':
    |
    |/// @title Token holder contract.
  > |contract TokenHolder is Ownable {
    |    /// @dev Allow the owner to transfer out any accidentally sent ERC20 tokens.
    |    /// @param _tokenAddress address The address of the ERC20 contract.
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'TokenHolder':
    |    /// @param _tokenAddress address The address of the ERC20 contract.
    |    /// @param _amount uint256 The amount of tokens to be transferred.
  > |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) onlyOwner returns (bool success) {
    |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |/// and the implementation of "user permissions".
    |contract Ownable {
  > |    address public owner;
    |    address public newOwnerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |contract Ownable {
    |    address public owner;
  > |    address public newOwnerCandidate;
    |
    |    event OwnershipRequested(address indexed _by, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |    /// @dev Proposes to transfer control of the contract to a newOwnerCandidate.
    |    /// @param _newOwnerCandidate address The address to transfer ownership to.
  > |    function requestOwnershipTransfer(address _newOwnerCandidate) external onlyOwner {
    |        require(_newOwnerCandidate != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'TokenHolder':
    |
    |    /// @dev Accept ownership transfer. This method needs to be called by the previously proposed owner.
  > |    function acceptOwnership() external onlyOwnerCandidate {
    |        address previousOwner = owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(47)

[33mWarning[0m for UnhandledException in contract 'TokenHolder':
    |    /// @param _amount uint256 The amount of tokens to be transferred.
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) onlyOwner returns (bool success) {
  > |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenHolder':
    |    /// @param _amount uint256 The amount of tokens to be transferred.
    |    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) onlyOwner returns (bool success) {
  > |        return ERC20(_tokenAddress).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        require(_newOwnerCandidate != address(0));
    |
  > |        newOwnerCandidate = _newOwnerCandidate;
    |
    |        OwnershipRequested(msg.sender, newOwnerCandidate);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |        address previousOwner = owner;
    |
  > |        owner = newOwnerCandidate;
    |        newOwnerCandidate = address(0);
    |
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenHolder':
    |
    |        owner = newOwnerCandidate;
  > |        newOwnerCandidate = address(0);
    |
    |        OwnershipTransferred(previousOwner, owner);
  at /home/jiaming/mavs_srcs/contract@0x8bfe5ebb128ee82f4ba80f56bb32409cc87bc6fb.sol(51)


