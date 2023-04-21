Processing contract: /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol:ERC20Constant
Processing contract: /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol:ERC20Stateful
Processing contract: /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol:WhitelistSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |    function transfer( address to, uint value) public returns (bool ok);
    |}
  > |contract ERC20Events {
    |    event Transfer(address indexed from, address indexed to, uint value);
    |}
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(39)

[33mWarning[0m for LockedEther in contract 'Owned':
    |contract ERC20 is ERC20Constant, ERC20Stateful, ERC20Events {}
    |
  > |contract Owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(7)

[33mWarning[0m for DAOConstantGas in contract 'WhitelistSale':
    |    function withdrawEth(uint256 _value)  public onlyOwner {
    |        require(receiver != address(0),"receiver not set");
  > |        receiver.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(123)

[33mWarning[0m for DAOConstantGas in contract 'WhitelistSale':
    |        uint backEthNumber = SafeMath.mul(SafeMath.div(bought[userAddress],MaxRate),rebackRate) ;
    |        whitelistUserGettedEthBack[userAddress] = true;
  > |        userAddress.transfer(backEthNumber);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(188)

[33mWarning[0m for LockedEther in contract 'WhitelistSale':
    |}
    |
  > |contract WhitelistSale is Owned {
    |
    |    ERC20 public blocToken;
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(61)

[31mViolation[0m for TODAmount in contract 'WhitelistSale':
    |        uint backEthNumber = SafeMath.mul(SafeMath.div(bought[userAddress],MaxRate),rebackRate) ;
    |        whitelistUserGettedEthBack[userAddress] = true;
  > |        userAddress.transfer(backEthNumber);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(188)

[33mWarning[0m for TODAmount in contract 'WhitelistSale':
    |    function withdrawEth(uint256 _value)  public onlyOwner {
    |        require(receiver != address(0),"receiver not set");
  > |        receiver.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(123)

[31mViolation[0m for TODReceiver in contract 'WhitelistSale':
    |    function withdrawEth(uint256 _value)  public onlyOwner {
    |        require(receiver != address(0),"receiver not set");
  > |        receiver.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(123)

[33mWarning[0m for TODReceiver in contract 'WhitelistSale':
    |        uint backEthNumber = SafeMath.mul(SafeMath.div(bought[userAddress],MaxRate),rebackRate) ;
    |        whitelistUserGettedEthBack[userAddress] = true;
  > |        userAddress.transfer(backEthNumber);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(188)

[33mWarning[0m for UnhandledException in contract 'WhitelistSale':
    |    function withdrawEth(uint256 _value)  public onlyOwner {
    |        require(receiver != address(0),"receiver not set");
  > |        receiver.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(123)

[33mWarning[0m for UnhandledException in contract 'WhitelistSale':
    |
    |    function withdrawToken(address _token, uint256 _value) private onlyOwner  returns (bool ok) {
  > |        bool result = ERC20(_token).transfer(owner,_value);
    |        if (result) emit LogWithdrawal(_value);
    |        return result;
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(132)

[33mWarning[0m for UnhandledException in contract 'WhitelistSale':
    |        uint orderInBloc = SafeMath.mul(SafeMath.div(bought[userAddress],MaxRate),bountPerEth) ;
    |            
  > |        uint256 balanceInBloc = blocToken.balanceOf(address(this));
    |        if (orderInBloc > balanceInBloc) revert("not enough token");
    |        if (blocToken.transfer(userAddress, orderInBloc)) whitelistUserGettedBloc[userAddress] = true;
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(176)

[33mWarning[0m for UnhandledException in contract 'WhitelistSale':
    |        uint256 balanceInBloc = blocToken.balanceOf(address(this));
    |        if (orderInBloc > balanceInBloc) revert("not enough token");
  > |        if (blocToken.transfer(userAddress, orderInBloc)) whitelistUserGettedBloc[userAddress] = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(178)

[33mWarning[0m for UnhandledException in contract 'WhitelistSale':
    |        uint backEthNumber = SafeMath.mul(SafeMath.div(bought[userAddress],MaxRate),rebackRate) ;
    |        whitelistUserGettedEthBack[userAddress] = true;
  > |        userAddress.transfer(backEthNumber);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistSale':
    |    function withdrawEth(uint256 _value)  public onlyOwner {
    |        require(receiver != address(0),"receiver not set");
  > |        receiver.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(123)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistSale':
    |
    |    function withdrawToken(address _token, uint256 _value) private onlyOwner  returns (bool ok) {
  > |        bool result = ERC20(_token).transfer(owner,_value);
    |        if (result) emit LogWithdrawal(_value);
    |        return result;
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistSale':
    |        uint orderInBloc = SafeMath.mul(SafeMath.div(bought[userAddress],MaxRate),bountPerEth) ;
    |            
  > |        uint256 balanceInBloc = blocToken.balanceOf(address(this));
    |        if (orderInBloc > balanceInBloc) revert("not enough token");
    |        if (blocToken.transfer(userAddress, orderInBloc)) whitelistUserGettedBloc[userAddress] = true;
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistSale':
    |        uint256 balanceInBloc = blocToken.balanceOf(address(this));
    |        if (orderInBloc > balanceInBloc) revert("not enough token");
  > |        if (blocToken.transfer(userAddress, orderInBloc)) whitelistUserGettedBloc[userAddress] = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistSale':
    |        uint backEthNumber = SafeMath.mul(SafeMath.div(bought[userAddress],MaxRate),rebackRate) ;
    |        whitelistUserGettedEthBack[userAddress] = true;
  > |        userAddress.transfer(backEthNumber);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |
    |    function transferOwnership(address newOwner) public onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |    function changePerEthToBlocNumber(uint256 _value)  public onlyOwner {
    |        require(_value > 0,"ratio must > 0");
  > |        blocPerEth = _value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |        require(_rate > 0,"refundrate must > 0");
    |        require(_rate < MaxRate,"refundrate must < 10000");
  > |        rebackRate = _rate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |    
    |    function changeBlocTokenAdress(ERC20 _tokenContractAddress)  public onlyOwner {
  > |        blocToken = _tokenContractAddress;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |    function changeReceiver(address _receiver) public onlyOwner {
    |        require(_receiver != address(0),"empty receiver");
  > |        receiver = _receiver;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |    function changeBlocPerEth(uint256 _value) public onlyOwner {
    |        require(_value != 0,"ratio should > 0");
  > |        blocPerEth = _value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |    
    |    function changeRuningState(bool _value) public onlyOwner {
  > |        running = _value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |        if (msg.value > allowedForSender) revert("over limit amount");
    |        // receiver.transfer(msg.value);
  > |        bought[msg.sender] = SafeMath.add(bought[msg.sender], msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |        uint256 balanceInBloc = blocToken.balanceOf(address(this));
    |        if (orderInBloc > balanceInBloc) revert("not enough token");
  > |        if (blocToken.transfer(userAddress, orderInBloc)) whitelistUserGettedBloc[userAddress] = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |             
    |        uint backEthNumber = SafeMath.mul(SafeMath.div(bought[userAddress],MaxRate),rebackRate) ;
  > |        whitelistUserGettedEthBack[userAddress] = true;
    |        userAddress.transfer(backEthNumber);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |        if (whitelisted[user] == true) {
    |            if (userLimitAmount[user] != amount) {
  > |                userLimitAmount[user] = amount;
    |            }
    |            return;
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |        }
    |        
  > |        whitelisted[user] = true;
    |        whitelistUsers.push(user);
    |        userLimitAmount[user] = amount;
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |        
    |        whitelisted[user] = true;
  > |        whitelistUsers.push(user);
    |        userLimitAmount[user] = amount;
    |        whitelistUserGettedBloc[user] = false;
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |        whitelisted[user] = true;
    |        whitelistUsers.push(user);
  > |        userLimitAmount[user] = amount;
    |        whitelistUserGettedBloc[user] = false;
    |        whitelistUserGettedEthBack[user] = false;
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |        whitelistUsers.push(user);
    |        userLimitAmount[user] = amount;
  > |        whitelistUserGettedBloc[user] = false;
    |        whitelistUserGettedEthBack[user] = false;
    |        // emit LogUserAdded(user);
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |        userLimitAmount[user] = amount;
    |        whitelistUserGettedBloc[user] = false;
  > |        whitelistUserGettedEthBack[user] = false;
    |        // emit LogUserAdded(user);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistSale':
    |
    |    function removeUser(address user) public onlyOwner onlyIsRuning {
  > |        whitelisted[user] = false;
    |        emit LogUserRemoved(user);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcb9a22a16e3879283c1da182491403ae7cb15501.sol(209)


