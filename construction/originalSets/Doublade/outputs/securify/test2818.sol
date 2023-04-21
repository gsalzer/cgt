Processing contract: /home/jiaming/mavs_srcs/contract@0xb90b203a64e219dabb4e7bc152d16b04419cff43.sol:CatDestiny
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb90b203a64e219dabb4e7bc152d16b04419cff43.sol:Destiny
[33mWarning[0m for MissingInputValidation in contract 'CatDestiny':
    |}
    |
  > |contract CatDestiny is Destiny {
    |    uint8 private constant type_life = 0;
    |    uint8 private constant type_attack = 1;
  at /home/jiaming/mavs_srcs/contract@0xb90b203a64e219dabb4e7bc152d16b04419cff43.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'CatDestiny':
    |    }
    |    
  > |    function readValue(bytes32 dna, uint8 att) internal view returns (Weight w) {
    |        uint8 k = gen(dna, att);
    |        w = matrix[att][k];
  at /home/jiaming/mavs_srcs/contract@0xb90b203a64e219dabb4e7bc152d16b04419cff43.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'CatDestiny':
    |    }
    |    
  > |    function gen(bytes32 dna, uint256 p) private pure returns (uint8) {
    |        return uint8(bytes1((dna << (248 - (p * 5)))) & 0x1f);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb90b203a64e219dabb4e7bc152d16b04419cff43.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'CatDestiny':
    |    }
    |    
  > |    function urandom(bytes32 seed, uint256 nonce) private returns (bytes32) {
    |        return keccak256(uint256(seed) + nonce);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb90b203a64e219dabb4e7bc152d16b04419cff43.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'CatDestiny':
    |    }
    |
  > |    function getLife(bytes32 cat) private returns (int256 life) {
    |        life = readValue(cat, gen_body).life * 4;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb90b203a64e219dabb4e7bc152d16b04419cff43.sol(201)


