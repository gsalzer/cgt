Processing contract: /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol:MultiSendCoinCrowd
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol:tokenInterface
[33mWarning[0m for LockedEther in contract 'MultiSendCoinCrowd':
    |}
    |
  > |contract MultiSendCoinCrowd is Ownable {
    |	tokenInterface public tokenContract;
    |	
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(40)

[33mWarning[0m for UnhandledException in contract 'MultiSendCoinCrowd':
    |        uint256 i = 0;
    |        while (i < _dests.length) {
  > |           tokenContract.transfer(_dests[i], _values[i]);
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(51)

[33mWarning[0m for UnhandledException in contract 'MultiSendCoinCrowd':
    |        uint256 i = 0;
    |        while (i < _dests.length) {
  > |            tokenContract.transfer(_dests[i], _value);
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(60)

[33mWarning[0m for UnhandledException in contract 'MultiSendCoinCrowd':
    |	
    |	function withdrawTokens(address to, uint256 value) public onlyOwner returns (bool) {
  > |        return tokenContract.transfer(to, value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(67)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MultiSendCoinCrowd':
    |        uint256 i = 0;
    |        while (i < _dests.length) {
  > |           tokenContract.transfer(_dests[i], _values[i]);
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(51)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MultiSendCoinCrowd':
    |        uint256 i = 0;
    |        while (i < _dests.length) {
  > |            tokenContract.transfer(_dests[i], _value);
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(60)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MultiSendCoinCrowd':
    |	
    |	function withdrawTokens(address to, uint256 value) public onlyOwner returns (bool) {
  > |        return tokenContract.transfer(to, value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSendCoinCrowd':
    |	function transferOwnership(address _newOwner) public onlyOwner {
    |		require(address(0) != _newOwner, "address(0) != _newOwner");
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSendCoinCrowd':
    |		require(msg.sender == newOwner, "msg.sender == newOwner");
    |		emit OwnershipTransferred(owner, msg.sender);
  > |		owner = msg.sender;
    |		newOwner = address(0);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSendCoinCrowd':
    |		emit OwnershipTransferred(owner, msg.sender);
    |		owner = msg.sender;
  > |		newOwner = address(0);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSendCoinCrowd':
    |	
    |	function updateTokenContract(address _tokenAddress) public onlyOwner {
  > |        tokenContract = tokenInterface(_tokenAddress);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(44)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | */
    | 
  > |contract Ownable {
    |	address public owner;
    |	address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | 
    |contract Ownable {
  > |	address public owner;
    |	address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |	address public owner;
  > |	address public newOwner;
    |
    |	event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |	}
    |
  > |	function transferOwnership(address _newOwner) public onlyOwner {
    |		require(address(0) != _newOwner, "address(0) != _newOwner");
    |		newOwner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |	}
    |
  > |	function acceptOwnership() public {
    |		require(msg.sender == newOwner, "msg.sender == newOwner");
    |		emit OwnershipTransferred(owner, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |	function transferOwnership(address _newOwner) public onlyOwner {
    |		require(address(0) != _newOwner, "address(0) != _newOwner");
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |		require(msg.sender == newOwner, "msg.sender == newOwner");
    |		emit OwnershipTransferred(owner, msg.sender);
  > |		owner = msg.sender;
    |		newOwner = address(0);
    |	}
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |		emit OwnershipTransferred(owner, msg.sender);
    |		owner = msg.sender;
  > |		newOwner = address(0);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xa66cdf7fc3d616daae99a74039ef3f35b5a9816c.sol(32)


