Processing contract: /home/jiaming/mavs_srcs/contract@0xdfa6f963b1a51af7aae66d8c66bb8952ba0db137.sol:Etats_financiers_10111011
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Etats_financiers_10111011':
    |pragma solidity 		^0.4.21	;							
    |												
  > |		contract	Etats_financiers_10111011		{							
    |												
    |			address	owner	;							
  at /home/jiaming/mavs_srcs/contract@0xdfa6f963b1a51af7aae66d8c66bb8952ba0db137.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Etats_financiers_10111011':
    |			uint256	Data_1	=	1000	;					
    |												
  > |			function	setData_1	(	uint256	newData_1	)	public	onlyOwner	{	
    |				Data_1	=	newData_1	;					
    |			}									
  at /home/jiaming/mavs_srcs/contract@0xdfa6f963b1a51af7aae66d8c66bb8952ba0db137.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Etats_financiers_10111011':
    |			}									
    |												
  > |			function	getData_1	()	public	constant	returns	(	uint256	)	{
    |				return	Data_1	;						
    |			}									
  at /home/jiaming/mavs_srcs/contract@0xdfa6f963b1a51af7aae66d8c66bb8952ba0db137.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'Etats_financiers_10111011':
    |												
    |			function	setData_1	(	uint256	newData_1	)	public	onlyOwner	{	
  > |				Data_1	=	newData_1	;					
    |			}									
    |												
  at /home/jiaming/mavs_srcs/contract@0xdfa6f963b1a51af7aae66d8c66bb8952ba0db137.sol(24)


