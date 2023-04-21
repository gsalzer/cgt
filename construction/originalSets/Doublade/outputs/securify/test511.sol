Processing contract: /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol:HorseyToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'HorseyToken':
    |// fixed supply
    |// ----------------------------------------------------------------------------
  > |contract HorseyToken is ERC20Interface, Owned {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(82)

[33mWarning[0m for UnhandledException in contract 'HorseyToken':
    |        if (approve(_spender, _value)) {
    |            // So, spender can be another smart contract, that implement receiveApproval function, where he can withdraw the token and do other things
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(186)

[33mWarning[0m for UnhandledException in contract 'HorseyToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseyToken':
    |        if (approve(_spender, _value)) {
    |            // So, spender can be another smart contract, that implement receiveApproval function, where he can withdraw the token and do other things
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(186)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseyToken':
    |    // ------------------------------------------------------------------------
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseyToken':
    |    // ------------------------------------------------------------------------
    |    function transfer(address to, uint tokens) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseyToken':
    |    // ------------------------------------------------------------------------
    |    function approve(address spender, uint tokens) public returns (bool success) {
  > |        allowed[msg.sender][spender] = tokens;
    |        emit Approval(msg.sender, spender, tokens);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseyToken':
    |    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
    |        balances[from] = balances[from].sub(tokens);
  > |        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
    |        balances[to] = balances[to].add(tokens);
    |        emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseyToken':
    |    */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseyToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseyToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseyToken':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseyToken':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseyToken':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(73)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(73)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.4;
    | 
  > |library SafeMath {
    |    function add(uint a, uint b) internal pure returns (uint c) {
    |        c = a + b;
  at /home/jiaming/mavs_srcs/contract@0x214f96e84d3c0f2920bb90fec861be4925edf02b.sol(5)


