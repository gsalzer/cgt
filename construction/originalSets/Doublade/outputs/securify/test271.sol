Processing contract: /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol:Proxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol:Proxyable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Owned':
    |*/
    |
  > |contract Owned {
    |    address public owner;
    |    address public nominatedOwner;
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function nominateOwner(address _owner)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public nominatedOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public nominatedOwner;
    |
    |    function Owned(address _owner)
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership()
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(64)

[33mWarning[0m for LockedEther in contract 'Proxy':
    |*/
    |
  > |contract Proxy is Owned {
    |    Proxyable target;
    |
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'Proxy':
    |    }
    |
  > |    function nominateOwner(address _owner)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |
    |contract Owned {
  > |    address public owner;
    |    address public nominatedOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |contract Owned {
    |    address public owner;
  > |    address public nominatedOwner;
    |
    |    function Owned(address _owner)
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |    }
    |
  > |    function acceptOwnership()
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |    }
    |
  > |    function _setTarget(address _target) 
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |    {
    |        require(_target != address(0));
  > |        target = Proxyable(_target);
    |        emit TargetChanged(_target);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(105)

[33mWarning[0m for LockedEther in contract 'Proxyable':
    |*/
    |
  > |contract Proxyable is Owned {
    |    // the proxy this contract exists behind.
    |    Proxy public proxy;
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'Proxyable':
    |    }
    |
  > |    function nominateOwner(address _owner)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'Proxyable':
    |        public { }
    |
  > |    function setProxy(Proxy _proxy)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'Proxyable':
    |    }
    |
  > |    function setMessageSender(address sender)
    |        external
    |        onlyProxy
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'Proxyable':
    |
    |contract Owned {
  > |    address public owner;
    |    address public nominatedOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Proxyable':
    |contract Owned {
    |    address public owner;
  > |    address public nominatedOwner;
    |
    |    function Owned(address _owner)
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Proxyable':
    |    }
    |
  > |    function acceptOwnership()
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Proxyable':
    |contract Proxyable is Owned {
    |    // the proxy this contract exists behind.
  > |    Proxy public proxy;
    |
    |    // The caller of the proxy, passed through to this contract.
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxyable':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxyable':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxyable':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxyable':
    |        onlyOwner
    |    {
  > |        proxy = _proxy;
    |        emit ProxyChanged(_proxy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxyable':
    |        onlyProxy
    |    {
  > |        messageSender = sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x129e27ff40db79b7a395d123413a815e38832e74.sol(170)


