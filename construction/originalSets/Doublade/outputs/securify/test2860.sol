Processing contract: /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol:BAI
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BAI':
    |}
    |
  > |contract BAI is owned {
    |    string public constant name = "BAI";
    |    string public constant symbol = "BAI";
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'BAI':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'BAI':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'BAI':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'BAI':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BAI':
    |
    |contract BAI is owned {
  > |    string public constant name = "BAI";
    |    string public constant symbol = "BAI";
    |    uint256 private constant _INITIAL_SUPPLY = 21000000000;
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'BAI':
    |contract BAI is owned {
    |    string public constant name = "BAI";
  > |    string public constant symbol = "BAI";
    |    uint256 private constant _INITIAL_SUPPLY = 21000000000;
    |    uint8 public decimals = 0;
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'BAI':
    |    string public constant symbol = "BAI";
    |    uint256 private constant _INITIAL_SUPPLY = 21000000000;
  > |    uint8 public decimals = 0;
    |
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'BAI':
    |    uint8 public decimals = 0;
    |
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'BAI':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'BAI':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'BAI':
    |    }
    |
  > |    function destroy() public {
    |        if (msg.sender == owner) {
    |            selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'BAI':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'BAI':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'BAI':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'BAI':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(16)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.18;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbbd7b196d8ce1f56b2901145b3fcfc42cded5596.sol(16)


