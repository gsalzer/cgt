Processing contract: /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol:SantimentWhiteList
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SantimentWhiteList':
    |/// @notice report bugs to: bugs@ethernian.com
    |/// @title Santiment WhiteList contract
  > |contract SantimentWhiteList {
    |
    |    string constant public VERSION = "0.3.2";
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'SantimentWhiteList':
    |    }
    |
  > |    mapping(address=>Limit) public allowed;
    |    uint16  public chunkNr = 0;
    |    uint    public recordNum = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'SantimentWhiteList':
    |    }
    |
  > |    function setAdmin(address newAdmin)
    |    adminOnly
    |    public {
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'SantimentWhiteList':
    |contract SantimentWhiteList {
    |
  > |    string constant public VERSION = "0.3.2";
    |
    |    function () { throw; }   //explicitly unpayable
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'SantimentWhiteList':
    |
    |    mapping(address=>Limit) public allowed;
  > |    uint16  public chunkNr = 0;
    |    uint    public recordNum = 0;
    |    uint256 public controlSum = 0;
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'SantimentWhiteList':
    |    mapping(address=>Limit) public allowed;
    |    uint16  public chunkNr = 0;
  > |    uint    public recordNum = 0;
    |    uint256 public controlSum = 0;
    |    bool public isSetupMode = true;
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'SantimentWhiteList':
    |    uint16  public chunkNr = 0;
    |    uint    public recordNum = 0;
  > |    uint256 public controlSum = 0;
    |    bool public isSetupMode = true;
    |    address public admin;
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'SantimentWhiteList':
    |    uint    public recordNum = 0;
    |    uint256 public controlSum = 0;
  > |    bool public isSetupMode = true;
    |    address public admin;
    |
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'SantimentWhiteList':
    |    uint256 public controlSum = 0;
    |    bool public isSetupMode = true;
  > |    address public admin;
    |
    |    function SantimentWhiteList() { admin = msg.sender; }
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'SantimentWhiteList':
    |
    |    ///@notice switch off setup mode
  > |    function start()
    |    adminOnly
    |    public {
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'SantimentWhiteList':
    |            //remove old record if exists
    |            if (lim.max > 0) {
  > |                controlSum -= uint160(addr) + lim.min + lim.max;
    |                delete allowed[addr];
    |            }
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'SantimentWhiteList':
    |            if (lim.max > 0) {
    |                controlSum -= uint160(addr) + lim.min + lim.max;
  > |                delete allowed[addr];
    |            }
    |            //insert record if max > 0
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'SantimentWhiteList':
    |            if (max > 0) {
    |                // max > 0 means add a new record into the list.
  > |                allowed[addr] = Limit({min:min, max:max});
    |                controlSum += uint160(addr) + min + max;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'SantimentWhiteList':
    |                // max > 0 means add a new record into the list.
    |                allowed[addr] = Limit({min:min, max:max});
  > |                controlSum += uint160(addr) + min + max;
    |            }
    |        }//for
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'SantimentWhiteList':
    |            }
    |        }//for
  > |        recordNum+=len;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'SantimentWhiteList':
    |    external {
    |        var len = addrs.length;
  > |        require ( chunkNr++ == _chunkNr);
    |        require ( mins.length == len &&  mins.length == len );
    |        for(uint16 i=0; i<len; ++i) {
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'SantimentWhiteList':
    |    adminOnly
    |    public {
  > |        isSetupMode = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'SantimentWhiteList':
    |    adminOnly
    |    public {
  > |        admin = newAdmin;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x0cf0a2a4bc1ccaa0e3ca2048e2e04e972e3f84b4.sol(96)


