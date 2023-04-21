Processing contract: /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol:MyObs
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol:OBS_V1
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MyObs':
    |}
    |
  > |contract MyObs{ 
    |
    |    //Addresses
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'MyObs':
    |        
    |        /* Add and subtract new balances */
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'MyObs':
    |        
    |        /* Add and subtract new balances */
  > |        balances[_from] -= _value;
    |        balances[_to] += _value;
    |        
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'MyObs':
    |        /* Add and subtract new balances */
    |        balances[_from] -= _value;
  > |        balances[_to] += _value;
    |        
    |        /* Notifiy anyone listening that this transfer took place */
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(120)

[33mWarning[0m for LockedEther in contract 'OBS_V1':
    |*/
    |
  > |contract OBS_V1{
    | 
    |	address public owner; //Fabric owner
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'OBS_V1':
    | 
    |	address public owner; //Fabric owner
  > |    mapping(address => address)    public tokens2owners;        // tokens to owners    
    |    mapping(address => address []) public owners2tokens;        // owners to tokens
    |    mapping(address => address)    public tmpAddr2contractAddr; // tmp addr contract to contract
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'OBS_V1':
    |	address public owner; //Fabric owner
    |    mapping(address => address)    public tokens2owners;        // tokens to owners    
  > |    mapping(address => address []) public owners2tokens;        // owners to tokens
    |    mapping(address => address)    public tmpAddr2contractAddr; // tmp addr contract to contract
    |    
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'OBS_V1':
    |    mapping(address => address)    public tokens2owners;        // tokens to owners    
    |    mapping(address => address []) public owners2tokens;        // owners to tokens
  > |    mapping(address => address)    public tmpAddr2contractAddr; // tmp addr contract to contract
    |    
    |    //Event
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'OBS_V1':
    |    
    |    //Create contract
  > |    function createContract (address _owner,
    |                            address _addrTmp, 
    |                            uint256 _supply,
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'OBS_V1':
    |*/
    |
  > |contract OBS_V1{
    | 
    |	address public owner; //Fabric owner
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'OBS_V1':
    |contract OBS_V1{
    | 
  > |	address public owner; //Fabric owner
    |    mapping(address => address)    public tokens2owners;        // tokens to owners    
    |    mapping(address => address []) public owners2tokens;        // owners to tokens
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(9)

[31mViolation[0m for UnrestrictedWrite in contract 'OBS_V1':
    |
    |/*
  > |created by Igor Stulenkov 
    |*/
    |
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'OBS_V1':
    |        //Save info for public
    |        tokens2owners[addrToken]       = _owner;	
  > |		owners2tokens[_owner].push(addrToken);
    |        tmpAddr2contractAddr[_addrTmp] = addrToken;
    |        
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'OBS_V1':
    |        tokens2owners[addrToken]       = _owner;	
    |		owners2tokens[_owner].push(addrToken);
  > |        tmpAddr2contractAddr[_addrTmp] = addrToken;
    |        
    |        //Send event
  at /home/jiaming/mavs_srcs/contract@0x7a8ef7e8c8f16b9d6f39069ce03d752af23b46d6.sol(41)


