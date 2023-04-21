Processing contract: /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol:PoissonData
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'PoissonData':
    |pragma solidity ^0.4.13;
    |
  > |contract PoissonData {
    |    mapping (int => uint) public data;
    |
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'PoissonData':
    |
    |contract PoissonData {
  > |    mapping (int => uint) public data;
    |
    |    bool public isInitialized;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'PoissonData':
    |    }
    |
  > |    function lookup(int blocks) constant returns (uint) {
    |        require(isInitialized);
    |        return data[blocks];
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'PoissonData':
    |    mapping (int => uint) public data;
    |
  > |    bool public isInitialized;
    |    uint public stage;
    |
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'PoissonData':
    |
    |    bool public isInitialized;
  > |    uint public stage;
    |
    |    function PoissonData() {
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'PoissonData':
    |    }
    |
  > |    function initialize() {
    |        require(!isInitialized);
    |
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |
    |        if (stage == 0) {
  > |            data[1] = 5;
    |            data[2] = 80;
    |            data[3] = 235;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |        if (stage == 0) {
    |            data[1] = 5;
  > |            data[2] = 80;
    |            data[3] = 235;
    |            data[4] = 444;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[1] = 5;
    |            data[2] = 80;
  > |            data[3] = 235;
    |            data[4] = 444;
    |            data[5] = 690;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(25)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[2] = 80;
    |            data[3] = 235;
  > |            data[4] = 444;
    |            data[5] = 690;
    |            data[6] = 964;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(26)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[3] = 235;
    |            data[4] = 444;
  > |            data[5] = 690;
    |            data[6] = 964;
    |            data[7] = 1258;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[4] = 444;
    |            data[5] = 690;
  > |            data[6] = 964;
    |            data[7] = 1258;
    |            data[8] = 1569;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[5] = 690;
    |            data[6] = 964;
  > |            data[7] = 1258;
    |            data[8] = 1569;
    |            data[9] = 1894;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(29)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[6] = 964;
    |            data[7] = 1258;
  > |            data[8] = 1569;
    |            data[9] = 1894;
    |            data[10] = 2230;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[7] = 1258;
    |            data[8] = 1569;
  > |            data[9] = 1894;
    |            data[10] = 2230;
    |            data[11] = 2576;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[8] = 1569;
    |            data[9] = 1894;
  > |            data[10] = 2230;
    |            data[11] = 2576;
    |            data[12] = 2931;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[9] = 1894;
    |            data[10] = 2230;
  > |            data[11] = 2576;
    |            data[12] = 2931;
    |            data[13] = 3293;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[10] = 2230;
    |            data[11] = 2576;
  > |            data[12] = 2931;
    |            data[13] = 3293;
    |            data[14] = 3662;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[11] = 2576;
    |            data[12] = 2931;
  > |            data[13] = 3293;
    |            data[14] = 3662;
    |            data[15] = 4037;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[12] = 2931;
    |            data[13] = 3293;
  > |            data[14] = 3662;
    |            data[15] = 4037;
    |            data[16] = 4417;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[13] = 3293;
    |            data[14] = 3662;
  > |            data[15] = 4037;
    |            data[16] = 4417;
    |            data[17] = 4803;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(37)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[14] = 3662;
    |            data[15] = 4037;
  > |            data[16] = 4417;
    |            data[17] = 4803;
    |            data[18] = 5192;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[15] = 4037;
    |            data[16] = 4417;
  > |            data[17] = 4803;
    |            data[18] = 5192;
    |            data[19] = 5586;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[16] = 4417;
    |            data[17] = 4803;
  > |            data[18] = 5192;
    |            data[19] = 5586;
    |            data[20] = 5984;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[17] = 4803;
    |            data[18] = 5192;
  > |            data[19] = 5586;
    |            data[20] = 5984;
    |            data[21] = 6385;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[18] = 5192;
    |            data[19] = 5586;
  > |            data[20] = 5984;
    |            data[21] = 6385;
    |            data[22] = 6789;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[19] = 5586;
    |            data[20] = 5984;
  > |            data[21] = 6385;
    |            data[22] = 6789;
    |            data[23] = 7197;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[20] = 5984;
    |            data[21] = 6385;
  > |            data[22] = 6789;
    |            data[23] = 7197;
    |            data[24] = 7607;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[21] = 6385;
    |            data[22] = 6789;
  > |            data[23] = 7197;
    |            data[24] = 7607;
    |            data[25] = 8020;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[22] = 6789;
    |            data[23] = 7197;
  > |            data[24] = 7607;
    |            data[25] = 8020;
    |            data[26] = 8436;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[23] = 7197;
    |            data[24] = 7607;
  > |            data[25] = 8020;
    |            data[26] = 8436;
    |            data[27] = 8854;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[24] = 7607;
    |            data[25] = 8020;
  > |            data[26] = 8436;
    |            data[27] = 8854;
    |            data[28] = 9274;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[25] = 8020;
    |            data[26] = 8436;
  > |            data[27] = 8854;
    |            data[28] = 9274;
    |            data[29] = 9696;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[26] = 8436;
    |            data[27] = 8854;
  > |            data[28] = 9274;
    |            data[29] = 9696;
    |            data[30] = 10120;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[27] = 8854;
    |            data[28] = 9274;
  > |            data[29] = 9696;
    |            data[30] = 10120;
    |            data[31] = 10547;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[28] = 9274;
    |            data[29] = 9696;
  > |            data[30] = 10120;
    |            data[31] = 10547;
    |            data[32] = 10975;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[29] = 9696;
    |            data[30] = 10120;
  > |            data[31] = 10547;
    |            data[32] = 10975;
    |            data[33] = 11404;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[30] = 10120;
    |            data[31] = 10547;
  > |            data[32] = 10975;
    |            data[33] = 11404;
    |            data[34] = 11836;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[31] = 10547;
    |            data[32] = 10975;
  > |            data[33] = 11404;
    |            data[34] = 11836;
    |            data[35] = 12269;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[32] = 10975;
    |            data[33] = 11404;
  > |            data[34] = 11836;
    |            data[35] = 12269;
    |            data[36] = 12703;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[33] = 11404;
    |            data[34] = 11836;
  > |            data[35] = 12269;
    |            data[36] = 12703;
    |            data[37] = 13139;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[34] = 11836;
    |            data[35] = 12269;
  > |            data[36] = 12703;
    |            data[37] = 13139;
    |            data[38] = 13577;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[35] = 12269;
    |            data[36] = 12703;
  > |            data[37] = 13139;
    |            data[38] = 13577;
    |            data[39] = 14015;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[36] = 12703;
    |            data[37] = 13139;
  > |            data[38] = 13577;
    |            data[39] = 14015;
    |            data[40] = 14455;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[37] = 13139;
    |            data[38] = 13577;
  > |            data[39] = 14015;
    |            data[40] = 14455;
    |            data[41] = 14897;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[38] = 13577;
    |            data[39] = 14015;
  > |            data[40] = 14455;
    |            data[41] = 14897;
    |            data[42] = 15339;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[39] = 14015;
    |            data[40] = 14455;
  > |            data[41] = 14897;
    |            data[42] = 15339;
    |            data[43] = 15783;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[40] = 14455;
    |            data[41] = 14897;
  > |            data[42] = 15339;
    |            data[43] = 15783;
    |            data[44] = 16227;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[41] = 14897;
    |            data[42] = 15339;
  > |            data[43] = 15783;
    |            data[44] = 16227;
    |            data[45] = 16673;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[42] = 15339;
    |            data[43] = 15783;
  > |            data[44] = 16227;
    |            data[45] = 16673;
    |            data[46] = 17120;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[43] = 15783;
    |            data[44] = 16227;
  > |            data[45] = 16673;
    |            data[46] = 17120;
    |            data[47] = 17568;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[44] = 16227;
    |            data[45] = 16673;
  > |            data[46] = 17120;
    |            data[47] = 17568;
    |            data[48] = 18017;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[45] = 16673;
    |            data[46] = 17120;
  > |            data[47] = 17568;
    |            data[48] = 18017;
    |            data[49] = 18466;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[46] = 17120;
    |            data[47] = 17568;
  > |            data[48] = 18017;
    |            data[49] = 18466;
    |            data[50] = 18917;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[47] = 17568;
    |            data[48] = 18017;
  > |            data[49] = 18466;
    |            data[50] = 18917;
    |            data[51] = 19369;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[48] = 18017;
    |            data[49] = 18466;
  > |            data[50] = 18917;
    |            data[51] = 19369;
    |            data[52] = 19821;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[49] = 18466;
    |            data[50] = 18917;
  > |            data[51] = 19369;
    |            data[52] = 19821;
    |            data[53] = 20274;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[50] = 18917;
    |            data[51] = 19369;
  > |            data[52] = 19821;
    |            data[53] = 20274;
    |            data[54] = 20728;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[51] = 19369;
    |            data[52] = 19821;
  > |            data[53] = 20274;
    |            data[54] = 20728;
    |            data[55] = 21183;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[52] = 19821;
    |            data[53] = 20274;
  > |            data[54] = 20728;
    |            data[55] = 21183;
    |            data[56] = 21639;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[53] = 20274;
    |            data[54] = 20728;
  > |            data[55] = 21183;
    |            data[56] = 21639;
    |            data[57] = 22095;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[54] = 20728;
    |            data[55] = 21183;
  > |            data[56] = 21639;
    |            data[57] = 22095;
    |            data[58] = 22552;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[55] = 21183;
    |            data[56] = 21639;
  > |            data[57] = 22095;
    |            data[58] = 22552;
    |            data[59] = 23010;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[56] = 21639;
    |            data[57] = 22095;
  > |            data[58] = 22552;
    |            data[59] = 23010;
    |            data[60] = 23469;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[57] = 22095;
    |            data[58] = 22552;
  > |            data[59] = 23010;
    |            data[60] = 23469;
    |            data[61] = 23928;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[58] = 22552;
    |            data[59] = 23010;
  > |            data[60] = 23469;
    |            data[61] = 23928;
    |            data[62] = 24388;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[59] = 23010;
    |            data[60] = 23469;
  > |            data[61] = 23928;
    |            data[62] = 24388;
    |            data[63] = 24848;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[60] = 23469;
    |            data[61] = 23928;
  > |            data[62] = 24388;
    |            data[63] = 24848;
    |            data[64] = 25310;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[61] = 23928;
    |            data[62] = 24388;
  > |            data[63] = 24848;
    |            data[64] = 25310;
    |            data[65] = 25771;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[62] = 24388;
    |            data[63] = 24848;
  > |            data[64] = 25310;
    |            data[65] = 25771;
    |            data[66] = 26234;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[63] = 24848;
    |            data[64] = 25310;
  > |            data[65] = 25771;
    |            data[66] = 26234;
    |            data[67] = 26697;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[64] = 25310;
    |            data[65] = 25771;
  > |            data[66] = 26234;
    |            data[67] = 26697;
    |            data[68] = 27160;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[65] = 25771;
    |            data[66] = 26234;
  > |            data[67] = 26697;
    |            data[68] = 27160;
    |            data[69] = 27624;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[66] = 26234;
    |            data[67] = 26697;
  > |            data[68] = 27160;
    |            data[69] = 27624;
    |            data[70] = 28089;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[67] = 26697;
    |            data[68] = 27160;
  > |            data[69] = 27624;
    |            data[70] = 28089;
    |            data[71] = 28554;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[68] = 27160;
    |            data[69] = 27624;
  > |            data[70] = 28089;
    |            data[71] = 28554;
    |            data[72] = 29020;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[69] = 27624;
    |            data[70] = 28089;
  > |            data[71] = 28554;
    |            data[72] = 29020;
    |            data[73] = 29486;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[70] = 28089;
    |            data[71] = 28554;
  > |            data[72] = 29020;
    |            data[73] = 29486;
    |            data[74] = 29953;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[71] = 28554;
    |            data[72] = 29020;
  > |            data[73] = 29486;
    |            data[74] = 29953;
    |            data[75] = 30420;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[72] = 29020;
    |            data[73] = 29486;
  > |            data[74] = 29953;
    |            data[75] = 30420;
    |            data[76] = 30887;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[73] = 29486;
    |            data[74] = 29953;
  > |            data[75] = 30420;
    |            data[76] = 30887;
    |            data[77] = 31356;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[74] = 29953;
    |            data[75] = 30420;
  > |            data[76] = 30887;
    |            data[77] = 31356;
    |            data[78] = 31824;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[75] = 30420;
    |            data[76] = 30887;
  > |            data[77] = 31356;
    |            data[78] = 31824;
    |            data[79] = 32293;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[76] = 30887;
    |            data[77] = 31356;
  > |            data[78] = 31824;
    |            data[79] = 32293;
    |            data[80] = 32763;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[77] = 31356;
    |            data[78] = 31824;
  > |            data[79] = 32293;
    |            data[80] = 32763;
    |            data[81] = 33233;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[78] = 31824;
    |            data[79] = 32293;
  > |            data[80] = 32763;
    |            data[81] = 33233;
    |            data[82] = 33703;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[79] = 32293;
    |            data[80] = 32763;
  > |            data[81] = 33233;
    |            data[82] = 33703;
    |            data[83] = 34174;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[80] = 32763;
    |            data[81] = 33233;
  > |            data[82] = 33703;
    |            data[83] = 34174;
    |            data[84] = 34645;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[81] = 33233;
    |            data[82] = 33703;
  > |            data[83] = 34174;
    |            data[84] = 34645;
    |            data[85] = 35117;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[82] = 33703;
    |            data[83] = 34174;
  > |            data[84] = 34645;
    |            data[85] = 35117;
    |            data[86] = 35589;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[83] = 34174;
    |            data[84] = 34645;
  > |            data[85] = 35117;
    |            data[86] = 35589;
    |            data[87] = 36061;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[84] = 34645;
    |            data[85] = 35117;
  > |            data[86] = 35589;
    |            data[87] = 36061;
    |            data[88] = 36534;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[85] = 35117;
    |            data[86] = 35589;
  > |            data[87] = 36061;
    |            data[88] = 36534;
    |            data[89] = 37007;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[86] = 35589;
    |            data[87] = 36061;
  > |            data[88] = 36534;
    |            data[89] = 37007;
    |            data[90] = 37481;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[87] = 36061;
    |            data[88] = 36534;
  > |            data[89] = 37007;
    |            data[90] = 37481;
    |            data[91] = 37955;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[88] = 36534;
    |            data[89] = 37007;
  > |            data[90] = 37481;
    |            data[91] = 37955;
    |            data[92] = 38429;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[89] = 37007;
    |            data[90] = 37481;
  > |            data[91] = 37955;
    |            data[92] = 38429;
    |            data[93] = 38904;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[90] = 37481;
    |            data[91] = 37955;
  > |            data[92] = 38429;
    |            data[93] = 38904;
    |            data[94] = 39379;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[91] = 37955;
    |            data[92] = 38429;
  > |            data[93] = 38904;
    |            data[94] = 39379;
    |            data[95] = 39854;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[92] = 38429;
    |            data[93] = 38904;
  > |            data[94] = 39379;
    |            data[95] = 39854;
    |            data[96] = 40330;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[93] = 38904;
    |            data[94] = 39379;
  > |            data[95] = 39854;
    |            data[96] = 40330;
    |            data[97] = 40806;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[94] = 39379;
    |            data[95] = 39854;
  > |            data[96] = 40330;
    |            data[97] = 40806;
    |            data[98] = 41282;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[95] = 39854;
    |            data[96] = 40330;
  > |            data[97] = 40806;
    |            data[98] = 41282;
    |            data[99] = 41759;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[96] = 40330;
    |            data[97] = 40806;
  > |            data[98] = 41282;
    |            data[99] = 41759;
    |            stage += 1;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[97] = 40806;
    |            data[98] = 41282;
  > |            data[99] = 41759;
    |            stage += 1;
    |        } else if (stage == 1) {
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[98] = 41282;
    |            data[99] = 41759;
  > |            stage += 1;
    |        } else if (stage == 1) {
    |            data[100] = 42236;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            stage += 1;
    |        } else if (stage == 1) {
  > |            data[100] = 42236;
    |            data[101] = 42713;
    |            data[102] = 43191;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |        } else if (stage == 1) {
    |            data[100] = 42236;
  > |            data[101] = 42713;
    |            data[102] = 43191;
    |            data[103] = 43669;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[100] = 42236;
    |            data[101] = 42713;
  > |            data[102] = 43191;
    |            data[103] = 43669;
    |            data[104] = 44147;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[101] = 42713;
    |            data[102] = 43191;
  > |            data[103] = 43669;
    |            data[104] = 44147;
    |            data[105] = 44626;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[102] = 43191;
    |            data[103] = 43669;
  > |            data[104] = 44147;
    |            data[105] = 44626;
    |            data[106] = 45105;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[103] = 43669;
    |            data[104] = 44147;
  > |            data[105] = 44626;
    |            data[106] = 45105;
    |            data[107] = 45584;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[104] = 44147;
    |            data[105] = 44626;
  > |            data[106] = 45105;
    |            data[107] = 45584;
    |            data[108] = 46063;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[105] = 44626;
    |            data[106] = 45105;
  > |            data[107] = 45584;
    |            data[108] = 46063;
    |            data[109] = 46543;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[106] = 45105;
    |            data[107] = 45584;
  > |            data[108] = 46063;
    |            data[109] = 46543;
    |            data[110] = 47023;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[107] = 45584;
    |            data[108] = 46063;
  > |            data[109] = 46543;
    |            data[110] = 47023;
    |            data[111] = 47503;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[108] = 46063;
    |            data[109] = 46543;
  > |            data[110] = 47023;
    |            data[111] = 47503;
    |            data[112] = 47984;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[109] = 46543;
    |            data[110] = 47023;
  > |            data[111] = 47503;
    |            data[112] = 47984;
    |            data[113] = 48464;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[110] = 47023;
    |            data[111] = 47503;
  > |            data[112] = 47984;
    |            data[113] = 48464;
    |            data[114] = 48945;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[111] = 47503;
    |            data[112] = 47984;
  > |            data[113] = 48464;
    |            data[114] = 48945;
    |            data[115] = 49427;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[112] = 47984;
    |            data[113] = 48464;
  > |            data[114] = 48945;
    |            data[115] = 49427;
    |            data[116] = 49908;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[113] = 48464;
    |            data[114] = 48945;
  > |            data[115] = 49427;
    |            data[116] = 49908;
    |            data[117] = 50390;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[114] = 48945;
    |            data[115] = 49427;
  > |            data[116] = 49908;
    |            data[117] = 50390;
    |            data[118] = 50872;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[115] = 49427;
    |            data[116] = 49908;
  > |            data[117] = 50390;
    |            data[118] = 50872;
    |            data[119] = 51354;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[116] = 49908;
    |            data[117] = 50390;
  > |            data[118] = 50872;
    |            data[119] = 51354;
    |            data[120] = 51837;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[117] = 50390;
    |            data[118] = 50872;
  > |            data[119] = 51354;
    |            data[120] = 51837;
    |            data[121] = 52320;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[118] = 50872;
    |            data[119] = 51354;
  > |            data[120] = 51837;
    |            data[121] = 52320;
    |            data[122] = 52803;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[119] = 51354;
    |            data[120] = 51837;
  > |            data[121] = 52320;
    |            data[122] = 52803;
    |            data[123] = 53286;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[120] = 51837;
    |            data[121] = 52320;
  > |            data[122] = 52803;
    |            data[123] = 53286;
    |            data[124] = 53769;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[121] = 52320;
    |            data[122] = 52803;
  > |            data[123] = 53286;
    |            data[124] = 53769;
    |            data[125] = 54253;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[122] = 52803;
    |            data[123] = 53286;
  > |            data[124] = 53769;
    |            data[125] = 54253;
    |            data[126] = 54737;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[123] = 53286;
    |            data[124] = 53769;
  > |            data[125] = 54253;
    |            data[126] = 54737;
    |            data[127] = 55221;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[124] = 53769;
    |            data[125] = 54253;
  > |            data[126] = 54737;
    |            data[127] = 55221;
    |            data[128] = 55705;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[125] = 54253;
    |            data[126] = 54737;
  > |            data[127] = 55221;
    |            data[128] = 55705;
    |            data[129] = 56190;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[126] = 54737;
    |            data[127] = 55221;
  > |            data[128] = 55705;
    |            data[129] = 56190;
    |            data[130] = 56675;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[127] = 55221;
    |            data[128] = 55705;
  > |            data[129] = 56190;
    |            data[130] = 56675;
    |            data[131] = 57160;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[128] = 55705;
    |            data[129] = 56190;
  > |            data[130] = 56675;
    |            data[131] = 57160;
    |            data[132] = 57645;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[129] = 56190;
    |            data[130] = 56675;
  > |            data[131] = 57160;
    |            data[132] = 57645;
    |            data[133] = 58130;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[130] = 56675;
    |            data[131] = 57160;
  > |            data[132] = 57645;
    |            data[133] = 58130;
    |            data[134] = 58616;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[131] = 57160;
    |            data[132] = 57645;
  > |            data[133] = 58130;
    |            data[134] = 58616;
    |            data[135] = 59102;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(157)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[132] = 57645;
    |            data[133] = 58130;
  > |            data[134] = 58616;
    |            data[135] = 59102;
    |            data[136] = 59588;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[133] = 58130;
    |            data[134] = 58616;
  > |            data[135] = 59102;
    |            data[136] = 59588;
    |            data[137] = 60074;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(159)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[134] = 58616;
    |            data[135] = 59102;
  > |            data[136] = 59588;
    |            data[137] = 60074;
    |            data[138] = 60560;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(160)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[135] = 59102;
    |            data[136] = 59588;
  > |            data[137] = 60074;
    |            data[138] = 60560;
    |            data[139] = 61047;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[136] = 59588;
    |            data[137] = 60074;
  > |            data[138] = 60560;
    |            data[139] = 61047;
    |            data[140] = 61534;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(162)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[137] = 60074;
    |            data[138] = 60560;
  > |            data[139] = 61047;
    |            data[140] = 61534;
    |            data[141] = 62021;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(163)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[138] = 60560;
    |            data[139] = 61047;
  > |            data[140] = 61534;
    |            data[141] = 62021;
    |            data[142] = 62508;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[139] = 61047;
    |            data[140] = 61534;
  > |            data[141] = 62021;
    |            data[142] = 62508;
    |            data[143] = 62995;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[140] = 61534;
    |            data[141] = 62021;
  > |            data[142] = 62508;
    |            data[143] = 62995;
    |            data[144] = 63483;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[141] = 62021;
    |            data[142] = 62508;
  > |            data[143] = 62995;
    |            data[144] = 63483;
    |            data[145] = 63971;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[142] = 62508;
    |            data[143] = 62995;
  > |            data[144] = 63483;
    |            data[145] = 63971;
    |            data[146] = 64459;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[143] = 62995;
    |            data[144] = 63483;
  > |            data[145] = 63971;
    |            data[146] = 64459;
    |            data[147] = 64947;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[144] = 63483;
    |            data[145] = 63971;
  > |            data[146] = 64459;
    |            data[147] = 64947;
    |            data[148] = 65435;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[145] = 63971;
    |            data[146] = 64459;
  > |            data[147] = 64947;
    |            data[148] = 65435;
    |            data[149] = 65923;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[146] = 64459;
    |            data[147] = 64947;
  > |            data[148] = 65435;
    |            data[149] = 65923;
    |            data[150] = 66412;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[147] = 64947;
    |            data[148] = 65435;
  > |            data[149] = 65923;
    |            data[150] = 66412;
    |            data[151] = 66901;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(173)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[148] = 65435;
    |            data[149] = 65923;
  > |            data[150] = 66412;
    |            data[151] = 66901;
    |            data[152] = 67390;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(174)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[149] = 65923;
    |            data[150] = 66412;
  > |            data[151] = 66901;
    |            data[152] = 67390;
    |            data[153] = 67879;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[150] = 66412;
    |            data[151] = 66901;
  > |            data[152] = 67390;
    |            data[153] = 67879;
    |            data[154] = 68368;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[151] = 66901;
    |            data[152] = 67390;
  > |            data[153] = 67879;
    |            data[154] = 68368;
    |            data[155] = 68858;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[152] = 67390;
    |            data[153] = 67879;
  > |            data[154] = 68368;
    |            data[155] = 68858;
    |            data[156] = 69347;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(178)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[153] = 67879;
    |            data[154] = 68368;
  > |            data[155] = 68858;
    |            data[156] = 69347;
    |            data[157] = 69837;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[154] = 68368;
    |            data[155] = 68858;
  > |            data[156] = 69347;
    |            data[157] = 69837;
    |            data[158] = 70327;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[155] = 68858;
    |            data[156] = 69347;
  > |            data[157] = 69837;
    |            data[158] = 70327;
    |            data[159] = 70817;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[156] = 69347;
    |            data[157] = 69837;
  > |            data[158] = 70327;
    |            data[159] = 70817;
    |            data[160] = 71307;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(182)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[157] = 69837;
    |            data[158] = 70327;
  > |            data[159] = 70817;
    |            data[160] = 71307;
    |            data[161] = 71798;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(183)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[158] = 70327;
    |            data[159] = 70817;
  > |            data[160] = 71307;
    |            data[161] = 71798;
    |            data[162] = 72288;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[159] = 70817;
    |            data[160] = 71307;
  > |            data[161] = 71798;
    |            data[162] = 72288;
    |            data[163] = 72779;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[160] = 71307;
    |            data[161] = 71798;
  > |            data[162] = 72288;
    |            data[163] = 72779;
    |            data[164] = 73270;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(186)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[161] = 71798;
    |            data[162] = 72288;
  > |            data[163] = 72779;
    |            data[164] = 73270;
    |            data[165] = 73761;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(187)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[162] = 72288;
    |            data[163] = 72779;
  > |            data[164] = 73270;
    |            data[165] = 73761;
    |            data[166] = 74252;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[163] = 72779;
    |            data[164] = 73270;
  > |            data[165] = 73761;
    |            data[166] = 74252;
    |            data[167] = 74743;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[164] = 73270;
    |            data[165] = 73761;
  > |            data[166] = 74252;
    |            data[167] = 74743;
    |            data[168] = 75235;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(190)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[165] = 73761;
    |            data[166] = 74252;
  > |            data[167] = 74743;
    |            data[168] = 75235;
    |            data[169] = 75726;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(191)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[166] = 74252;
    |            data[167] = 74743;
  > |            data[168] = 75235;
    |            data[169] = 75726;
    |            data[170] = 76218;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(192)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[167] = 74743;
    |            data[168] = 75235;
  > |            data[169] = 75726;
    |            data[170] = 76218;
    |            data[171] = 76710;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(193)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[168] = 75235;
    |            data[169] = 75726;
  > |            data[170] = 76218;
    |            data[171] = 76710;
    |            data[172] = 77202;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[169] = 75726;
    |            data[170] = 76218;
  > |            data[171] = 76710;
    |            data[172] = 77202;
    |            data[173] = 77694;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(195)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[170] = 76218;
    |            data[171] = 76710;
  > |            data[172] = 77202;
    |            data[173] = 77694;
    |            data[174] = 78187;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[171] = 76710;
    |            data[172] = 77202;
  > |            data[173] = 77694;
    |            data[174] = 78187;
    |            data[175] = 78679;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[172] = 77202;
    |            data[173] = 77694;
  > |            data[174] = 78187;
    |            data[175] = 78679;
    |            data[176] = 79172;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[173] = 77694;
    |            data[174] = 78187;
  > |            data[175] = 78679;
    |            data[176] = 79172;
    |            data[177] = 79664;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(199)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[174] = 78187;
    |            data[175] = 78679;
  > |            data[176] = 79172;
    |            data[177] = 79664;
    |            data[178] = 80157;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[175] = 78679;
    |            data[176] = 79172;
  > |            data[177] = 79664;
    |            data[178] = 80157;
    |            data[179] = 80650;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[176] = 79172;
    |            data[177] = 79664;
  > |            data[178] = 80157;
    |            data[179] = 80650;
    |            data[180] = 81143;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[177] = 79664;
    |            data[178] = 80157;
  > |            data[179] = 80650;
    |            data[180] = 81143;
    |            isInitialized = true;
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(203)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[178] = 80157;
    |            data[179] = 80650;
  > |            data[180] = 81143;
    |            isInitialized = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(204)

[31mViolation[0m for UnrestrictedWrite in contract 'PoissonData':
    |            data[179] = 80650;
    |            data[180] = 81143;
  > |            isInitialized = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaf34a44ebf712ab571730bd0768dcb93572e246e.sol(205)


