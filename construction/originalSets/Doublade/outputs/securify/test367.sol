Processing contract: /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol:ClientsHandler
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol:Converter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol:ManageableContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ClientsHandler':
    |
    |/** contract for deploy */
  > |contract ClientsHandler is ManageableContract, Converter {
    |
    |    function ClientsHandler() public {
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(233)

[31mViolation[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |        require(performers[_performer] == true);
    |        if(DSData[_addr][_id].isDream == true) {
  > |            DSData[_addr][_id].hasPerformer = true;
    |            DSData[_addr][_id].performer = _performer;
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(368)

[31mViolation[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |        if(DSData[_addr][_id].isDream == true) {
    |            DSData[_addr][_id].hasPerformer = true;
  > |            DSData[_addr][_id].performer = _performer;
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(369)

[31mViolation[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |        returns (uint256 rowNumber)
    |    {
  > |        clients[entityAddress] = true;
    |        DStructs[entityAddress].key.push(1);
    |        DStructs[entityAddress].isClient = true;
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(407)

[31mViolation[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |    {
    |        clients[entityAddress] = true;
  > |        DStructs[entityAddress].key.push(1);
    |        DStructs[entityAddress].isClient = true;
    |        uint256 cliLen = countCliDreams(entityAddress);
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(408)

[31mViolation[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |        clients[entityAddress] = true;
    |        DStructs[entityAddress].key.push(1);
  > |        DStructs[entityAddress].isClient = true;
    |        uint256 cliLen = countCliDreams(entityAddress);
    |        uint256 incLen = cliLen + 1;
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |
    |/** contract for deploy */
  > |contract ClientsHandler is ManageableContract, Converter {
    |
    |    function ClientsHandler() public {
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |        returns (bool, address)
    |    {
  > |        pf_manager[_manager] = true;
    |        pf_m_count.push(1);
    |        return (true, _manager);
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |    {
    |        pf_manager[_manager] = true;
  > |        pf_m_count.push(1);
    |        return (true, _manager);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |        returns (bool, address)
    |    {
  > |        performers[_to] = true;
    |        pf_count.push(1);
    |        return (true, _to);
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |    {
    |        performers[_to] = true;
  > |        pf_count.push(1);
    |        return (true, _to);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |        returns (bool, address)
    |    {
  > |        cr_manager[_manager] = true;
    |        cr_count.push(1);
    |        return (true, _manager);
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |    {
    |        cr_manager[_manager] = true;
  > |        cr_count.push(1);
    |        return (true, _manager);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |        returns (bool)
    |    {
  > |        dml  = dream_min_len;
    |        dmxl = dream_max_len;
    |        tml  = target_min_len;
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |    {
    |        dml  = dream_min_len;
  > |        dmxl = dream_max_len;
    |        tml  = target_min_len;
    |        tmxl = target_max_len;
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |        dml  = dream_min_len;
    |        dmxl = dream_max_len;
  > |        tml  = target_min_len;
    |        tmxl = target_max_len;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'ClientsHandler':
    |        dmxl = dream_max_len;
    |        tml  = target_min_len;
  > |        tmxl = target_max_len;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(387)

[33mWarning[0m for LockedEther in contract 'Converter':
    |
    |/** @dev contact types transform */
  > |contract Converter {
    |
    |        function bytes32ToBytes(bytes32 data) internal pure returns (bytes) {
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(145)

[33mWarning[0m for LockedEther in contract 'ManageableContract':
    |
    |/** @dev contract extended Ownable */
  > |contract ManageableContract is Ownable {
    |
    |    mapping (address => bool) internal pf_manager; // SP maganer, Artificial Intelligence AI in the fuature
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'ManageableContract':
    |    }
    |
  > |    function setPFManager(address _manager) public onlyOwner
    |        returns (bool, address)
    |    {
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'ManageableContract':
    |    }
    |
  > |    function setPerformer(address _to) public onlyOwner
    |        returns (bool, address)
    |    {
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'ManageableContract':
    |    }
    |
  > |    function setCRManager(address _manager) public onlyOwner
    |        returns (bool, address)
    |    {
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'ManageableContract':
    |contract Ownable {
    |
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'ManageableContract':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'ManageableContract':
    |
    |    /** get client task length */
  > |    function countPerformers() public view returns (uint256) {
    |        return pf_m_count.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'ManageableContract':
    |
    |    /** get client task length */
  > |    function countPerfManagers() public view returns (uint256) {
    |        return pf_count.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'ManageableContract':
    |
    |    /** get client task length */
  > |    function countCliManagers() public view returns (uint256) {
    |        return cr_count.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'ManageableContract':
    |
    |    /** get client task length */
  > |    function countClients() public view returns (uint256) {
    |        return cli_count.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'ManageableContract':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ManageableContract':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'ManageableContract':
    |        returns (bool, address)
    |    {
  > |        pf_manager[_manager] = true;
    |        pf_m_count.push(1);
    |        return (true, _manager);
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'ManageableContract':
    |    {
    |        pf_manager[_manager] = true;
  > |        pf_m_count.push(1);
    |        return (true, _manager);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'ManageableContract':
    |        returns (bool, address)
    |    {
  > |        performers[_to] = true;
    |        pf_count.push(1);
    |        return (true, _to);
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'ManageableContract':
    |    {
    |        performers[_to] = true;
  > |        pf_count.push(1);
    |        return (true, _to);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'ManageableContract':
    |        returns (bool, address)
    |    {
  > |        cr_manager[_manager] = true;
    |        cr_count.push(1);
    |        return (true, _manager);
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'ManageableContract':
    |    {
    |        cr_manager[_manager] = true;
  > |        cr_count.push(1);
    |        return (true, _manager);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(119)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x181a81338bd9ebf423624b0e9994c658817ebd38.sol(25)


