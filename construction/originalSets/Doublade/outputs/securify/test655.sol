Processing contract: /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol:SwapController
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol:TokenController
Processing contract: /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol:TokenTransferGuard
[33mWarning[0m for LockedEther in contract 'Controlled':
    |}
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    modifier onlyController { if (msg.sender != controller) throw; _; }
    |
  > |    address public controller;
    |
    |    function Controlled() { controller = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(122)

[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(65)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(57)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(48)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(22)

[33mWarning[0m for LockedEther in contract 'SwapController':
    |}
    |
  > |contract SwapController is DSAuth, TokenController {
    |    Controlled public controlled;
    |
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(130)

[33mWarning[0m for UnhandledException in contract 'SwapController':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(65)

[33mWarning[0m for UnhandledException in contract 'SwapController':
    |
    |    function changeController(address _newController) public auth {
  > |        controlled.changeController(_newController);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(145)

[33mWarning[0m for UnhandledException in contract 'SwapController':
    |        for (uint i=0; i<guards.length; i++)
    |        {
  > |            if (!guards[i].onTokenTransfer(_from, _to, _amount))
    |            {
    |                return false;
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SwapController':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(65)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SwapController':
    |
    |    function changeController(address _newController) public auth {
  > |        controlled.changeController(_newController);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SwapController':
    |        for (uint i=0; i<guards.length; i++)
    |        {
  > |            if (!guards[i].onTokenTransfer(_from, _to, _amount))
    |            {
    |                return false;
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'SwapController':
  > |// This program is free software: you can redistribute it and/or modify
    |// it under the terms of the GNU General Public License as published by
    |// the Free Software Foundation, either version 3 of the License, or
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'SwapController':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'SwapController':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'SwapController':
    |    function addGuard(address _guard) public auth
    |    {
  > |        guards.push(TokenTransferGuard(_guard));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x29e8c6541ce50cbd1b52f719926ae805f99535f9.sol(173)


