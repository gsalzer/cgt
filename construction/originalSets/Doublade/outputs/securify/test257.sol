Processing contract: /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol:ABIO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol:ERC223Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol:ReceiverContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ABIO':
    |
    |
  > |contract ABIO is ERC223Interface{
    |    using SafeMath for uint256;
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(95)

[33mWarning[0m for UnhandledException in contract 'ABIO':
    |        if(isContract(_to)){
    |            ReceiverContract receiver = ReceiverContract(_to);
  > |            receiver.tokenFallback(_from, _amount, _data);
    |        }
    |        assert(initialBalances == balanceOf(_from).add(balanceOf(_to)));
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABIO':
    |        if(isContract(_to)){
    |            ReceiverContract receiver = ReceiverContract(_to);
  > |            receiver.tokenFallback(_from, _amount, _data);
    |        }
    |        assert(initialBalances == balanceOf(_from).add(balanceOf(_to)));
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |        require(_newOwner != address(0x0));
    |        emit ownerTransfer(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |    function deleteOwner() public onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |    function deleteOwner() public onlyOwner{
    |        emit ownerGone(owner);
  > |        owner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |    }
    |    function pause() public onlyOwner {
  > |        paused = true;
    |        emit ContractPaused(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |    }
    |    function unpause() public onlyOwner {
  > |        paused = false;
    |        emit ContractUnpaused(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |    function supplyPICO(address _preIco) onlyOwner{
    |        require(_preIco != 0x0 && PICOAddress == 0x0);
  > |        PICOAddress = _preIco;
    |    }
    |    function supplyICO(address _ico) onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |    function supplyICO(address _ico) onlyOwner{
    |        require(_ico != 0x0 && ICOAddress == 0x0);
  > |        ICOAddress = _ico;
    |    }
    |    function burnMyBalance() public {
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |        require(msg.sender == ICOAddress || msg.sender == PICOAddress);
    |        uint b = balanceOf(msg.sender);
  > |        totalSupply = totalSupply.sub(b);
    |        balances[msg.sender] = 0;
    |        emit BalanceBurned(msg.sender, b);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |        uint b = balanceOf(msg.sender);
    |        totalSupply = totalSupply.sub(b);
  > |        balances[msg.sender] = 0;
    |        emit BalanceBurned(msg.sender, b);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |        uint256 initialBalances = balanceOf(_from).add(balanceOf(_to));
    |
  > |        balances[_from] = balanceOf(_from).sub(_amount);
    |        balances[_to] = balanceOf(_to).add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |
    |        balances[_from] = balanceOf(_from).sub(_amount);
  > |        balances[_to] = balanceOf(_to).add(_amount);
    |
    |        if(isContract(_to)){
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |
    |
  > |        allowed[_from][msg.sender] = allowance(_from, msg.sender).sub(_amount);
    |        assert(_transfer(_from, _to, _amount, _data));
    |        emit Transfer(_from, _to, _amount, _data);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |
    |        bytes memory empty;
  > |        allowed[_from][msg.sender] = allowance(_from, msg.sender).sub(_amount);
    |        assert(_transfer(_from, _to, _amount, empty));
    |        emit Transfer(_from, _to, _amount, empty);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'ABIO':
    |    function approve(address _spender, uint256 _amount) stopOnPause public returns (bool success){
    |        require(_spender != 0x0);
  > |        allowed[msg.sender][_spender] = _amount;
    |        emit Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(218)

[33mWarning[0m for LockedEther in contract 'Haltable':
    |    }
    |}
  > |contract Haltable is Ownable{
    |    bool public paused;
    |    event ContractPaused(address by);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |}
    |contract Ownable{
  > |    address public owner;
    |    event ownerTransfer(address indexed oldOwner, address indexed newOwner);
    |    event ownerGone(address indexed oldOwner);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |        _;
    |    }
  > |    function changeOwner(address _newOwner) public onlyOwner{
    |        require(_newOwner != address(0x0));
    |        emit ownerTransfer(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |        owner = _newOwner;
    |    }
  > |    function deleteOwner() public onlyOwner{
    |        emit ownerGone(owner);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |}
    |contract Haltable is Ownable{
  > |    bool public paused;
    |    event ContractPaused(address by);
    |    event ContractUnpaused(address by);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |        paused = false;
    |    }
  > |    function pause() public onlyOwner {
    |        paused = true;
    |        emit ContractPaused(owner);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |        emit ContractPaused(owner);
    |    }
  > |    function unpause() public onlyOwner {
    |        paused = false;
    |        emit ContractUnpaused(owner);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |        require(_newOwner != address(0x0));
    |        emit ownerTransfer(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |    function deleteOwner() public onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    function deleteOwner() public onlyOwner{
    |        emit ownerGone(owner);
  > |        owner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    }
    |    function pause() public onlyOwner {
  > |        paused = true;
    |        emit ContractPaused(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    }
    |    function unpause() public onlyOwner {
  > |        paused = false;
    |        emit ContractUnpaused(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(80)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
    |}
  > |contract Ownable{
    |    address public owner;
    |    event ownerTransfer(address indexed oldOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |}
    |contract Ownable{
  > |    address public owner;
    |    event ownerTransfer(address indexed oldOwner, address indexed newOwner);
    |    event ownerGone(address indexed oldOwner);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        _;
    |    }
  > |    function changeOwner(address _newOwner) public onlyOwner{
    |        require(_newOwner != address(0x0));
    |        emit ownerTransfer(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |        owner = _newOwner;
    |    }
  > |    function deleteOwner() public onlyOwner{
    |        emit ownerGone(owner);
    |        owner = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != address(0x0));
    |        emit ownerTransfer(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |    function deleteOwner() public onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function deleteOwner() public onlyOwner{
    |        emit ownerGone(owner);
  > |        owner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(65)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.23;
    |
  > |library SafeMath{
    |    // Multiples 2 numbers, throws on overflow is detected.
    |    function mul(uint256 _x, uint256 _y) internal pure returns (uint256 result){
  at /home/jiaming/mavs_srcs/contract@0x11df22f31dbdab228d605637ee43777aaf9ee089.sol(3)


