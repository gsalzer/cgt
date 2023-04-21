Processing contract: /home/jiaming/mavs_srcs/contract@0xfaca127512d0f05371eebc91ceee771f702c3549.sol:TableDeRapprochement_322
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TableDeRapprochement_322':
    |pragma solidity 		^0.4.21	;							
    |												
  > |		contract	TableDeRapprochement_322		{							
    |												
    |			address	owner	;							
  at /home/jiaming/mavs_srcs/contract@0xfaca127512d0f05371eebc91ceee771f702c3549.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'TableDeRapprochement_322':
    |			uint256	Data_1	=	1000	;					
    |												
  > |			function	setData_1	(	uint256	newData_1	)	public	onlyOwner	{	
    |				Data_1	=	newData_1	;					
    |			}									
  at /home/jiaming/mavs_srcs/contract@0xfaca127512d0f05371eebc91ceee771f702c3549.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'TableDeRapprochement_322':
    |			}									
    |												
  > |			function	getData_1	()	public	constant	returns	(	uint256	)	{
    |				return	Data_1	;						
    |			}									
  at /home/jiaming/mavs_srcs/contract@0xfaca127512d0f05371eebc91ceee771f702c3549.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'TableDeRapprochement_322':
    |												
    |			function	setData_1	(	uint256	newData_1	)	public	onlyOwner	{	
  > |				Data_1	=	newData_1	;					
    |			}									
    |												
  at /home/jiaming/mavs_srcs/contract@0xfaca127512d0f05371eebc91ceee771f702c3549.sol(24)


