Processing contract: /home/jiaming/mavs_srcs/contract@0x8e1b311deb964608a01fd44f78ca419929223d1f.sol:Skel
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Skel':
    |  }
    |function emptyTo(address addr) onlyowner public {
  > |    addr.transfer(address(this).balance);
    |}
    |}
  at /home/jiaming/mavs_srcs/contract@0x8e1b311deb964608a01fd44f78ca419929223d1f.sol(13)

[33mWarning[0m for LockedEther in contract 'Skel':
  > |contract Skel {
    |  string public name;
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x8e1b311deb964608a01fd44f78ca419929223d1f.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'Skel':
    |      _;
    |  }
  > |function emptyTo(address addr) onlyowner public {
    |    addr.transfer(address(this).balance);
    |}
  at /home/jiaming/mavs_srcs/contract@0x8e1b311deb964608a01fd44f78ca419929223d1f.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Skel':
    |contract Skel {
  > |  string public name;
    |  address public owner;
    |  function Skel() public {
  at /home/jiaming/mavs_srcs/contract@0x8e1b311deb964608a01fd44f78ca419929223d1f.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'Skel':
    |contract Skel {
    |  string public name;
  > |  address public owner;
    |  function Skel() public {
    |      name = "test";
  at /home/jiaming/mavs_srcs/contract@0x8e1b311deb964608a01fd44f78ca419929223d1f.sol(3)

[31mViolation[0m for TODAmount in contract 'Skel':
    |  }
    |function emptyTo(address addr) onlyowner public {
  > |    addr.transfer(address(this).balance);
    |}
    |}
  at /home/jiaming/mavs_srcs/contract@0x8e1b311deb964608a01fd44f78ca419929223d1f.sol(13)

[33mWarning[0m for TODReceiver in contract 'Skel':
    |  }
    |function emptyTo(address addr) onlyowner public {
  > |    addr.transfer(address(this).balance);
    |}
    |}
  at /home/jiaming/mavs_srcs/contract@0x8e1b311deb964608a01fd44f78ca419929223d1f.sol(13)

[33mWarning[0m for UnhandledException in contract 'Skel':
    |  }
    |function emptyTo(address addr) onlyowner public {
  > |    addr.transfer(address(this).balance);
    |}
    |}
  at /home/jiaming/mavs_srcs/contract@0x8e1b311deb964608a01fd44f78ca419929223d1f.sol(13)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Skel':
    |  }
    |function emptyTo(address addr) onlyowner public {
  > |    addr.transfer(address(this).balance);
    |}
    |}
  at /home/jiaming/mavs_srcs/contract@0x8e1b311deb964608a01fd44f78ca419929223d1f.sol(13)


