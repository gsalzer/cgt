Processing contract: /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol:IOwned
Processing contract: /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol:Utils
Processing contract: /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol:YooStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol:YoobaBatchTransfer
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
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(136)

[33mWarning[0m for LockedEther in contract 'YooStop':
    |}
    |
  > |contract YooStop is Owned{
    |
    |    bool public stopped = false;
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |contract YooStop is Owned{
    |
  > |    bool public stopped = false;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |        _;
    |    }
  > |    function stop() public ownerOnly{
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'YooStop':
    |        stopped = true;
    |    }
  > |    function start() public ownerOnly{
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'YooStop':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'YooStop':
    |    }
    |    function stop() public ownerOnly{
  > |        stopped = true;
    |    }
    |    function start() public ownerOnly{
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'YooStop':
    |    }
    |    function start() public ownerOnly{
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'YooStop':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'YooStop':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(136)

[33mWarning[0m for DAOConstantGas in contract 'YoobaBatchTransfer':
    |    {   
    |        require(_amount <= this.balance);
  > |        _to.transfer(_amount); // send the amount to the target account
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(181)

[33mWarning[0m for LockedEther in contract 'YoobaBatchTransfer':
    |
    |
  > |contract YoobaBatchTransfer is  Owned,YooStop,Utils {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'YoobaBatchTransfer':
    |    }
    |    
  > |    function withdrawERC20TokenTo(IERC20Token _token, address _to, uint256 _amount)
    |        public
    |        ownerOnly
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'YoobaBatchTransfer':
    |*/
    |contract Owned is IOwned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'YoobaBatchTransfer':
    |contract Owned is IOwned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'YoobaBatchTransfer':
    |        @param _newOwner    new contract owner
    |    */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'YoobaBatchTransfer':
    |        @dev used by a new owner to accept an ownership transfer
    |    */
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'YoobaBatchTransfer':
    |contract YooStop is Owned{
    |
  > |    bool public stopped = false;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'YoobaBatchTransfer':
    |        _;
    |    }
  > |    function stop() public ownerOnly{
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'YoobaBatchTransfer':
    |        stopped = true;
    |    }
  > |    function start() public ownerOnly{
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'YoobaBatchTransfer':
    |
    |    
  > |    function withdrawTo(address _to, uint256 _amount)
    |        public ownerOnly stoppable
    |        notThis(_to)
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(176)

[33mWarning[0m for TODAmount in contract 'YoobaBatchTransfer':
    |    {   
    |        require(_amount <= this.balance);
  > |        _to.transfer(_amount); // send the amount to the target account
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(181)

[33mWarning[0m for TODReceiver in contract 'YoobaBatchTransfer':
    |    {   
    |        require(_amount <= this.balance);
  > |        _to.transfer(_amount); // send the amount to the target account
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(181)

[33mWarning[0m for UnhandledException in contract 'YoobaBatchTransfer':
    |    function batchTransfer(IERC20Token _token,address[] _to,uint256 _amountOfEach) public 
    |    ownerOnly stoppable validAddress(_token){
  > |        require(_to.length > 0 && _amountOfEach > 0 && _to.length * _amountOfEach <=  _token.balanceOf(this) && _to.length < 10000);
    |        for(uint16 i = 0; i < _to.length ;i++){
    |          assert(_token.transfer(_to[i],_amountOfEach));
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(169)

[33mWarning[0m for UnhandledException in contract 'YoobaBatchTransfer':
    |        require(_to.length > 0 && _amountOfEach > 0 && _to.length * _amountOfEach <=  _token.balanceOf(this) && _to.length < 10000);
    |        for(uint16 i = 0; i < _to.length ;i++){
  > |          assert(_token.transfer(_to[i],_amountOfEach));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(171)

[33mWarning[0m for UnhandledException in contract 'YoobaBatchTransfer':
    |    {   
    |        require(_amount <= this.balance);
  > |        _to.transfer(_amount); // send the amount to the target account
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(181)

[33mWarning[0m for UnhandledException in contract 'YoobaBatchTransfer':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YoobaBatchTransfer':
    |    function batchTransfer(IERC20Token _token,address[] _to,uint256 _amountOfEach) public 
    |    ownerOnly stoppable validAddress(_token){
  > |        require(_to.length > 0 && _amountOfEach > 0 && _to.length * _amountOfEach <=  _token.balanceOf(this) && _to.length < 10000);
    |        for(uint16 i = 0; i < _to.length ;i++){
    |          assert(_token.transfer(_to[i],_amountOfEach));
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(169)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YoobaBatchTransfer':
    |        require(_to.length > 0 && _amountOfEach > 0 && _to.length * _amountOfEach <=  _token.balanceOf(this) && _to.length < 10000);
    |        for(uint16 i = 0; i < _to.length ;i++){
  > |          assert(_token.transfer(_to[i],_amountOfEach));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(171)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YoobaBatchTransfer':
    |    {   
    |        require(_amount <= this.balance);
  > |        _to.transfer(_amount); // send the amount to the target account
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(181)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YoobaBatchTransfer':
    |        notThis(_to)
    |    {
  > |        assert(_token.transfer(_to, _amount));
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'YoobaBatchTransfer':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'YoobaBatchTransfer':
    |    }
    |    function stop() public ownerOnly{
  > |        stopped = true;
    |    }
    |    function start() public ownerOnly{
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'YoobaBatchTransfer':
    |    }
    |    function start() public ownerOnly{
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'YoobaBatchTransfer':
    |        require(msg.sender == newOwner);
    |        OwnerUpdate(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'YoobaBatchTransfer':
    |        OwnerUpdate(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfab3da023ea45d663991093b6b574ec766ff2eef.sol(136)


