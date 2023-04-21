Processing contract: /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol:Airdrop
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol:Destructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol:Erc20Contract
Processing contract: /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Airdrop':
    |
    |    function withdrawETH(uint256 _value) onlyOwner public{
  > |        msg.sender.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(162)

[33mWarning[0m for DAOConstantGas in contract 'Airdrop':
    |        uint256 i = 0;
    |        while (i < _toList.length) {
  > |            _toList[i].transfer(_values[i]);
    |            i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(169)

[33mWarning[0m for DAOConstantGas in contract 'Airdrop':
    |        uint256 i = 0;
    |        while (i < _toList.length) {
  > |            _toList[i].transfer(_value);
    |            i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(178)

[33mWarning[0m for LockedEther in contract 'Airdrop':
    |
    |
  > |contract Airdrop is Ownable, Destructible {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(129)

[33mWarning[0m for TODAmount in contract 'Airdrop':
    |
    |    function withdrawETH(uint256 _value) onlyOwner public{
  > |        msg.sender.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(162)

[33mWarning[0m for TODReceiver in contract 'Airdrop':
    |
    |    function withdrawETH(uint256 _value) onlyOwner public{
  > |        msg.sender.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(162)

[33mWarning[0m for UnhandledException in contract 'Airdrop':
    |        uint256 i = 0;
    |        while (i < _toList.length) {
  > |            erc20.transfer(_toList[i], _values[i]);
    |            i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(145)

[33mWarning[0m for UnhandledException in contract 'Airdrop':
    |        require(_tokenAddr != address(0x0) && _to != address(0x0) && _value > 0);
    |        Erc20Contract erc20 = Erc20Contract(_tokenAddr);
  > |        erc20.transfer(_to,_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(153)

[33mWarning[0m for UnhandledException in contract 'Airdrop':
    |    function balance(address _tokenAddr) public view returns (uint256){
    |        Erc20Contract token = Erc20Contract(_tokenAddr);
  > |        return token.balanceOf(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(158)

[33mWarning[0m for UnhandledException in contract 'Airdrop':
    |
    |    function withdrawETH(uint256 _value) onlyOwner public{
  > |        msg.sender.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(162)

[33mWarning[0m for UnhandledException in contract 'Airdrop':
    |        uint256 i = 0;
    |        while (i < _toList.length) {
  > |            _toList[i].transfer(_values[i]);
    |            i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(169)

[33mWarning[0m for UnhandledException in contract 'Airdrop':
    |        uint256 i = 0;
    |        while (i < _toList.length) {
  > |            _toList[i].transfer(_value);
    |            i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(178)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Airdrop':
    |
    |    function withdrawETH(uint256 _value) onlyOwner public{
  > |        msg.sender.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Airdrop':
    |        uint256 i = 0;
    |        while (i < _toList.length) {
  > |            erc20.transfer(_toList[i], _values[i]);
    |            i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Airdrop':
    |        require(_tokenAddr != address(0x0) && _to != address(0x0) && _value > 0);
    |        Erc20Contract erc20 = Erc20Contract(_tokenAddr);
  > |        erc20.transfer(_to,_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(153)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Airdrop':
    |    function balance(address _tokenAddr) public view returns (uint256){
    |        Erc20Contract token = Erc20Contract(_tokenAddr);
  > |        return token.balanceOf(msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdrop':
    |
    |    function addOwner(address _newOwner) onlyGodOwner public{
  > |        owners[_newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdrop':
    |
    |    function removeOwner(address _oldOwner) onlyGodOwner public{
  > |        owners[_oldOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdrop':
    |
    |    function transferOwnership(address newGodOwner) public onlyGodOwner {
  > |        godOwner = newGodOwner;
    |        owners[newGodOwner] = true;
    |        owners[godOwner] = false;
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdrop':
    |    function transferOwnership(address newGodOwner) public onlyGodOwner {
    |        godOwner = newGodOwner;
  > |        owners[newGodOwner] = true;
    |        owners[godOwner] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdrop':
    |        godOwner = newGodOwner;
    |        owners[newGodOwner] = true;
  > |        owners[godOwner] = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(95)

[33mWarning[0m for LockedEther in contract 'Destructible':
    | * @dev Base token_accessor that can be destroyed by owner. All funds in token_accessor will be sent to the owner.
    | */
  > |contract Destructible is Ownable {
    |
    |    constructor() public payable { }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |
    |    function addOwner(address _newOwner) onlyGodOwner public{
  > |        owners[_newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |
    |    function removeOwner(address _oldOwner) onlyGodOwner public{
  > |        owners[_oldOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |
    |    function transferOwnership(address newGodOwner) public onlyGodOwner {
  > |        godOwner = newGodOwner;
    |        owners[newGodOwner] = true;
    |        owners[godOwner] = false;
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |    function transferOwnership(address newGodOwner) public onlyGodOwner {
    |        godOwner = newGodOwner;
  > |        owners[newGodOwner] = true;
    |        owners[godOwner] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |        godOwner = newGodOwner;
    |        owners[newGodOwner] = true;
  > |        owners[godOwner] = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(95)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public godOwner;
    |    mapping (address => bool) public owners;
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public godOwner;
  > |    mapping (address => bool) public owners;
    |
    |    constructor() public{
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function addOwner(address _newOwner) onlyGodOwner public{
    |        owners[_newOwner] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function removeOwner(address _oldOwner) onlyGodOwner public{
    |        owners[_oldOwner] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newGodOwner) public onlyGodOwner {
    |        godOwner = newGodOwner;
    |        owners[newGodOwner] = true;
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public godOwner;
    |    mapping (address => bool) public owners;
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |    function addOwner(address _newOwner) onlyGodOwner public{
  > |        owners[_newOwner] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |    function removeOwner(address _oldOwner) onlyGodOwner public{
  > |        owners[_oldOwner] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |    function transferOwnership(address newGodOwner) public onlyGodOwner {
  > |        godOwner = newGodOwner;
    |        owners[newGodOwner] = true;
    |        owners[godOwner] = false;
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newGodOwner) public onlyGodOwner {
    |        godOwner = newGodOwner;
  > |        owners[newGodOwner] = true;
    |        owners[godOwner] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        godOwner = newGodOwner;
    |        owners[newGodOwner] = true;
  > |        owners[godOwner] = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(95)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x0fa7d98ae6fe67f3790dd3338f199a4676a10eb7.sol(4)


