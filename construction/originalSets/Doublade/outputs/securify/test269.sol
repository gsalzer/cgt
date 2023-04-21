Processing contract: /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol:ElecApprover
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol:ElecSaleSmartContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol:ElecTokenSmartContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol:ElecWhitelist
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(85)

[33mWarning[0m for LockedEther in contract 'ElecApprover':
    |
    |
  > |contract ElecApprover {
    |    ElecWhitelist public list;
    |    mapping(address=>uint)    public participated;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(295)

[33mWarning[0m for UnhandledException in contract 'ElecApprover':
    |    // this is a seperate function so user could query it before crowdsale starts
    |    function contributorCap( address contributor ) public constant returns(uint) {
  > |        uint  cap= list.getCap( contributor );
    |        uint higherCap = cap;
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(323)

[33mWarning[0m for UnhandledException in contract 'ElecApprover':
    |        if( now >= saleEndTime ) return 0;
    |
  > |        uint cap = list.getCap( contributor );
    |
    |        if( cap == 0 ) return 0;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(337)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElecApprover':
    |    // this is a seperate function so user could query it before crowdsale starts
    |    function contributorCap( address contributor ) public constant returns(uint) {
  > |        uint  cap= list.getCap( contributor );
    |        uint higherCap = cap;
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElecApprover':
    |        if( now >= saleEndTime ) return 0;
    |
  > |        uint cap = list.getCap( contributor );
    |
    |        if( cap == 0 ) return 0;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(337)

[31mViolation[0m for DAOConstantGas in contract 'ElecSaleSmartContract':
    |
    |    function sendETHToMultiSig( uint value ) internal {
  > |        multiSigWallet.transfer( value );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(528)

[33mWarning[0m for LockedEther in contract 'ElecSaleSmartContract':
    |
    |
  > |contract ElecSaleSmartContract is ElecApprover{
    |    address             public admin;
    |    address             public multiSigWallet; // can be a single wallet
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(429)

[33mWarning[0m for TODAmount in contract 'ElecSaleSmartContract':
    |        // send to msg.sender, not to recipient
    |        if( msg.value > weiPayment ) {
  > |            msg.sender.transfer( msg.value.sub( weiPayment ) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(511)

[33mWarning[0m for TODAmount in contract 'ElecSaleSmartContract':
    |
    |    function sendETHToMultiSig( uint value ) internal {
  > |        multiSigWallet.transfer( value );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(528)

[33mWarning[0m for TODReceiver in contract 'ElecSaleSmartContract':
    |        // send to msg.sender, not to recipient
    |        if( msg.value > weiPayment ) {
  > |            msg.sender.transfer( msg.value.sub( weiPayment ) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(511)

[33mWarning[0m for UnhandledException in contract 'ElecSaleSmartContract':
    |    // this is a seperate function so user could query it before crowdsale starts
    |    function contributorCap( address contributor ) public constant returns(uint) {
  > |        uint  cap= list.getCap( contributor );
    |        uint higherCap = cap;
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(323)

[33mWarning[0m for UnhandledException in contract 'ElecSaleSmartContract':
    |        if( now >= saleEndTime ) return 0;
    |
  > |        uint cap = list.getCap( contributor );
    |
    |        if( cap == 0 ) return 0;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(337)

[33mWarning[0m for UnhandledException in contract 'ElecSaleSmartContract':
    |        // send to msg.sender, not to recipient
    |        if( msg.value > weiPayment ) {
  > |            msg.sender.transfer( msg.value.sub( weiPayment ) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(511)

[33mWarning[0m for UnhandledException in contract 'ElecSaleSmartContract':
    |        uint recievedTokens = weiPayment.mul( 11750 );
    |
  > |        assert( token.transfer( recipient, recievedTokens ) );
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(519)

[33mWarning[0m for UnhandledException in contract 'ElecSaleSmartContract':
    |
    |    function sendETHToMultiSig( uint value ) internal {
  > |        multiSigWallet.transfer( value );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(528)

[33mWarning[0m for UnhandledException in contract 'ElecSaleSmartContract':
    |
    |        // burn remaining tokens
  > |        token.burn(token.balanceOf(this));
    |
    |        FinalizeSale();
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(538)

[33mWarning[0m for UnhandledException in contract 'ElecSaleSmartContract':
    |
    |        if( anyToken != address(0x0) ) {
  > |            assert( anyToken.transfer(multiSigWallet, anyToken.balanceOf(this)) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(554)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElecSaleSmartContract':
    |    // this is a seperate function so user could query it before crowdsale starts
    |    function contributorCap( address contributor ) public constant returns(uint) {
  > |        uint  cap= list.getCap( contributor );
    |        uint higherCap = cap;
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElecSaleSmartContract':
    |        if( now >= saleEndTime ) return 0;
    |
  > |        uint cap = list.getCap( contributor );
    |
    |        if( cap == 0 ) return 0;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(337)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElecSaleSmartContract':
    |        // send to msg.sender, not to recipient
    |        if( msg.value > weiPayment ) {
  > |            msg.sender.transfer( msg.value.sub( weiPayment ) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(511)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElecSaleSmartContract':
    |        uint recievedTokens = weiPayment.mul( 11750 );
    |
  > |        assert( token.transfer( recipient, recievedTokens ) );
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(519)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElecSaleSmartContract':
    |
    |    function sendETHToMultiSig( uint value ) internal {
  > |        multiSigWallet.transfer( value );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(528)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElecSaleSmartContract':
    |
    |        // burn remaining tokens
  > |        token.burn(token.balanceOf(this));
    |
    |        FinalizeSale();
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(538)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElecSaleSmartContract':
    |
    |        if( anyToken != address(0x0) ) {
  > |            assert( anyToken.transfer(multiSigWallet, anyToken.balanceOf(this)) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecSaleSmartContract':
    |        uint result = eligible( contributor, amountInWei );
    |        if ( result > 0) {
  > |            participated[contributor] = participated[contributor].add( result );
    |        }
    |        return result;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecSaleSmartContract':
    |    function proxyBuy( bytes32 proxy, address recipient ) public payable returns(uint){
    |        uint amount = buy( recipient );
  > |        proxyPurchases[proxy] = proxyPurchases[proxy].add(amount);
    |        ProxyBuy( proxy, recipient, amount );
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecSaleSmartContract':
    |        // send payment to wallet
    |        sendETHToMultiSig( weiPayment );
  > |        raisedWei = raisedWei.add( weiPayment );
    |        uint recievedTokens = weiPayment.mul( 11750 );
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecSaleSmartContract':
    |    function setHaltSale( bool halt ) public {
    |        require( msg.sender == admin );
  > |        haltSale = halt;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(472)

[33mWarning[0m for LockedEther in contract 'ElecTokenSmartContract':
    |
    |
  > |contract ElecTokenSmartContract is StandardToken, Ownable {
    |    string  public  constant name = "ElectrifyAsia";
    |    string  public  constant symbol = "ELEC";
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(184)

[33mWarning[0m for UnhandledException in contract 'ElecTokenSmartContract':
    |
    |    function emergencyERC20Drain( ERC20 token, uint amount ) public onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElecTokenSmartContract':
    |
    |    function emergencyERC20Drain( ERC20 token, uint amount ) public onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecTokenSmartContract':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecTokenSmartContract':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecTokenSmartContract':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecTokenSmartContract':
    |    function burn(uint _value) public onlyWhenTransferEnabled
    |    returns (bool){
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecTokenSmartContract':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(51)

[33mWarning[0m for LockedEther in contract 'ElecWhitelist':
    |
    |
  > |contract ElecWhitelist is Ownable {
    |    // cap is in wei. The value of 1 is just a stub.
    |    // after kyc registration ends, we change it to the actual value with setUsersCap
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecWhitelist':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecWhitelist':
    |    // Onwer can also change it at any time
    |    function listAddress( address _user, uint _cap ) public onlyOwner {
  > |        addressCap[_user] = _cap;
    |        ListAddress( _user, _cap, now );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'ElecWhitelist':
    |
    |    function setUsersCap( uint _cap ) public  onlyOwner {
  > |        communityusersCap = _cap;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(414)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(51)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(268)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x12795d1331b2f9a4c789203efc5987030854ad55.sol(165)


