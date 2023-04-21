Processing contract: /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol:ATFSCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol:Base
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol:IToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol:TokenTimeLock
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ATFSCrowdsale':
    |}
    |
  > |contract ATFSCrowdsale is Owned
    |{
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(106)

[33mWarning[0m for UnhandledException in contract 'ATFSCrowdsale':
    |    {
    |        require( address( lockBalances[msg.sender] ) != 0 );
  > |        lockBalances[msg.sender].releaseFirst();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(208)

[33mWarning[0m for UnhandledException in contract 'ATFSCrowdsale':
    |    function _mint( address _to, uint _amount ) noAnyReentrancy internal
    |    {
  > |        token.mint( _to, _amount );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(226)

[33mWarning[0m for UnhandledException in contract 'ATFSCrowdsale':
    |    function _finish( ) noAnyReentrancy internal
    |    {
  > |        token.start( );
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ATFSCrowdsale':
    |    {
    |        require( address( lockBalances[msg.sender] ) != 0 );
  > |        lockBalances[msg.sender].releaseFirst();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(208)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ATFSCrowdsale':
    |    function _mint( address _to, uint _amount ) noAnyReentrancy internal
    |    {
  > |        token.mint( _to, _amount );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ATFSCrowdsale':
    |    function _finish( ) noAnyReentrancy internal
    |    {
  > |        token.start( );
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSCrowdsale':
    |        var _locks = bitlocks;
    |        require(_locks == 0);
  > |        bitlocks = uint(-1);
    |        _;
    |        bitlocks = _locks;
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSCrowdsale':
    |        bitlocks = uint(-1);
    |        _;
  > |        bitlocks = _locks;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSCrowdsale':
    |
    |    function transferOwnership(address _newOwner) public only(owner) {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSCrowdsale':
    |    function acceptOwnership() public only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSCrowdsale':
    |  function setToken( IToken _token ) public only( owner ) {
    |    require( _token != address( 0 ) );
  > |      token = _token;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSCrowdsale':
    |        || _newState == State.EMERGENCY_STOP
    |        );
  > |        currentState = _newState;
    |        if( _newState == State.CLOSED ) {
    |            _finish( );
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSCrowdsale':
    |    {
    |     	require( totalSaleSupply.add( _amount ) <= MAX_SALE_SUPPLY );
  > |        totalSaleSupply = totalSaleSupply.add( _amount );
    |        _mint( _to, _amount );
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSCrowdsale':
    |    {
    |    	require( totalNonSaleSupply.add( _amount ) <= MAX_NON_SALE_SUPPLY );
  > |    	totalNonSaleSupply = totalNonSaleSupply.add( _amount );
    |    	_mint( _to, _amount );
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSCrowdsale':
    |    {
    |    	require( totalNonSaleSupply.add( _amount ) <= MAX_NON_SALE_SUPPLY );
  > |        totalNonSaleSupply = totalNonSaleSupply.add( _amount );
    |
    |        TokenTimeLock tokenTimeLock = new TokenTimeLock( token, _to, _unlockDate, _amount );
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSCrowdsale':
    |
    |        TokenTimeLock tokenTimeLock = new TokenTimeLock( token, _to, _unlockDate, _amount );
  > |        lockBalances[_to] = tokenTimeLock;
    |        _mint( address(tokenTimeLock), _amount );
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'ATFSCrowdsale':
    |    {
    |    	require( totalSaleSupply.add( _amount ) <= MAX_SALE_SUPPLY );
  > |    	totalSaleSupply = totalSaleSupply.add( _amount );
    |    	_mint( _to, _amount );
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(217)

[33mWarning[0m for LockedEther in contract 'Base':
    |pragma solidity ^0.4.15;
    |
  > |contract Base {
    |
    |    modifier only(address allowed) {
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(3)

[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned is Base {
    |    address public owner;
    |    address newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public only(owner) {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned is Base {
  > |    address public owner;
    |    address newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership() public only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public only(owner) {
  > |        newOwner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() public only(newOwner) {
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(100)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(63)

[33mWarning[0m for LockedEther in contract 'TokenTimeLock':
    |}
    |
  > |contract TokenTimeLock {
    |
    |    IToken public token;
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |contract TokenTimeLock {
    |
  > |    IToken public token;
    |    address public beneficiary;
    |    uint public releaseTimeFirst;
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |
    |    IToken public token;
  > |    address public beneficiary;
    |    uint public releaseTimeFirst;
    |    uint public amountFirst;
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |    IToken public token;
    |    address public beneficiary;
  > |    uint public releaseTimeFirst;
    |    uint public amountFirst;
    |
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |    address public beneficiary;
    |    uint public releaseTimeFirst;
  > |    uint public amountFirst;
    |
    |    function TokenTimeLock(IToken _token, address _beneficiary, uint _releaseTimeFirst, uint _amountFirst)
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'TokenTimeLock':
    |    }
    |
  > |    function releaseFirst() public {
    |        require(now >= releaseTimeFirst);
    |        uint amount = token.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(41)

[33mWarning[0m for UnhandledException in contract 'TokenTimeLock':
    |    function releaseFirst() public {
    |        require(now >= releaseTimeFirst);
  > |        uint amount = token.balanceOf(this);
    |        require(amount > 0 && amount >= amountFirst);
    |        token.transfer(beneficiary, amountFirst);
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(43)

[33mWarning[0m for UnhandledException in contract 'TokenTimeLock':
    |        uint amount = token.balanceOf(this);
    |        require(amount > 0 && amount >= amountFirst);
  > |        token.transfer(beneficiary, amountFirst);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(45)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimeLock':
    |    function releaseFirst() public {
    |        require(now >= releaseTimeFirst);
  > |        uint amount = token.balanceOf(this);
    |        require(amount > 0 && amount >= amountFirst);
    |        token.transfer(beneficiary, amountFirst);
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(43)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenTimeLock':
    |        uint amount = token.balanceOf(this);
    |        require(amount > 0 && amount >= amountFirst);
  > |        token.transfer(beneficiary, amountFirst);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd413eb0ebe5f3c82f1b6cb642c31fabb5a38c1ec.sol(45)


