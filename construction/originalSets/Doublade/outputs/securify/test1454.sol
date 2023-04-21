Processing contract: /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol:Oasis
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |}
    |
  > |contract Owned {
    |	address public owner;
    |	address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |	}
    |
  > |	function transferOwnership(address _newOwner) public onlyOwner {
    |		newOwner = _newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |	address public owner;
    |	address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |	address public owner;
  > |	address public newOwner;
    |
    |	event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |	}
    |
  > |	function acceptOwnership() public {
    |		require(msg.sender == newOwner);
    |		emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |	function transferOwnership(address _newOwner) public onlyOwner {
  > |		newOwner = _newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |		require(msg.sender == newOwner);
    |		emit OwnershipTransferred(owner, newOwner);
  > |		owner = newOwner;
    |		newOwner = address(0);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |		emit OwnershipTransferred(owner, newOwner);
    |		owner = newOwner;
  > |		newOwner = address(0);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x5c5f872e848ed764a56a4a3be82afbae71a0dcea.sol(41)


