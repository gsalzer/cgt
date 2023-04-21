Processing contract: /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol:DSThing
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol:SaiVox
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(69)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(61)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(52)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(26)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |/* pragma solidity ^0.4.13; */
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(135)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |/* pragma solidity ^0.4.13; */
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(92)

[33mWarning[0m for DAO in contract 'DSThing':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(69)

[33mWarning[0m for LockedEther in contract 'DSThing':
    |/* import 'ds-math/math.sol'; */
    |
  > |contract DSThing is DSAuth, DSNote, DSMath {
    |
    |    function S(string s) internal pure returns (bytes4) {
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(61)

[33mWarning[0m for UnhandledException in contract 'DSThing':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSThing':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSThing':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(52)

[33mWarning[0m for LockedEther in contract 'SaiVox':
    |/* import "ds-thing/thing.sol"; */
    |
  > |contract SaiVox is DSThing {
    |    uint256  _par;
    |    uint256  _way;
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(259)

[33mWarning[0m for UnhandledException in contract 'SaiVox':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SaiVox':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'SaiVox':
    |        var age = era() - tau;
    |        if (age == 0) return;  // optimised
  > |        tau = era();
    |
    |        if (_way != RAY) _par = rmul(_par, rpow(_way, age));  // optimised
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'SaiVox':
    |        tau = era();
    |
  > |        if (_way != RAY) _par = rmul(_par, rpow(_way, age));  // optimised
    |
    |        if (how == 0) return;  // optimised
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(303)

[31mViolation[0m for UnrestrictedWrite in contract 'SaiVox':
    |        if (how == 0) return;  // optimised
    |        var wag = int128(how * age);
  > |        _way = inj(prj(_way) + (fix < _par ? wag : -wag));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'SaiVox':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'SaiVox':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'SaiVox':
    |
    |    function mold(bytes32 param, uint val) public note auth {
  > |        if (param == 'way') _way = val;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'SaiVox':
    |
    |    function tell(uint256 ray) public note auth {
  > |        fix = ray;
    |    }
    |    function tune(uint256 ray) public note auth {
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'SaiVox':
    |    }
    |    function tune(uint256 ray) public note auth {
  > |        how = ray;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x99e950b0b635968a2d501caab9485567c876cef4.sol(295)


