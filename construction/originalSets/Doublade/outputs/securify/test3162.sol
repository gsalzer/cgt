Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol:Contract1
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol:Contract2
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Contract1':
    |
    |
  > |contract Contract1 {
    |
    |	mapping (uint8 => mapping (address => bool)) public something;
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'Contract1':
    |contract Contract1 {
    |
  > |	mapping (uint8 => mapping (address => bool)) public something;
    |
    |	function settrue(uint8 x, address a){
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Contract1':
    |	mapping (uint8 => mapping (address => bool)) public something;
    |
  > |	function settrue(uint8 x, address a){
    |		something[x][a] = true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'Contract1':
    |		something[x][a] = true;
    |	}
  > |	function setfalse(uint8 x, address a){
    |		something[x][a] = false;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(11)

[31mViolation[0m for UnrestrictedWrite in contract 'Contract1':
    |
    |	function settrue(uint8 x, address a){
  > |		something[x][a] = true;
    |	}
    |	function setfalse(uint8 x, address a){
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(9)

[31mViolation[0m for UnrestrictedWrite in contract 'Contract1':
    |	}
    |	function setfalse(uint8 x, address a){
  > |		something[x][a] = false;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(12)

[33mWarning[0m for LockedEther in contract 'Contract2':
    |
    |
  > |contract Contract2 {
    |
    |    Contract1 public original;
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'Contract2':
    |    Contract1 public original;
    |  
  > |  	mapping (uint16 => mapping (address => uint8)) public something;
    |
    |    // コンストラクタ
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'Contract2':
    |
    |
  > |	function test(uint8 x, address a){
    |		if(original.something(uint8(x),a))
    |			something[x][a] = 1;
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Contract2':
    |contract Contract2 {
    |
  > |    Contract1 public original;
    |  
    |  	mapping (uint16 => mapping (address => uint8)) public something;
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(20)

[33mWarning[0m for UnhandledException in contract 'Contract2':
    |
    |	function test(uint8 x, address a){
  > |		if(original.something(uint8(x),a))
    |			something[x][a] = 1;
    |		else
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(31)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Contract2':
    |
    |	function test(uint8 x, address a){
  > |		if(original.something(uint8(x),a))
    |			something[x][a] = 1;
    |		else
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'Contract2':
    |	function test(uint8 x, address a){
    |		if(original.something(uint8(x),a))
  > |			something[x][a] = 1;
    |		else
    |			something[x][a] = 2;
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'Contract2':
    |			something[x][a] = 1;
    |		else
  > |			something[x][a] = 2;
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xcf8cd1bfd4d21c11c571d20d62a9c859ac5e3156.sol(34)


