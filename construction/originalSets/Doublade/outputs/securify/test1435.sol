Processing contract: /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol:TokenState
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.20;
    |
  > |contract Owned {
    |    address public owner;
    |    address public nominatedOwner;
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function nominateOwner(address _owner)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public nominatedOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public nominatedOwner;
    |
    |    function Owned(address _owner)
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership()
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(59)

[33mWarning[0m for LockedEther in contract 'TokenState':
    |*/
    |
  > |contract TokenState is Owned {
    |
    |    // the address of the contract that can modify balances and allowances
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |    }
    |
  > |    function nominateOwner(address _owner)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |
    |    // ERC20 fields.
  > |    mapping(address => uint) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |    // ERC20 fields.
    |    mapping(address => uint) public balanceOf;
  > |    mapping(address => mapping(address => uint256)) public allowance;
    |
    |    function TokenState(address _owner, address _associatedContract)
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |
    |    // Change the associated contract to a new address
  > |    function setAssociatedContract(address _associatedContract)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |    }
    |
  > |    function setAllowance(address tokenOwner, address spender, uint value)
    |        external
    |        onlyAssociatedContract
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |    }
    |
  > |    function setBalanceOf(address account, uint value)
    |        external
    |        onlyAssociatedContract
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'TokenState':
    |
    |contract Owned {
  > |    address public owner;
    |    address public nominatedOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'TokenState':
    |contract Owned {
    |    address public owner;
  > |    address public nominatedOwner;
    |
    |    function Owned(address _owner)
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'TokenState':
    |    }
    |
  > |    function acceptOwnership()
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'TokenState':
    |    // the address of the contract that can modify balances and allowances
    |    // this can only be changed by the owner of this contract
  > |    address public associatedContract;
    |
    |    // ERC20 fields.
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        onlyOwner
    |    {
  > |        associatedContract = _associatedContract;
    |        emit AssociatedContractUpdated(_associatedContract);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        onlyAssociatedContract
    |    {
  > |        allowance[tokenOwner][spender] = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        onlyAssociatedContract
    |    {
  > |        balanceOf[account] = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5b1b5fea1b99d83ad479df0c222f0492385381dd.sol(135)


