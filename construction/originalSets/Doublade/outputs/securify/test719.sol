Processing contract: /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol:ContributorApprover
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol:KyberContributorWhitelist
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol:KyberNetworkCrystal
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol:KyberNetworkTokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(313)

[33mWarning[0m for LockedEther in contract 'ContributorApprover':
    |}
    |
  > |contract ContributorApprover {
    |    KyberContributorWhitelist public list;
    |    mapping(address=>uint)    public participated;
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(29)

[33mWarning[0m for UnhandledException in contract 'ContributorApprover':
    |    // this is a seperate function so user could query it before crowdsale starts
    |    function contributorCap( address contributor ) constant returns(uint) {
  > |        return list.getCap( contributor );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(56)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ContributorApprover':
    |    // this is a seperate function so user could query it before crowdsale starts
    |    function contributorCap( address contributor ) constant returns(uint) {
  > |        return list.getCap( contributor );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(56)

[33mWarning[0m for LockedEther in contract 'KyberContributorWhitelist':
    |}
    |
  > |contract KyberContributorWhitelist is Ownable {
    |    // cap is in wei. The value of 7 is just a stub.
    |    // after kyc registration ends, we change it to the actual value with setSlackUsersCap
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberContributorWhitelist':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberContributorWhitelist':
    |    // Onwer can also change it at any time
    |    function listAddress( address _user, uint _cap ) onlyOwner {
  > |        addressCap[_user] = _cap;
    |        ListAddress( _user, _cap, now );
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberContributorWhitelist':
    |
    |    function setSlackUsersCap( uint _cap ) onlyOwner {
  > |        slackUsersCap = _cap;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(277)

[33mWarning[0m for LockedEther in contract 'KyberNetworkCrystal':
    |}
    |
  > |contract KyberNetworkCrystal is StandardToken, Ownable {
    |    string  public  constant name = "Kyber Network Crystal";
    |    string  public  constant symbol = "KNC";
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(396)

[33mWarning[0m for UnhandledException in contract 'KyberNetworkCrystal':
    |
    |    function emergencyERC20Drain( ERC20 token, uint amount ) onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(465)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KyberNetworkCrystal':
    |
    |    function emergencyERC20Drain( ERC20 token, uint amount ) onlyOwner {
  > |        token.transfer( owner, amount );
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(465)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |
    |    // KYBER-NOTE! code changed to comply with ERC20 standard
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |    // KYBER-NOTE! code changed to comply with ERC20 standard
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |    function burn(uint _value) onlyWhenTransferEnabled
    |        returns (bool){
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |        returns (bool){
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(msg.sender, _value);
    |        Transfer(msg.sender, address(0x0), _value);
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkCrystal':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(245)

[31mViolation[0m for DAOConstantGas in contract 'KyberNetworkTokenSale':
    |
    |    function sendETHToMultiSig( uint value ) internal {
  > |        kyberMultiSigWallet.transfer( value );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(177)

[33mWarning[0m for LockedEther in contract 'KyberNetworkTokenSale':
    |}
    |
  > |contract KyberNetworkTokenSale is ContributorApprover {
    |    address             public admin;
    |    address             public kyberMultiSigWallet;
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(93)

[33mWarning[0m for TODAmount in contract 'KyberNetworkTokenSale':
    |        // send to msg.sender, not to recipient
    |        if( msg.value > weiPayment ) {
  > |            msg.sender.transfer( msg.value.sub( weiPayment ) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(160)

[33mWarning[0m for TODAmount in contract 'KyberNetworkTokenSale':
    |
    |    function sendETHToMultiSig( uint value ) internal {
  > |        kyberMultiSigWallet.transfer( value );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(177)

[33mWarning[0m for TODReceiver in contract 'KyberNetworkTokenSale':
    |        // send to msg.sender, not to recipient
    |        if( msg.value > weiPayment ) {
  > |            msg.sender.transfer( msg.value.sub( weiPayment ) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(160)

[33mWarning[0m for UnhandledException in contract 'KyberNetworkTokenSale':
    |    // this is a seperate function so user could query it before crowdsale starts
    |    function contributorCap( address contributor ) constant returns(uint) {
  > |        return list.getCap( contributor );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(56)

[33mWarning[0m for UnhandledException in contract 'KyberNetworkTokenSale':
    |        // send to msg.sender, not to recipient
    |        if( msg.value > weiPayment ) {
  > |            msg.sender.transfer( msg.value.sub( weiPayment ) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(160)

[33mWarning[0m for UnhandledException in contract 'KyberNetworkTokenSale':
    |        uint recievedTokens = weiPayment.mul( 600 );
    |
  > |        assert( token.transfer( recipient, recievedTokens ) );
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(168)

[33mWarning[0m for UnhandledException in contract 'KyberNetworkTokenSale':
    |
    |    function sendETHToMultiSig( uint value ) internal {
  > |        kyberMultiSigWallet.transfer( value );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(177)

[33mWarning[0m for UnhandledException in contract 'KyberNetworkTokenSale':
    |
    |        // burn remaining tokens
  > |        token.burn(token.balanceOf(this));
    |
    |        FinalizeSale();
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(187)

[33mWarning[0m for UnhandledException in contract 'KyberNetworkTokenSale':
    |
    |        if( anyToken != address(0x0) ) {
  > |            assert( anyToken.transfer(kyberMultiSigWallet, anyToken.balanceOf(this)) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KyberNetworkTokenSale':
    |    // this is a seperate function so user could query it before crowdsale starts
    |    function contributorCap( address contributor ) constant returns(uint) {
  > |        return list.getCap( contributor );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(56)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KyberNetworkTokenSale':
    |        // send to msg.sender, not to recipient
    |        if( msg.value > weiPayment ) {
  > |            msg.sender.transfer( msg.value.sub( weiPayment ) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KyberNetworkTokenSale':
    |        uint recievedTokens = weiPayment.mul( 600 );
    |
  > |        assert( token.transfer( recipient, recievedTokens ) );
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KyberNetworkTokenSale':
    |
    |    function sendETHToMultiSig( uint value ) internal {
  > |        kyberMultiSigWallet.transfer( value );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(177)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KyberNetworkTokenSale':
    |
    |        // burn remaining tokens
  > |        token.burn(token.balanceOf(this));
    |
    |        FinalizeSale();
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KyberNetworkTokenSale':
    |
    |        if( anyToken != address(0x0) ) {
  > |            assert( anyToken.transfer(kyberMultiSigWallet, anyToken.balanceOf(this)) );
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkTokenSale':
    |    function eligibleTestAndIncrement( address contributor, uint amountInWei ) internal returns(uint) {
    |        uint result = eligible( contributor, amountInWei );
  > |        participated[contributor] = participated[contributor].add( result );
    |
    |        return result;
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkTokenSale':
    |    function proxyBuy( bytes32 proxy, address recipient ) payable returns(uint){
    |        uint amount = buy( recipient );
  > |        proxyPurchases[proxy] = proxyPurchases[proxy].add(amount);
    |        ProxyBuy( proxy, recipient, amount );
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkTokenSale':
    |        // send payment to wallet
    |        sendETHToMultiSig( weiPayment );
  > |        raisedWei = raisedWei.add( weiPayment );
    |        uint recievedTokens = weiPayment.mul( 600 );
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'KyberNetworkTokenSale':
    |    function setHaltSale( bool halt ) {
    |        require( msg.sender == admin );
  > |        haltSale = halt;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(130)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(245)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    //balances[_from] = balances[_from].sub(_value); // this was removed
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dc2e581f1dca93b618937aa313c8920153af960.sol(379)


