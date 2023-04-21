Processing contract: /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol:CCH_FGRE_1
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol:IERC20Token
[33mWarning[0m for LockedEther in contract 'CCH_FGRE_1':
    |	}										
    |											
  > |	contract	CCH_FGRE_1		{							
    |											
    |		address	owner	;							
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		uint256	ID	=	190191	;					
    |											
  > |		function	setID	(	uint256	newID	)	public	onlyOwner	{	
    |			ID	=	newID	;					
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		uint256	ID_control	=	1000	;					
    |											
  > |		function	setID_control	(	uint256	newID_control	)	public	onlyOwner	{	
    |			ID_control	=	newID_control	;					
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		uint256	Cmd	=	1000	;					
    |											
  > |		function	setCmd	(	uint256	newCmd	)	public	onlyOwner	{	
    |			Cmd	=	newCmd	;					
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		uint256	Cmd_control	=	1000	;					
    |											
  > |		function	setCmd_control	(	uint256	newCmd_control	)	public	onlyOwner	{	
    |			Cmd_control	=	newCmd_control	;					
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		uint256	Depositary_function	=	1000	;					
    |											
  > |		function	setDepositary_function	(	uint256	newDepositary_function	)	public	onlyOwner	{	
    |			Depositary_function	=	newDepositary_function	;					
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		uint256	Depositary_function_control	=	1000	;					
    |											
  > |		function	setDepositary_function_control	(	uint256	newDepositary_function_control	)	public	onlyOwner	{	
    |			Depositary_function_control	=	newDepositary_function_control	;					
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		uint256	public	Standard_5		;//	_Standard_5				;
    |											
  > |		function	Eligibility_Group_1				(				
    |			address	_User_1		,					
    |			IERC20Token	_Securities_1		,					
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	Eligibility_Group_2				(				
    |			address	_User_2		,					
    |			IERC20Token	_Securities_2		,					
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	Eligibility_Group_3				(				
    |			address	_User_3		,					
    |			IERC20Token	_Securities_3		,					
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	Eligibility_Group_4				(				
    |			address	_User_4		,					
    |			IERC20Token	_Securities_4		,					
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	Eligibility_Group_5				(				
    |			address	_User_5		,					
    |			IERC20Token	_Securities_5		,					
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	getID	()	public	constant	returns	(	uint256	)	{
    |			return	ID	;						
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	getID_control	()	public	constant	returns	(	uint256	)	{
    |			return	ID_control	;						
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	getCmd	()	public	constant	returns	(	uint256	)	{
    |			return	Cmd	;						
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	getCmd_control	()	public	constant	returns	(	uint256	)	{
    |			return	Cmd_control	;						
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	getDepositary_function	()	public	constant	returns	(	uint256	)	{
    |			return	Depositary_function	;						
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	getDepositary_function_control	()	public	constant	returns	(	uint256	)	{
    |			return	Depositary_function_control	;						
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |											
    |											
  > |		address	public	User_1		=	msg.sender				;
    |		address	public	User_2		;//	_User_2				;
    |		address	public	User_3		;//	_User_3				;
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |											
    |		address	public	User_1		=	msg.sender				;
  > |		address	public	User_2		;//	_User_2				;
    |		address	public	User_3		;//	_User_3				;
    |		address	public	User_4		;//	_User_4				;
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		address	public	User_1		=	msg.sender				;
    |		address	public	User_2		;//	_User_2				;
  > |		address	public	User_3		;//	_User_3				;
    |		address	public	User_4		;//	_User_4				;
    |		address	public	User_5		;//	_User_5				;
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		address	public	User_2		;//	_User_2				;
    |		address	public	User_3		;//	_User_3				;
  > |		address	public	User_4		;//	_User_4				;
    |		address	public	User_5		;//	_User_5				;
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		address	public	User_3		;//	_User_3				;
    |		address	public	User_4		;//	_User_4				;
  > |		address	public	User_5		;//	_User_5				;
    |											
    |		IERC20Token	public	Securities_1		;//	_Securities_1				;
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		address	public	User_5		;//	_User_5				;
    |											
  > |		IERC20Token	public	Securities_1		;//	_Securities_1				;
    |		IERC20Token	public	Securities_2		;//	_Securities_2				;
    |		IERC20Token	public	Securities_3		;//	_Securities_3				;
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |											
    |		IERC20Token	public	Securities_1		;//	_Securities_1				;
  > |		IERC20Token	public	Securities_2		;//	_Securities_2				;
    |		IERC20Token	public	Securities_3		;//	_Securities_3				;
    |		IERC20Token	public	Securities_4		;//	_Securities_4				;
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		IERC20Token	public	Securities_1		;//	_Securities_1				;
    |		IERC20Token	public	Securities_2		;//	_Securities_2				;
  > |		IERC20Token	public	Securities_3		;//	_Securities_3				;
    |		IERC20Token	public	Securities_4		;//	_Securities_4				;
    |		IERC20Token	public	Securities_5		;//	_Securities_5				;
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		IERC20Token	public	Securities_2		;//	_Securities_2				;
    |		IERC20Token	public	Securities_3		;//	_Securities_3				;
  > |		IERC20Token	public	Securities_4		;//	_Securities_4				;
    |		IERC20Token	public	Securities_5		;//	_Securities_5				;
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		IERC20Token	public	Securities_3		;//	_Securities_3				;
    |		IERC20Token	public	Securities_4		;//	_Securities_4				;
  > |		IERC20Token	public	Securities_5		;//	_Securities_5				;
    |											
    |		uint256	public	Standard_1		;//	_Standard_1				;
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		IERC20Token	public	Securities_5		;//	_Securities_5				;
    |											
  > |		uint256	public	Standard_1		;//	_Standard_1				;
    |		uint256	public	Standard_2		;//	_Standard_2				;
    |		uint256	public	Standard_3		;//	_Standard_3				;
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |											
    |		uint256	public	Standard_1		;//	_Standard_1				;
  > |		uint256	public	Standard_2		;//	_Standard_2				;
    |		uint256	public	Standard_3		;//	_Standard_3				;
    |		uint256	public	Standard_4		;//	_Standard_4				;
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		uint256	public	Standard_1		;//	_Standard_1				;
    |		uint256	public	Standard_2		;//	_Standard_2				;
  > |		uint256	public	Standard_3		;//	_Standard_3				;
    |		uint256	public	Standard_4		;//	_Standard_4				;
    |		uint256	public	Standard_5		;//	_Standard_5				;
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		uint256	public	Standard_2		;//	_Standard_2				;
    |		uint256	public	Standard_3		;//	_Standard_3				;
  > |		uint256	public	Standard_4		;//	_Standard_4				;
    |		uint256	public	Standard_5		;//	_Standard_5				;
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		uint256	public	Standard_3		;//	_Standard_3				;
    |		uint256	public	Standard_4		;//	_Standard_4				;
  > |		uint256	public	Standard_5		;//	_Standard_5				;
    |											
    |		function	Eligibility_Group_1				(				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		//									
    |											
  > |		function	retrait_1				()	public	{		
    |			require(	msg.sender == User_1			);				
    |			require(	Securities_1.transfer(User_1, Standard_1)			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	retrait_2				()	public	{		
    |			require(	msg.sender == User_2			);				
    |			require(	Securities_2.transfer(User_2, Standard_2)			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	retrait_3				()	public	{		
    |			require(	msg.sender == User_3			);				
    |			require(	Securities_3.transfer(User_3, Standard_3)			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	retrait_4				()	public	{		
    |			require(	msg.sender == User_4			);				
    |			require(	Securities_4.transfer(User_4, Standard_4)			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'CCH_FGRE_1':
    |		}									
    |											
  > |		function	retrait_5				()	public	{		
    |			require(	msg.sender == User_1			);				
    |			require(	Securities_5.transfer(User_5, Standard_5)			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(232)

[33mWarning[0m for UnhandledException in contract 'CCH_FGRE_1':
    |		function	retrait_1				()	public	{		
    |			require(	msg.sender == User_1			);				
  > |			require(	Securities_1.transfer(User_1, Standard_1)			);				
    |			require(	ID == ID_control			);				
    |			require(	Cmd == Cmd_control			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(202)

[33mWarning[0m for UnhandledException in contract 'CCH_FGRE_1':
    |		function	retrait_2				()	public	{		
    |			require(	msg.sender == User_2			);				
  > |			require(	Securities_2.transfer(User_2, Standard_2)			);				
    |			require(	ID == ID_control			);				
    |			require(	Cmd == Cmd_control			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(210)

[33mWarning[0m for UnhandledException in contract 'CCH_FGRE_1':
    |		function	retrait_3				()	public	{		
    |			require(	msg.sender == User_3			);				
  > |			require(	Securities_3.transfer(User_3, Standard_3)			);				
    |			require(	ID == ID_control			);				
    |			require(	Cmd == Cmd_control			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(218)

[33mWarning[0m for UnhandledException in contract 'CCH_FGRE_1':
    |		function	retrait_4				()	public	{		
    |			require(	msg.sender == User_4			);				
  > |			require(	Securities_4.transfer(User_4, Standard_4)			);				
    |			require(	ID == ID_control			);				
    |			require(	Cmd == Cmd_control			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(226)

[33mWarning[0m for UnhandledException in contract 'CCH_FGRE_1':
    |		function	retrait_5				()	public	{		
    |			require(	msg.sender == User_1			);				
  > |			require(	Securities_5.transfer(User_5, Standard_5)			);				
    |			require(	ID == ID_control			);				
    |			require(	Cmd == Cmd_control			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CCH_FGRE_1':
    |		function	retrait_1				()	public	{		
    |			require(	msg.sender == User_1			);				
  > |			require(	Securities_1.transfer(User_1, Standard_1)			);				
    |			require(	ID == ID_control			);				
    |			require(	Cmd == Cmd_control			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CCH_FGRE_1':
    |		function	retrait_2				()	public	{		
    |			require(	msg.sender == User_2			);				
  > |			require(	Securities_2.transfer(User_2, Standard_2)			);				
    |			require(	ID == ID_control			);				
    |			require(	Cmd == Cmd_control			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CCH_FGRE_1':
    |		function	retrait_3				()	public	{		
    |			require(	msg.sender == User_3			);				
  > |			require(	Securities_3.transfer(User_3, Standard_3)			);				
    |			require(	ID == ID_control			);				
    |			require(	Cmd == Cmd_control			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CCH_FGRE_1':
    |		function	retrait_4				()	public	{		
    |			require(	msg.sender == User_4			);				
  > |			require(	Securities_4.transfer(User_4, Standard_4)			);				
    |			require(	ID == ID_control			);				
    |			require(	Cmd == Cmd_control			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CCH_FGRE_1':
    |		function	retrait_5				()	public	{		
    |			require(	msg.sender == User_1			);				
  > |			require(	Securities_5.transfer(User_5, Standard_5)			);				
    |			require(	ID == ID_control			);				
    |			require(	Cmd == Cmd_control			);				
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |											
    |		function	setID	(	uint256	newID	)	public	onlyOwner	{	
  > |			ID	=	newID	;					
    |		}									
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |											
    |		function	setID_control	(	uint256	newID_control	)	public	onlyOwner	{	
  > |			ID_control	=	newID_control	;					
    |		}									
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |											
    |		function	setCmd	(	uint256	newCmd	)	public	onlyOwner	{	
  > |			Cmd	=	newCmd	;					
    |		}									
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |											
    |		function	setCmd_control	(	uint256	newCmd_control	)	public	onlyOwner	{	
  > |			Cmd_control	=	newCmd_control	;					
    |		}									
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |											
    |		function	setDepositary_function	(	uint256	newDepositary_function	)	public	onlyOwner	{	
  > |			Depositary_function	=	newDepositary_function	;					
    |		}									
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |											
    |		function	setDepositary_function_control	(	uint256	newDepositary_function_control	)	public	onlyOwner	{	
  > |			Depositary_function_control	=	newDepositary_function_control	;					
    |		}									
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |			public	onlyOwner							
    |		{									
  > |			User_1		=	_User_1		;			
    |			Securities_1		=	_Securities_1		;			
    |			Standard_1		=	_Standard_1		;			
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |		{									
    |			User_1		=	_User_1		;			
  > |			Securities_1		=	_Securities_1		;			
    |			Standard_1		=	_Standard_1		;			
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |			User_1		=	_User_1		;			
    |			Securities_1		=	_Securities_1		;			
  > |			Standard_1		=	_Standard_1		;			
    |		}									
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |			public	onlyOwner							
    |		{									
  > |			User_2		=	_User_2		;			
    |			Securities_2		=	_Securities_2		;			
    |			Standard_2		=	_Standard_2		;			
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |		{									
    |			User_2		=	_User_2		;			
  > |			Securities_2		=	_Securities_2		;			
    |			Standard_2		=	_Standard_2		;			
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |			User_2		=	_User_2		;			
    |			Securities_2		=	_Securities_2		;			
  > |			Standard_2		=	_Standard_2		;			
    |		}									
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |			public	onlyOwner							
    |		{									
  > |			User_3		=	_User_3		;			
    |			Securities_3		=	_Securities_3		;			
    |			Standard_3		=	_Standard_3		;			
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |		{									
    |			User_3		=	_User_3		;			
  > |			Securities_3		=	_Securities_3		;			
    |			Standard_3		=	_Standard_3		;			
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |			User_3		=	_User_3		;			
    |			Securities_3		=	_Securities_3		;			
  > |			Standard_3		=	_Standard_3		;			
    |		}									
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |			public	onlyOwner							
    |		{									
  > |			User_4		=	_User_4		;			
    |			Securities_4		=	_Securities_4		;			
    |			Standard_4		=	_Standard_4		;			
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |		{									
    |			User_4		=	_User_4		;			
  > |			Securities_4		=	_Securities_4		;			
    |			Standard_4		=	_Standard_4		;			
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |			User_4		=	_User_4		;			
    |			Securities_4		=	_Securities_4		;			
  > |			Standard_4		=	_Standard_4		;			
    |		}									
    |											
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |			public	onlyOwner							
    |		{									
  > |			User_5		=	_User_5		;			
    |			Securities_5		=	_Securities_5		;			
    |			Standard_5		=	_Standard_5		;			
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |		{									
    |			User_5		=	_User_5		;			
  > |			Securities_5		=	_Securities_5		;			
    |			Standard_5		=	_Standard_5		;			
    |		}									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'CCH_FGRE_1':
    |			User_5		=	_User_5		;			
    |			Securities_5		=	_Securities_5		;			
  > |			Standard_5		=	_Standard_5		;			
    |		}									
    |		//									
  at /home/jiaming/mavs_srcs/contract@0x025bf56e0f316a49fa040bc05922857f417fcb34.sol(195)


