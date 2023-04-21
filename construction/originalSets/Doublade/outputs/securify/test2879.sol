Processing contract: /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol:WavesPresale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'WavesPresale':
  > |contract WavesPresale {
    |    address public owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(1)

[31mViolation[0m for MissingInputValidation in contract 'WavesPresale':
    |    }
    |
  > |    mapping (bytes16 => Sale) public sales;
    |    uint32 public numberOfSales;
    |    uint public totalTokens;
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'WavesPresale':
    |    }
    |
  > |    function changeOwner(address newOwner) {
    |        if (msg.sender != owner) return;
    |
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'WavesPresale':
    |    }
    |
  > |    function newSale(bytes16 txidHash, uint amount, uint timestamp) {
    |        if (msg.sender != owner) return;
    |
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'WavesPresale':
    |    }
    |
  > |    function getSaleDate(bytes16 txidHash) constant returns (uint, uint) {
    |    	return (sales[txidHash].amount, sales[txidHash].date);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'WavesPresale':
    |contract WavesPresale {
  > |    address public owner;
    |    
    |    struct Sale
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'WavesPresale':
    |
    |    mapping (bytes16 => Sale) public sales;
  > |    uint32 public numberOfSales;
    |    uint public totalTokens;
    |
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'WavesPresale':
    |    mapping (bytes16 => Sale) public sales;
    |    uint32 public numberOfSales;
  > |    uint public totalTokens;
    |
    |    function WavesPresale() {
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(12)

[33mWarning[0m for UnrestrictedWrite in contract 'WavesPresale':
    |        if (msg.sender != owner) return;
    |
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'WavesPresale':
    |        if (msg.sender != owner) return;
    |
  > |        sales[txidHash] = Sale({
    |                amount: amount,
    |                date: timestamp
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'WavesPresale':
    |                date: timestamp
    |            });
  > |        numberOfSales += 1;
    |        totalTokens += amount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'WavesPresale':
    |            });
    |        numberOfSales += 1;
  > |        totalTokens += amount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbd37672116c2f4c14ba5a23921bdc57860e64aa0.sol(33)


