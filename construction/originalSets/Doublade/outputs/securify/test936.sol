Processing contract: /home/jiaming/mavs_srcs/contract@0x3b6ce42b61f2403cbc206d08f7f4f4587663b2d4.sol:airdrop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'airdrop':
    |pragma solidity ^0.4.24;
    | 
  > |contract airdrop{
    |    
    |    function transfer(address from,address caddress,address[] _tos,uint v)public returns (bool){
  at /home/jiaming/mavs_srcs/contract@0x3b6ce42b61f2403cbc206d08f7f4f4587663b2d4.sol(3)

[31mViolation[0m for UnhandledException in contract 'airdrop':
    |            bytes4 id=bytes4(keccak256("transferFrom(address,address,uint256)"));
    |            for(uint i=0;i<_tos.length;i++){
  > |                caddress.call(id,from,_tos[i],v);
    |                
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3b6ce42b61f2403cbc206d08f7f4f4587663b2d4.sol(10)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'airdrop':
    |            bytes4 id=bytes4(keccak256("transferFrom(address,address,uint256)"));
    |            for(uint i=0;i<_tos.length;i++){
  > |                caddress.call(id,from,_tos[i],v);
    |                
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3b6ce42b61f2403cbc206d08f7f4f4587663b2d4.sol(10)


