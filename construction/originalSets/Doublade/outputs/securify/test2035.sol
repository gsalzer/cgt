Processing contract: /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol:AbstractSweeper
Processing contract: /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol:AbstractSweeperList
Processing contract: /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol:Controller
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol:DefaultSweeper
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol:UserWallet
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Controller':
    |}
    |
  > |contract Controller is AbstractSweeperList {
    |    address public owner;
    |    address public authorizedCaller;
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |    }
    |
  > |    function changeAuthorizedCaller(address _newCaller) onlyOwner {
    |        authorizedCaller = _newCaller;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |    }
    |
  > |    function changeDestination(address _dest) onlyOwner {
    |        destination = _dest;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |    }
    |
  > |    function changeOwner(address _owner) onlyOwner {
    |        owner = _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |    mapping (address => address) sweepers;
    |
  > |    function addSweeper(address _token, address _sweeper) onlyOwner {
    |        sweepers[_token] = _sweeper;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |    }
    |
  > |    function sweeperOf(address _token) returns (address) {
    |        address sweeper = sweepers[_token];
    |        if (sweeper == 0) sweeper = defaultSweeper;
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'Controller':
    |    }
    |
  > |    function logSweep(address from, address to, address token, uint amount) {
    |        LogSweep(from, to, token, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |}
    |
  > |contract Controller is AbstractSweeperList {
    |    address public owner;
    |    address public authorizedCaller;
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |
    |contract Controller is AbstractSweeperList {
  > |    address public owner;
    |    address public authorizedCaller;
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |contract Controller is AbstractSweeperList {
    |    address public owner;
  > |    address public authorizedCaller;
    |
    |    address public destination;
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |    address public authorizedCaller;
    |
  > |    address public destination;
    |
    |    bool public halted;
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |    address public destination;
    |
  > |    bool public halted;
    |
    |    event LogNewWallet(address receiver);
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |    }
    |
  > |    function makeWallet() onlyAdmins returns (address wallet)  {
    |        wallet = address(new UserWallet(this));
    |        LogNewWallet(wallet);
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |    }
    |
  > |    function halt() onlyAdmins {
    |        halted = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |    }
    |
  > |    function start() onlyOwner {
    |        halted = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'Controller':
    |    }
    |
  > |    address public defaultSweeper = address(new DefaultSweeper(this));
    |    mapping (address => address) sweepers;
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'Controller':
    |
    |    function changeAuthorizedCaller(address _newCaller) onlyOwner {
  > |        authorizedCaller = _newCaller;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Controller':
    |
    |    function changeDestination(address _dest) onlyOwner {
  > |        destination = _dest;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Controller':
    |
    |    function changeOwner(address _owner) onlyOwner {
  > |        owner = _owner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Controller':
    |
    |    function halt() onlyAdmins {
  > |        halted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'Controller':
    |
    |    function start() onlyOwner {
  > |        halted = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Controller':
    |
    |    function addSweeper(address _token, address _sweeper) onlyOwner {
  > |        sweepers[_token] = _sweeper;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(156)

[33mWarning[0m for DAOConstantGas in contract 'DefaultSweeper':
    |            }
    |
  > |            success = destination.send(amountInWei);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(59)

[33mWarning[0m for LockedEther in contract 'DefaultSweeper':
    |}
    |
  > |contract DefaultSweeper is AbstractSweeper {
    |    function DefaultSweeper(address controller)
    |             AbstractSweeper(controller) {}
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'DefaultSweeper':
    |             AbstractSweeper(controller) {}
    |
  > |    function sweep(address _token, uint _amount)
    |    canSweep
    |    returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(38)

[33mWarning[0m for TODAmount in contract 'DefaultSweeper':
    |            }
    |
  > |            success = destination.send(amountInWei);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(59)

[33mWarning[0m for TODReceiver in contract 'DefaultSweeper':
    |            }
    |
  > |            success = destination.send(amountInWei);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(59)

[33mWarning[0m for UnhandledException in contract 'DefaultSweeper':
    |
    |    modifier canSweep() {
  > |        if (msg.sender != controller.authorizedCaller() && msg.sender != controller.owner()) throw;
    |        if (controller.halted()) throw;
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(15)

[33mWarning[0m for UnhandledException in contract 'DefaultSweeper':
    |    modifier canSweep() {
    |        if (msg.sender != controller.authorizedCaller() && msg.sender != controller.owner()) throw;
  > |        if (controller.halted()) throw;
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(16)

[33mWarning[0m for UnhandledException in contract 'DefaultSweeper':
    |    returns (bool) {
    |        bool success = false;
  > |        address destination = controller.destination();
    |
    |        if (_token != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(42)

[33mWarning[0m for UnhandledException in contract 'DefaultSweeper':
    |            Token token = Token(_token);
    |            uint amount = _amount;
  > |            if (amount > token.balanceOf(this)) {
    |                return false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(47)

[33mWarning[0m for UnhandledException in contract 'DefaultSweeper':
    |            }
    |
  > |            success = token.transfer(destination, amount);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(51)

[33mWarning[0m for UnhandledException in contract 'DefaultSweeper':
    |
    |        if (success) {
  > |            controller.logSweep(this, destination, _token, _amount);
    |        }
    |        return success;
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(63)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DefaultSweeper':
    |
    |    modifier canSweep() {
  > |        if (msg.sender != controller.authorizedCaller() && msg.sender != controller.owner()) throw;
    |        if (controller.halted()) throw;
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(15)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DefaultSweeper':
    |    modifier canSweep() {
    |        if (msg.sender != controller.authorizedCaller() && msg.sender != controller.owner()) throw;
  > |        if (controller.halted()) throw;
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(16)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DefaultSweeper':
    |    returns (bool) {
    |        bool success = false;
  > |        address destination = controller.destination();
    |
    |        if (_token != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(42)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DefaultSweeper':
    |            Token token = Token(_token);
    |            uint amount = _amount;
  > |            if (amount > token.balanceOf(this)) {
    |                return false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(47)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DefaultSweeper':
    |            }
    |
  > |            success = token.transfer(destination, amount);
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(51)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DefaultSweeper':
    |
    |        if (success) {
  > |            controller.logSweep(this, destination, _token, _amount);
    |        }
    |        return success;
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(63)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DefaultSweeper':
    |            }
    |
  > |            success = destination.send(amountInWei);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(59)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token {
    |    function balanceOf(address a) returns (uint) {
    |        (a);
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(21)

[31mViolation[0m for LockedEther in contract 'UserWallet':
    |}
    |
  > |contract UserWallet {
    |    AbstractSweeperList sweeperList;
    |    function UserWallet(address _sweeperlist) {
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'UserWallet':
    |     }
    |
  > |    function sweep(address _token, uint _amount)
    |    returns (bool) {
    |        (_amount);
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'UserWallet':
    |    function () public payable { }
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) {
    |        (_from);
    |        (_value);
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(77)

[33mWarning[0m for UnhandledException in contract 'UserWallet':
    |    returns (bool) {
    |        (_amount);
  > |        return sweeperList.sweeperOf(_token).delegatecall(msg.data);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UserWallet':
    |    returns (bool) {
    |        (_amount);
  > |        return sweeperList.sweeperOf(_token).delegatecall(msg.data);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x84b6241ed47e935597bc5a14d5e9ef9fb53e77de.sol(86)


