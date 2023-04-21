Processing contract: /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol:TokenDistributor
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol:WeightedTokenDistributor
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(85)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(8)

[33mWarning[0m for LockedEther in contract 'TokenDistributor':
    |}
    |
  > |contract TokenDistributor is Ownable {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(102)

[33mWarning[0m for UnhandledException in contract 'TokenDistributor':
    |    function getTokenBalance(address _token) public view returns (uint256) {
    |        ERC20Basic token = ERC20Basic(_token);
  > |        return token.balanceOf(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(137)

[33mWarning[0m for UnhandledException in contract 'TokenDistributor':
    |    function _transfer (address _token, address _recipient, uint256 _value) internal {
    |        ERC20Basic token = ERC20Basic(_token);
  > |        token.transfer(_recipient, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDistributor':
    |    function getTokenBalance(address _token) public view returns (uint256) {
    |        ERC20Basic token = ERC20Basic(_token);
  > |        return token.balanceOf(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenDistributor':
    |    function _transfer (address _token, address _recipient, uint256 _value) internal {
    |        ERC20Basic token = ERC20Basic(_token);
  > |        token.transfer(_recipient, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistributor':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenDistributor':
    |    function setTargetToken (address _targetToken) public onlyOwner returns (bool) {
    |        if(_targetToken != 0x0 && targetToken == 0x0) {
  > |          targetToken = _targetToken;
    |          return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(146)

[31mViolation[0m for LockedEther in contract 'WeightedTokenDistributor':
    |}
    |
  > |contract WeightedTokenDistributor is TokenDistributor {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(189)

[33mWarning[0m for UnhandledException in contract 'WeightedTokenDistributor':
    |    function getTokenBalance(address _token) public view returns (uint256) {
    |        ERC20Basic token = ERC20Basic(_token);
  > |        return token.balanceOf(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(137)

[33mWarning[0m for UnhandledException in contract 'WeightedTokenDistributor':
    |    function _transfer (address _token, address _recipient, uint256 _value) internal {
    |        ERC20Basic token = ERC20Basic(_token);
  > |        token.transfer(_recipient, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WeightedTokenDistributor':
    |    function getTokenBalance(address _token) public view returns (uint256) {
    |        ERC20Basic token = ERC20Basic(_token);
  > |        return token.balanceOf(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WeightedTokenDistributor':
    |    function _transfer (address _token, address _recipient, uint256 _value) internal {
    |        ERC20Basic token = ERC20Basic(_token);
  > |        token.transfer(_recipient, _value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'WeightedTokenDistributor':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'WeightedTokenDistributor':
    |    function setTargetToken (address _targetToken) public onlyOwner returns (bool) {
    |        if(_targetToken != 0x0 && targetToken == 0x0) {
  > |          targetToken = _targetToken;
    |          return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf23555c61308a158f99fd74f8e10e24c6df74000.sol(146)


