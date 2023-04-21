Processing contract: /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol:Contactable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol:HedpayToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Contactable':
    | * contact information.
    | */
  > |contract Contactable is Ownable {
    |
    |  string public contactInformation;
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'Contactable':
    | * contact information.
    | */
  > |contract Contactable is Ownable {
    |
    |  string public contactInformation;
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Contactable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Contactable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Contactable':
    | * contact information.
    | */
  > |contract Contactable is Ownable {
    |
    |  string public contactInformation;
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(123)

[31mViolation[0m for LockedEther in contract 'HedpayToken':
    | * @title HEdpAY Token Contract that can hold and transfer ERC-20 tokens
    | */
  > |contract HedpayToken is  IERC20, Contactable {
    |
    |   using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(217)

[33mWarning[0m for UnhandledException in contract 'HedpayToken':
    |        allowed[msg.sender][_spender] = _tokens;
    |        emit Approval(msg.sender, _spender, _tokens);
  > |        ApproveAndCallFallBack(_spender).receiveApproval(msg.sender, _tokens, this, _data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(318)

[33mWarning[0m for UnhandledException in contract 'HedpayToken':
    |    */
    |    function transferAnyERC20Token(address _tokenAddress, uint _tokens) public onlyOwner returns (bool success) {
  > |        return IERC20(_tokenAddress).transfer(owner, _tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(329)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HedpayToken':
    |        allowed[msg.sender][_spender] = _tokens;
    |        emit Approval(msg.sender, _spender, _tokens);
  > |        ApproveAndCallFallBack(_spender).receiveApproval(msg.sender, _tokens, this, _data);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HedpayToken':
    |    */
    |    function transferAnyERC20Token(address _tokenAddress, uint _tokens) public onlyOwner returns (bool success) {
  > |        return IERC20(_tokenAddress).transfer(owner, _tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'HedpayToken':
    | * @title HEdpAY Token Contract that can hold and transfer ERC-20 tokens
    | */
  > |contract HedpayToken is  IERC20, Contactable {
    |
    |   using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'HedpayToken':
    |    */
    |    function transfer(address _to, uint _value) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'HedpayToken':
    |    function transfer(address _to, uint _value) public returns (bool success) {
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'HedpayToken':
    |        require(_to != address(0));
    |        require(_value <= allowance(_from, msg.sender));
  > |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'HedpayToken':
    |        require(_value <= allowance(_from, msg.sender));
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'HedpayToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |		emit Approval(_from, msg.sender, allowance(_from, msg.sender));
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'HedpayToken':
    |    */
    |   function approve(address _spender, uint _value) public  returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'HedpayToken':
    |    */
    |    function approveAndCall(address _spender, uint _tokens, bytes _data) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _tokens;
    |        emit Approval(msg.sender, _spender, _tokens);
    |        ApproveAndCallFallBack(_spender).receiveApproval(msg.sender, _tokens, this, _data);
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'HedpayToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'HedpayToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'HedpayToken':
    | * @title HEdpAY Token Contract that can hold and transfer ERC-20 tokens
    | */
  > |contract HedpayToken is  IERC20, Contactable {
    |
    |   using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(217)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(113)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(
    |    IERC20 token,
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(175)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc4d5545392f5fc57eba3af8981815669bb7e2a48.sol(8)


