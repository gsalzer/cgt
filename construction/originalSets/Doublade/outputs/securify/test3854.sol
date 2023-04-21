Processing contract: /home/jiaming/mavs_srcs/contract@0xfddd9b2093664411ec07fad807a660e3ad9c6ff5.sol:ProofOfExistence
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ProofOfExistence':
  > |contract ProofOfExistence{
    |    string public author1= "Davide Carboni";
    |    string public author2= "Michele Nati";
  at /home/jiaming/mavs_srcs/contract@0xfddd9b2093664411ec07fad807a660e3ad9c6ff5.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'ProofOfExistence':
    |contract ProofOfExistence{
  > |    string public author1= "Davide Carboni";
    |    string public author2= "Michele Nati";
    |    string public title  = "A blockchain token for community engagement";
  at /home/jiaming/mavs_srcs/contract@0xfddd9b2093664411ec07fad807a660e3ad9c6ff5.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'ProofOfExistence':
    |contract ProofOfExistence{
    |    string public author1= "Davide Carboni";
  > |    string public author2= "Michele Nati";
    |    string public title  = "A blockchain token for community engagement";
    |    string public SHA256 = "d9c4208b29ec725280342e5e17baa74920fe142684986ab23f2ae64deced0e4d";
  at /home/jiaming/mavs_srcs/contract@0xfddd9b2093664411ec07fad807a660e3ad9c6ff5.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'ProofOfExistence':
    |    string public author1= "Davide Carboni";
    |    string public author2= "Michele Nati";
  > |    string public title  = "A blockchain token for community engagement";
    |    string public SHA256 = "d9c4208b29ec725280342e5e17baa74920fe142684986ab23f2ae64deced0e4d";
    |    string public manual = "cat file.pdf | shasum -a 256";
  at /home/jiaming/mavs_srcs/contract@0xfddd9b2093664411ec07fad807a660e3ad9c6ff5.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'ProofOfExistence':
    |    string public author2= "Michele Nati";
    |    string public title  = "A blockchain token for community engagement";
  > |    string public SHA256 = "d9c4208b29ec725280342e5e17baa74920fe142684986ab23f2ae64deced0e4d";
    |    string public manual = "cat file.pdf | shasum -a 256";
    |
  at /home/jiaming/mavs_srcs/contract@0xfddd9b2093664411ec07fad807a660e3ad9c6ff5.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'ProofOfExistence':
    |    string public title  = "A blockchain token for community engagement";
    |    string public SHA256 = "d9c4208b29ec725280342e5e17baa74920fe142684986ab23f2ae64deced0e4d";
  > |    string public manual = "cat file.pdf | shasum -a 256";
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xfddd9b2093664411ec07fad807a660e3ad9c6ff5.sol(6)


