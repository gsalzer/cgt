Processing contract: /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol:Aizen
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Aizen':
    | *      Fully backward compatible with ERC20
    | */
  > |contract Aizen is ERC223, Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(176)

[33mWarning[0m for UnhandledException in contract 'Aizen':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Aizen':
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |                && allowance[_from][msg.sender] >= _value);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
  > |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |        balanceOf[_from] = balanceOf[_from].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
  > |        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |                && balanceOf[_from] >= _unitAmount);
    |
  > |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
    |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |
    |        balanceOf[_from] = balanceOf[_from].sub(_unitAmount);
  > |        totalSupply = totalSupply.sub(_unitAmount);
    |        Burn(_from, _unitAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |        require(_unitAmount > 0);
    |
  > |        totalSupply = totalSupply.add(_unitAmount);
    |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        emit Mint(_to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |
    |        totalSupply = totalSupply.add(_unitAmount);
  > |        balanceOf[_to] = balanceOf[_to].add(_unitAmount);
    |        emit Mint(_to, _unitAmount);
    |        emit Transfer(address(0), _to, _unitAmount);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Aizen':
    |     */
    |    function finishMinting() onlyOwner canMint public returns (bool) {
  > |        mintingFinished = true;
    |        emit MintFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(362)

[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    | * @dev Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    }
    |
  > |    function tokenFallback(address _from, uint256 _value, bytes _data) public pure {
    |        TKN memory tkn;
    |        tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    | * @dev Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(143)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * modifier anymore.
    |    */
  > |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
    |        owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param _newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        _transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param _newOwner The address to transfer ownership to.
    |    */
  > |    function _transferOwnership(address _newOwner) internal {
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function renounceOwnership() public onlyOwner {
    |        emit OwnershipRenounced(owner);
  > |        owner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0));
    |        emit OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(112)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x21c5a6074b4c9a2c877cad1e8c2fdf34647cb58e.sol(8)


