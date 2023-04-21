Processing contract: /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol:BTTPREICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol:BitEther
Processing contract: /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol:owned
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BTTPREICO':
    |  function withdraw( uint amount ) public onlyOwner returns (bool) {
    |    if (amount <= this.balance)
  > |      return owner.send( amount );
    |
    |    return false;
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(72)

[33mWarning[0m for LockedEther in contract 'BTTPREICO':
    |}
    |
  > |contract BTTPREICO is owned {
    |
    |  uint public constant STARTTIME = 1515794400; // 12 JAN 2017 00:00 GMT
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(32)

[33mWarning[0m for TODAmount in contract 'BTTPREICO':
    |  function withdraw( uint amount ) public onlyOwner returns (bool) {
    |    if (amount <= this.balance)
  > |      return owner.send( amount );
    |
    |    return false;
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(72)

[31mViolation[0m for TODReceiver in contract 'BTTPREICO':
    |  function withdraw( uint amount ) public onlyOwner returns (bool) {
    |    if (amount <= this.balance)
  > |      return owner.send( amount );
    |
    |    return false;
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(72)

[31mViolation[0m for UnhandledException in contract 'BTTPREICO':
    |  function withdraw( uint amount ) public onlyOwner returns (bool) {
    |    if (amount <= this.balance)
  > |      return owner.send( amount );
    |
    |    return false;
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(72)

[33mWarning[0m for UnhandledException in contract 'BTTPREICO':
    |      div(mul(div(mul(msg.value, BTTPERETH),1000000000000000000),(bonus()+100)),100);
    |
  > |    if (qty > tokenSC.balanceOf(address(this)) || qty < 1)
    |      revert();
    |
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(56)

[33mWarning[0m for UnhandledException in contract 'BTTPREICO':
    |      revert();
    |
  > |    tokenSC.transfer( msg.sender, qty );
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(59)

[33mWarning[0m for UnhandledException in contract 'BTTPREICO':
    |      revert();
    |
  > |    tokenSC.transfer( owner, tokenSC.balanceOf(address(this)) );
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(67)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BTTPREICO':
    |      div(mul(div(mul(msg.value, BTTPERETH),1000000000000000000),(bonus()+100)),100);
    |
  > |    if (qty > tokenSC.balanceOf(address(this)) || qty < 1)
    |      revert();
    |
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(56)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BTTPREICO':
    |      revert();
    |
  > |    tokenSC.transfer( msg.sender, qty );
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(59)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BTTPREICO':
    |      revert();
    |
  > |    tokenSC.transfer( owner, tokenSC.balanceOf(address(this)) );
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(67)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BTTPREICO':
    |  function withdraw( uint amount ) public onlyOwner returns (bool) {
    |    if (amount <= this.balance)
  > |      return owner.send( amount );
    |
    |    return false;
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'BTTPREICO':
    |
    |  function changeOwner( address newowner ) public onlyOwner {
  > |    owner = newowner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'BTTPREICO':
    |  function setToken( address tok ) public onlyOwner {
    |    if ( tokenSC == address(0) )
  > |      tokenSC = BitEther(tok);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(44)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.19;
    |
  > |contract owned {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |  function changeOwner( address newowner ) public onlyOwner {
  > |    owner = newowner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf67dfa4254ef3ce6bb6fef9225eb4c7b044628a3.sol(18)


