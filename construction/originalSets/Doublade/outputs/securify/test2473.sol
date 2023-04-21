Processing contract: /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol:Utils
Processing contract: /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol:YooStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol:YoobaEarlyInvest
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |    Provides support and utilities for contract ownership
    |*/
  > |contract Owned is IOwned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(136)

[33mWarning[0m for LockedEther in contract 'YooStop':
    |}
    |
  > |contract YooStop is Owned{
    |
    |    bool public stopped = false;
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |contract YooStop is Owned{
    |
  > |    bool public stopped = false;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |        _;
    |    }
  > |    function stop() public ownerOnly{
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |        stopped = true;
    |    }
  > |    function start() public ownerOnly{
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'YooStop':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'YooStop':
    |    }
    |    function stop() public ownerOnly{
  > |        stopped = true;
    |    }
    |    function start() public ownerOnly{
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'YooStop':
    |    }
    |    function start() public ownerOnly{
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'YooStop':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'YooStop':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(136)

[33mWarning[0m for DAOConstantGas in contract 'YoobaEarlyInvest':
    |    {   
    |        require(_amount <= this.balance);
  > |        _to.transfer(_amount); // send the amount to the target account
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(177)

[33mWarning[0m for LockedEther in contract 'YoobaEarlyInvest':
    |
    |
  > |contract YoobaEarlyInvest is  Owned,YooStop,Utils {
    |    IERC20Token public yoobaTokenAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'YoobaEarlyInvest':
    |    }
    |    
  > |    function withdrawERC20TokenTo(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'YoobaEarlyInvest':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'YoobaEarlyInvest':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'YoobaEarlyInvest':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'YoobaEarlyInvest':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'YoobaEarlyInvest':
    |contract YooStop is Owned{
    |
  > |    bool public stopped = false;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'YoobaEarlyInvest':
    |        _;
    |    }
  > |    function stop() public ownerOnly{
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'YoobaEarlyInvest':
    |        stopped = true;
    |    }
  > |    function start() public ownerOnly{
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'YoobaEarlyInvest':
    |
    |contract YoobaEarlyInvest is  Owned,YooStop,Utils {
  > |    IERC20Token public yoobaTokenAddress;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'YoobaEarlyInvest':
    |
    |    
  > |    function withdrawTo(address _to, uint256 _amount)
    |        public ownerOnly stoppable
    |        notThis(_to)
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'YoobaEarlyInvest':
    |    }
    |    
  > |    function buyToken() internal
    |    {
    |        require(!stopped && msg.value >= 0.1 ether);
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(191)

[33mWarning[0m for TODAmount in contract 'YoobaEarlyInvest':
    |    {   
    |        require(_amount <= this.balance);
  > |        _to.transfer(_amount); // send the amount to the target account
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(177)

[33mWarning[0m for TODReceiver in contract 'YoobaEarlyInvest':
    |    {   
    |        require(_amount <= this.balance);
  > |        _to.transfer(_amount); // send the amount to the target account
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(177)

[33mWarning[0m for UnhandledException in contract 'YoobaEarlyInvest':
    |    {   
    |        require(_amount <= this.balance);
  > |        _to.transfer(_amount); // send the amount to the target account
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(177)

[33mWarning[0m for UnhandledException in contract 'YoobaEarlyInvest':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(187)

[33mWarning[0m for UnhandledException in contract 'YoobaEarlyInvest':
    |        require(!stopped && msg.value >= 0.1 ether);
    |        uint256  amount = msg.value * 350000;
  > |        assert(yoobaTokenAddress.transfer(msg.sender, amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(195)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YoobaEarlyInvest':
    |    {   
    |        require(_amount <= this.balance);
  > |        _to.transfer(_amount); // send the amount to the target account
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YoobaEarlyInvest':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YoobaEarlyInvest':
    |        require(!stopped && msg.value >= 0.1 ether);
    |        uint256  amount = msg.value * 350000;
  > |        assert(yoobaTokenAddress.transfer(msg.sender, amount));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'YoobaEarlyInvest':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'YoobaEarlyInvest':
    |    }
    |    function stop() public ownerOnly{
  > |        stopped = true;
    |    }
    |    function start() public ownerOnly{
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'YoobaEarlyInvest':
    |    }
    |    function start() public ownerOnly{
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'YoobaEarlyInvest':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'YoobaEarlyInvest':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa15b1560793dbd9bd6fcad4956772fd1d0894e5e.sol(136)


