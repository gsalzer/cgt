Processing contract: /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol:XRRfrozen
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol:XRRtoken
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(34)

[33mWarning[0m for LockedEther in contract 'XRRfrozen':
    |}
    |
  > |contract XRRfrozen is Ownable {
    |
    |    XRRtoken token;
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'XRRfrozen':
    |    }
    |
  > |    function setToken(XRRtoken _token) public onlyOwner {
    |        token = _token;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'XRRfrozen':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'XRRfrozen':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'XRRfrozen':
    |    }
    |
  > |    Vault[] public vaults;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'XRRfrozen':
    |    }
    |
  > |    function unfrozen() public {
    |        require(notEmpty());
    |        uint8 i = 0;
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'XRRfrozen':
    |    }
    |
  > |    function notEmpty() public view returns (bool){
    |        uint8 i = 0;
    |        while (i++ < vaults.length) {
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'XRRfrozen':
    |    }
    |
  > |    function tokenTosale() public view returns (uint256){
    |        return token.balanceOf(this);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(92)

[33mWarning[0m for UnhandledException in contract 'XRRfrozen':
    |        while (i++ < vaults.length) {
    |            if (now > vaults[i].unfrozen && vaults[i].amount > 0) {
  > |                token.transfer(vaults[i].wallet, vaults[i].amount);
    |                vaults[i].amount = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(76)

[33mWarning[0m for UnhandledException in contract 'XRRfrozen':
    |
    |    function tokenTosale() public view returns (uint256){
  > |        return token.balanceOf(this);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XRRfrozen':
    |        while (i++ < vaults.length) {
    |            if (now > vaults[i].unfrozen && vaults[i].amount > 0) {
  > |                token.transfer(vaults[i].wallet, vaults[i].amount);
    |                vaults[i].amount = 0;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(76)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'XRRfrozen':
    |
    |    function tokenTosale() public view returns (uint256){
  > |        return token.balanceOf(this);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'XRRfrozen':
    |            if (now > vaults[i].unfrozen && vaults[i].amount > 0) {
    |                token.transfer(vaults[i].wallet, vaults[i].amount);
  > |                vaults[i].amount = 0;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'XRRfrozen':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'XRRfrozen':
    |
    |    function setToken(XRRtoken _token) public onlyOwner {
  > |        token = _token;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc684bf3b56ca914b7b0670845092420a661963f7.sol(68)


