Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSChief
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSChiefApprovals
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSChiefFab
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSRoles
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSThing
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol:ERC20Events
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
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(61)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(52)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(26)

[33mWarning[0m for LockedEther in contract 'DSChief':
    |// `hat` address is unique root user (has every role) and the
    |// unique owner of role 0 (typically 'sys' or 'internal')
  > |contract DSChief is DSRoles, DSChiefApprovals {
    |
    |    function DSChief(DSToken GOV, DSToken IOU, uint MAX_YAYS)
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(753)

[33mWarning[0m for UnhandledException in contract 'DSChief':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[33mWarning[0m for UnhandledException in contract 'DSChief':
    |        note
    |    {
  > |        GOV.pull(msg.sender, wad);
    |        IOU.mint(msg.sender, wad);
    |        deposits[msg.sender] = add(deposits[msg.sender], wad);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(660)

[33mWarning[0m for UnhandledException in contract 'DSChief':
    |    {
    |        GOV.pull(msg.sender, wad);
  > |        IOU.mint(msg.sender, wad);
    |        deposits[msg.sender] = add(deposits[msg.sender], wad);
    |        addWeight(wad, votes[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(661)

[33mWarning[0m for UnhandledException in contract 'DSChief':
    |        deposits[msg.sender] = sub(deposits[msg.sender], wad);
    |        subWeight(wad, votes[msg.sender]);
  > |        IOU.burn(msg.sender, wad);
    |        GOV.push(msg.sender, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(672)

[33mWarning[0m for UnhandledException in contract 'DSChief':
    |        subWeight(wad, votes[msg.sender]);
    |        IOU.burn(msg.sender, wad);
  > |        GOV.push(msg.sender, wad);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(673)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSChief':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSChief':
    |        note
    |    {
  > |        GOV.pull(msg.sender, wad);
    |        IOU.mint(msg.sender, wad);
    |        deposits[msg.sender] = add(deposits[msg.sender], wad);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(660)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSChief':
    |    {
    |        GOV.pull(msg.sender, wad);
  > |        IOU.mint(msg.sender, wad);
    |        deposits[msg.sender] = add(deposits[msg.sender], wad);
    |        addWeight(wad, votes[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(661)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSChief':
    |        deposits[msg.sender] = sub(deposits[msg.sender], wad);
    |        subWeight(wad, votes[msg.sender]);
  > |        IOU.burn(msg.sender, wad);
    |        GOV.push(msg.sender, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(672)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSChief':
    |        subWeight(wad, votes[msg.sender]);
    |        IOU.burn(msg.sender, wad);
  > |        GOV.push(msg.sender, wad);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(673)

[31mViolation[0m for UnrestrictedWrite in contract 'DSChief':
    |    {
    |        require(approvals[whom] > approvals[hat]);
  > |        hat = whom;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChief':
    |        GOV.pull(msg.sender, wad);
    |        IOU.mint(msg.sender, wad);
  > |        deposits[msg.sender] = add(deposits[msg.sender], wad);
    |        addWeight(wad, votes[msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(662)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChief':
    |        note
    |    {
  > |        deposits[msg.sender] = sub(deposits[msg.sender], wad);
    |        subWeight(wad, votes[msg.sender]);
    |        IOU.burn(msg.sender, wad);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(670)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChief':
    |        uint weight = deposits[msg.sender];
    |        subWeight(weight, votes[msg.sender]);
  > |        votes[msg.sender] = slate;
    |        addWeight(weight, votes[msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(704)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChief':
    |        bytes32 shifted = bytes32(uint256(uint256(2) ** uint256(role)));
    |        if( enabled ) {
  > |            _user_roles[who] = last_roles | shifted;
    |        } else {
    |            _user_roles[who] = last_roles & BITNOT(shifted);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChief':
    |            _user_roles[who] = last_roles | shifted;
    |        } else {
  > |            _user_roles[who] = last_roles & BITNOT(shifted);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChief':
    |        auth
    |    {
  > |        _public_capabilities[code][sig] = enabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChief':
    |        bytes32 shifted = bytes32(uint256(uint256(2) ** uint256(role)));
    |        if( enabled ) {
  > |            _capability_roles[code][sig] = last_roles | shifted;
    |        } else {
    |            _capability_roles[code][sig] = last_roles & BITNOT(shifted);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChief':
    |            _capability_roles[code][sig] = last_roles | shifted;
    |        } else {
  > |            _capability_roles[code][sig] = last_roles & BITNOT(shifted);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(199)

[33mWarning[0m for LockedEther in contract 'DSChiefApprovals':
    |// of `DSAuthority`, like with `ds-roles`.
    |//   SEE DSChief
  > |contract DSChiefApprovals is DSThing {
    |    mapping(bytes32=>address[]) public slates;
    |    mapping(address=>bytes32) public votes;
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(634)

[33mWarning[0m for UnhandledException in contract 'DSChiefApprovals':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[33mWarning[0m for UnhandledException in contract 'DSChiefApprovals':
    |        note
    |    {
  > |        GOV.pull(msg.sender, wad);
    |        IOU.mint(msg.sender, wad);
    |        deposits[msg.sender] = add(deposits[msg.sender], wad);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(660)

[33mWarning[0m for UnhandledException in contract 'DSChiefApprovals':
    |    {
    |        GOV.pull(msg.sender, wad);
  > |        IOU.mint(msg.sender, wad);
    |        deposits[msg.sender] = add(deposits[msg.sender], wad);
    |        addWeight(wad, votes[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(661)

[33mWarning[0m for UnhandledException in contract 'DSChiefApprovals':
    |        deposits[msg.sender] = sub(deposits[msg.sender], wad);
    |        subWeight(wad, votes[msg.sender]);
  > |        IOU.burn(msg.sender, wad);
    |        GOV.push(msg.sender, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(672)

[33mWarning[0m for UnhandledException in contract 'DSChiefApprovals':
    |        subWeight(wad, votes[msg.sender]);
    |        IOU.burn(msg.sender, wad);
  > |        GOV.push(msg.sender, wad);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(673)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSChiefApprovals':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSChiefApprovals':
    |        note
    |    {
  > |        GOV.pull(msg.sender, wad);
    |        IOU.mint(msg.sender, wad);
    |        deposits[msg.sender] = add(deposits[msg.sender], wad);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(660)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSChiefApprovals':
    |    {
    |        GOV.pull(msg.sender, wad);
  > |        IOU.mint(msg.sender, wad);
    |        deposits[msg.sender] = add(deposits[msg.sender], wad);
    |        addWeight(wad, votes[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(661)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSChiefApprovals':
    |        deposits[msg.sender] = sub(deposits[msg.sender], wad);
    |        subWeight(wad, votes[msg.sender]);
  > |        IOU.burn(msg.sender, wad);
    |        GOV.push(msg.sender, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(672)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSChiefApprovals':
    |        subWeight(wad, votes[msg.sender]);
    |        IOU.burn(msg.sender, wad);
  > |        GOV.push(msg.sender, wad);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(673)

[31mViolation[0m for UnrestrictedWrite in contract 'DSChiefApprovals':
    |    {
    |        require(approvals[whom] > approvals[hat]);
  > |        hat = whom;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChiefApprovals':
    |        GOV.pull(msg.sender, wad);
    |        IOU.mint(msg.sender, wad);
  > |        deposits[msg.sender] = add(deposits[msg.sender], wad);
    |        addWeight(wad, votes[msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(662)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChiefApprovals':
    |        note
    |    {
  > |        deposits[msg.sender] = sub(deposits[msg.sender], wad);
    |        subWeight(wad, votes[msg.sender]);
    |        IOU.burn(msg.sender, wad);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(670)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChiefApprovals':
    |        uint weight = deposits[msg.sender];
    |        subWeight(weight, votes[msg.sender]);
  > |        votes[msg.sender] = slate;
    |        addWeight(weight, votes[msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(704)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChiefApprovals':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'DSChiefApprovals':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(52)

[33mWarning[0m for LockedEther in contract 'DSChiefFab':
    |}
    |
  > |contract DSChiefFab {
    |    function newChief(DSToken gov, uint MAX_YAYS) public returns (DSChief chief) {
    |        DSToken iou = new DSToken('IOU');
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(786)

[31mViolation[0m for MissingInputValidation in contract 'DSChiefFab':
    |
    |contract DSChiefFab {
  > |    function newChief(DSToken gov, uint MAX_YAYS) public returns (DSChief chief) {
    |        DSToken iou = new DSToken('IOU');
    |        chief = new DSChief(gov, iou, MAX_YAYS);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(787)

[33mWarning[0m for MissingInputValidation in contract 'DSChiefFab':
    |}
    |
  > |contract DSChiefFab {
    |    function newChief(DSToken gov, uint MAX_YAYS) public returns (DSChief chief) {
    |        DSToken iou = new DSToken('IOU');
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(786)

[33mWarning[0m for UnhandledException in contract 'DSChiefFab':
    |        DSToken iou = new DSToken('IOU');
    |        chief = new DSChief(gov, iou, MAX_YAYS);
  > |        iou.setOwner(chief);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(790)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSChiefFab':
    |        DSToken iou = new DSToken('IOU');
    |        chief = new DSChief(gov, iou, MAX_YAYS);
  > |        iou.setOwner(chief);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(790)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |/* pragma solidity ^0.4.13; */
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(224)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |/* pragma solidity ^0.4.13; */
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(310)

[33mWarning[0m for DAO in contract 'DSRoles':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[33mWarning[0m for LockedEther in contract 'DSRoles':
    |/* import 'ds-auth/auth.sol'; */
    |
  > |contract DSRoles is DSAuth, DSAuthority
    |{
    |    mapping(address=>bool) _root_users;
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'DSRoles':
    |    mapping(address=>mapping(bytes4=>bool)) _public_capabilities;
    |
  > |    function getUserRoles(address who)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'DSRoles':
    |    }
    |
  > |    function getCapabilityRoles(address code, bytes4 sig)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'DSRoles':
    |    }
    |
  > |    function isUserRoot(address who)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'DSRoles':
    |    }
    |
  > |    function isCapabilityPublic(address code, bytes4 sig)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'DSRoles':
    |    }
    |
  > |    function hasUserRole(address who, uint8 role)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'DSRoles':
    |    }
    |
  > |    function canCall(address caller, address code, bytes4 sig)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'DSRoles':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSRoles':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSRoles':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DSRoles':
    |    }
    |
  > |    function BITNOT(bytes32 input) internal pure returns (bytes32 output) {
    |        return (input ^ bytes32(uint(-1)));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(159)

[33mWarning[0m for UnhandledException in contract 'DSRoles':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSRoles':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSRoles':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSRoles':
    |        auth
    |    {
  > |        _root_users[who] = enabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'DSRoles':
    |        bytes32 shifted = bytes32(uint256(uint256(2) ** uint256(role)));
    |        if( enabled ) {
  > |            _user_roles[who] = last_roles | shifted;
    |        } else {
    |            _user_roles[who] = last_roles & BITNOT(shifted);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'DSRoles':
    |            _user_roles[who] = last_roles | shifted;
    |        } else {
  > |            _user_roles[who] = last_roles & BITNOT(shifted);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'DSRoles':
    |        auth
    |    {
  > |        _public_capabilities[code][sig] = enabled;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(187)

[31mViolation[0m for UnrestrictedWrite in contract 'DSRoles':
    |        bytes32 shifted = bytes32(uint256(uint256(2) ** uint256(role)));
    |        if( enabled ) {
  > |            _capability_roles[code][sig] = last_roles | shifted;
    |        } else {
    |            _capability_roles[code][sig] = last_roles & BITNOT(shifted);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'DSRoles':
    |            _capability_roles[code][sig] = last_roles | shifted;
    |        } else {
  > |            _capability_roles[code][sig] = last_roles & BITNOT(shifted);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(199)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |/* import "ds-note/note.sol"; */
    |
  > |contract DSStop is DSNote, DSAuth {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(390)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(392)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(398)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(401)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(399)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(402)

[33mWarning[0m for DAO in contract 'DSThing':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[33mWarning[0m for LockedEther in contract 'DSThing':
    |/* import 'ds-math/math.sol'; */
    |
  > |contract DSThing is DSAuth, DSNote, DSMath {
    |
    |    function S(string s) internal pure returns (bytes4) {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(359)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(61)

[33mWarning[0m for UnhandledException in contract 'DSThing':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSThing':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSThing':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(52)

[33mWarning[0m for DAO in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[33mWarning[0m for LockedEther in contract 'DSToken':
    |/* import "./base.sol"; */
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    bytes32  public  symbol;
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(531)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(471)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(474)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    event Burn(address indexed guy, uint wad);
    |
  > |    function approve(address guy) public stoppable returns (bool) {
    |        return super.approve(guy, uint(-1));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(543)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public stoppable returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(547)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(392)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(398)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(401)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(468)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(498)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSToken is DSTokenBase(0), DSStop {
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(533)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
    |    function DSToken(bytes32 symbol_) public {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(534)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    // Optional token name
  > |    bytes32   public  name = "";
    |
    |    function setName(bytes32 name_) public auth {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(600)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(399)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(402)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(499)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(560)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(585)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(586)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(603)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    {
    |        if (src != msg.sender && _approvals[src][msg.sender] != uint(-1)) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(557)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |/* import "ds-math/math.sol"; */
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(458)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(471)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(474)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(478)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(498)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(468)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    {
    |        if (src != msg.sender) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(499)

[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |/* pragma solidity ^0.4.8; */
    |
  > |contract ERC20Events {
    |    event Approval(address indexed src, address indexed guy, uint wad);
    |    event Transfer(address indexed src, address indexed dst, uint wad);
  at /home/jiaming/mavs_srcs/contract@0x1e7ca05e174a523709e556080e227f734a8f1483.sol(418)


