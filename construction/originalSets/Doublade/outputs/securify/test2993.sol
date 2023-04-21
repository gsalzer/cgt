Processing contract: /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol:XRRsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol:XRRtoken
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(76)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(3)

[33mWarning[0m for LockedEther in contract 'XRRsale':
    |}
    |
  > |contract XRRsale is Ownable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(87)

[33mWarning[0m for UnhandledException in contract 'XRRsale':
    |
    |    function tokenTosale() public view returns (uint256){
  > |        return token.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(146)

[33mWarning[0m for UnhandledException in contract 'XRRsale':
    |    function tokenWithdraw() public onlyOwner {
    |        require(tokenTosale() > 0);
  > |        token.transfer(owner, tokenTosale());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(151)

[33mWarning[0m for UnhandledException in contract 'XRRsale':
    |
    |        totalTokenRaiseWei = totalTokenRaiseWei.add(tokens);
  > |        token.transfer(msg.sender, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(164)

[33mWarning[0m for UnhandledException in contract 'XRRsale':
    |        totalRaiseWei = totalRaiseWei.add(amount);
    |        totalTokenRaiseWei = totalTokenRaiseWei.add(_value);
  > |        token.transfer(_to, _value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(175)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XRRsale':
    |
    |    function tokenTosale() public view returns (uint256){
  > |        return token.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XRRsale':
    |    function tokenWithdraw() public onlyOwner {
    |        require(tokenTosale() > 0);
  > |        token.transfer(owner, tokenTosale());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(151)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XRRsale':
    |
    |        totalTokenRaiseWei = totalTokenRaiseWei.add(tokens);
  > |        token.transfer(msg.sender, tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(164)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XRRsale':
    |        totalRaiseWei = totalRaiseWei.add(amount);
    |        totalTokenRaiseWei = totalTokenRaiseWei.add(_value);
  > |        token.transfer(_to, _value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'XRRsale':
    |
    |    function setToken(XRRtoken _token) public {
  > |        token = _token;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'XRRsale':
    |
    |    function setWallet(address _wallet) public {
  > |        wallet = _wallet;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'XRRsale':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'XRRsale':
    |        require(currentPrice() > 0);
    |
  > |        totalRaiseWei = totalRaiseWei.add(msg.value);
    |        uint256 tokens = currentPrice().mul(msg.value);
    |        require(tokens <= tokenTosale());
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'XRRsale':
    |        require(tokens <= tokenTosale());
    |
  > |        totalTokenRaiseWei = totalTokenRaiseWei.add(tokens);
    |        token.transfer(msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'XRRsale':
    |
    |        uint256 amount = _value.div(currentPrice());
  > |        totalRaiseWei = totalRaiseWei.add(amount);
    |        totalTokenRaiseWei = totalTokenRaiseWei.add(_value);
    |        token.transfer(_to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'XRRsale':
    |        uint256 amount = _value.div(currentPrice());
    |        totalRaiseWei = totalRaiseWei.add(amount);
  > |        totalTokenRaiseWei = totalTokenRaiseWei.add(_value);
    |        token.transfer(_to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc40f35abf83710e0fe3c510ce8db4289603d26b4.sol(174)


