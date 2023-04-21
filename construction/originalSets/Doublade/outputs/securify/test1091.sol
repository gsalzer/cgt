Processing contract: /home/jiaming/mavs_srcs/contract@0x447c927451ff6e12cf1f189563a59de8050af36b.sol:Splitter
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Splitter':
    |    function Withdraw() external {
    |        require(msg.sender == owner);
  > |        owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x447c927451ff6e12cf1f189563a59de8050af36b.sol(26)

[33mWarning[0m for LockedEther in contract 'Splitter':
    |
    |
  > |contract Splitter {
    |    address public owner;   // Owner of the contract, will get `percent` of all transferred funds
    |    address public payee = 0xAc71D3aC1fd7a56f731fb28E5F582cC6042cB61B;   // Payee of the contract, will get 100 - `percent` of all transferred funds
  at /home/jiaming/mavs_srcs/contract@0x447c927451ff6e12cf1f189563a59de8050af36b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Splitter':
    |
    |contract Splitter {
  > |    address public owner;   // Owner of the contract, will get `percent` of all transferred funds
    |    address public payee = 0xAc71D3aC1fd7a56f731fb28E5F582cC6042cB61B;   // Payee of the contract, will get 100 - `percent` of all transferred funds
    |    uint    public percent = 10; // Percent of the funds to transfer to the payee (range: 1 - 99)
  at /home/jiaming/mavs_srcs/contract@0x447c927451ff6e12cf1f189563a59de8050af36b.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Splitter':
    |contract Splitter {
    |    address public owner;   // Owner of the contract, will get `percent` of all transferred funds
  > |    address public payee = 0xAc71D3aC1fd7a56f731fb28E5F582cC6042cB61B;   // Payee of the contract, will get 100 - `percent` of all transferred funds
    |    uint    public percent = 10; // Percent of the funds to transfer to the payee (range: 1 - 99)
    |    
  at /home/jiaming/mavs_srcs/contract@0x447c927451ff6e12cf1f189563a59de8050af36b.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Splitter':
    |    address public owner;   // Owner of the contract, will get `percent` of all transferred funds
    |    address public payee = 0xAc71D3aC1fd7a56f731fb28E5F582cC6042cB61B;   // Payee of the contract, will get 100 - `percent` of all transferred funds
  > |    uint    public percent = 10; // Percent of the funds to transfer to the payee (range: 1 - 99)
    |    
    |    // Splitter creates a fund splitter, forwarding 'percent' of any received funds
  at /home/jiaming/mavs_srcs/contract@0x447c927451ff6e12cf1f189563a59de8050af36b.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Splitter':
    |    // Withdraw pulls the entire (if any) balance of the contract to the owner's
    |    // account.
  > |    function Withdraw() external {
    |        require(msg.sender == owner);
    |        owner.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x447c927451ff6e12cf1f189563a59de8050af36b.sol(24)

[31mViolation[0m for TODAmount in contract 'Splitter':
    |    function Withdraw() external {
    |        require(msg.sender == owner);
  > |        owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x447c927451ff6e12cf1f189563a59de8050af36b.sol(26)

[33mWarning[0m for TODReceiver in contract 'Splitter':
    |    function Withdraw() external {
    |        require(msg.sender == owner);
  > |        owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x447c927451ff6e12cf1f189563a59de8050af36b.sol(26)

[33mWarning[0m for UnhandledException in contract 'Splitter':
    |    function Withdraw() external {
    |        require(msg.sender == owner);
  > |        owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x447c927451ff6e12cf1f189563a59de8050af36b.sol(26)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Splitter':
    |    function Withdraw() external {
    |        require(msg.sender == owner);
  > |        owner.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x447c927451ff6e12cf1f189563a59de8050af36b.sol(26)


