Processing contract: /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol:AirDrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol:TokenTransferInterface
[33mWarning[0m for LockedEther in contract 'AirDrop':
    |
    |
  > |contract AirDrop is Ownable {
    |
    |    TokenTransferInterface public constant token = TokenTransferInterface(0xC8A0D57d5F24622813a1BEe07509287BFaA4A3bc);
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'AirDrop':
    |    TokenTransferInterface public constant token = TokenTransferInterface(0xC8A0D57d5F24622813a1BEe07509287BFaA4A3bc);
    |
  > |    function multiValueAirDrop(address[] _addrs, uint256[] _values) public onlyOwner {
    |	require(_addrs.length == _values.length && _addrs.length <= 100);
    |        for (uint i = 0; i < _addrs.length; i++) {
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'AirDrop':
    |contract Ownable {
    |    
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'AirDrop':
    |    
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |        OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'AirDrop':
    |contract AirDrop is Ownable {
    |
  > |    TokenTransferInterface public constant token = TokenTransferInterface(0xC8A0D57d5F24622813a1BEe07509287BFaA4A3bc);
    |
    |    function multiValueAirDrop(address[] _addrs, uint256[] _values) public onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(35)

[33mWarning[0m for UnhandledException in contract 'AirDrop':
    |        for (uint i = 0; i < _addrs.length; i++) {
    |            if (_addrs[i] != 0x0 && _values[i] > 0) {
  > |                token.transfer(_addrs[i], _values[i] * (10 ** 18));  
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(41)

[33mWarning[0m for UnhandledException in contract 'AirDrop':
    |        for (uint i = 0; i < _addrs.length; i++) {
    |            if (_addrs[i] != 0x0) {
  > |                token.transfer(_addrs[i], _value * (10 ** 18));
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(50)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AirDrop':
    |        for (uint i = 0; i < _addrs.length; i++) {
    |            if (_addrs[i] != 0x0 && _values[i] > 0) {
  > |                token.transfer(_addrs[i], _values[i] * (10 ** 18));  
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AirDrop':
    |        for (uint i = 0; i < _addrs.length; i++) {
    |            if (_addrs[i] != 0x0) {
  > |                token.transfer(_addrs[i], _value * (10 ** 18));
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'AirDrop':
    |        require(_newOwner != 0x0);
    |        OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(23)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        require(_newOwner != 0x0);
    |        OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(_newOwner != 0x0);
    |        OwnershipTransferred(owner, _newOwner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x71c8e6ab951288225fc2650330b842be6e42c112.sol(23)


