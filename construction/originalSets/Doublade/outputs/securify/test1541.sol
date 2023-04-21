Processing contract: /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol:DAO
Processing contract: /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol:WithdrawDAO
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'WithdrawDAO':
    |        uint balance = mainDAO.balanceOf(msg.sender);
    |
  > |        if (!mainDAO.transferFrom(msg.sender, this, balance) || !msg.sender.send(balance))
    |            throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(18)

[33mWarning[0m for DAOConstantGas in contract 'WithdrawDAO':
    |    function clawback() external {
    |        if (msg.sender != trustee) throw;
  > |        if (!trustee.send(this.balance)) throw;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(27)

[33mWarning[0m for LockedEther in contract 'WithdrawDAO':
    |}
    |
  > |contract WithdrawDAO {
    |    DAO constant public mainDAO = DAO(0x5c40ef6f527f4fba68368774e6130ce6515123f2);
    |    address constant public trustee = 0xda4a4626d3e16e094de3225a751aab7128e96526;
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'WithdrawDAO':
    |
    |contract WithdrawDAO {
  > |    DAO constant public mainDAO = DAO(0x5c40ef6f527f4fba68368774e6130ce6515123f2);
    |    address constant public trustee = 0xda4a4626d3e16e094de3225a751aab7128e96526;
    |
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'WithdrawDAO':
    |contract WithdrawDAO {
    |    DAO constant public mainDAO = DAO(0x5c40ef6f527f4fba68368774e6130ce6515123f2);
  > |    address constant public trustee = 0xda4a4626d3e16e094de3225a751aab7128e96526;
    |
    |    function withdraw(){
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'WithdrawDAO':
    |    address constant public trustee = 0xda4a4626d3e16e094de3225a751aab7128e96526;
    |
  > |    function withdraw(){
    |        uint balance = mainDAO.balanceOf(msg.sender);
    |
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'WithdrawDAO':
    |    * Return funds back to the curator.
    |    */
  > |    function clawback() external {
    |        if (msg.sender != trustee) throw;
    |        if (!trustee.send(this.balance)) throw;
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(25)

[31mViolation[0m for TODAmount in contract 'WithdrawDAO':
    |    function clawback() external {
    |        if (msg.sender != trustee) throw;
  > |        if (!trustee.send(this.balance)) throw;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(27)

[33mWarning[0m for TODAmount in contract 'WithdrawDAO':
    |        uint balance = mainDAO.balanceOf(msg.sender);
    |
  > |        if (!mainDAO.transferFrom(msg.sender, this, balance) || !msg.sender.send(balance))
    |            throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(18)

[33mWarning[0m for TODReceiver in contract 'WithdrawDAO':
    |        uint balance = mainDAO.balanceOf(msg.sender);
    |
  > |        if (!mainDAO.transferFrom(msg.sender, this, balance) || !msg.sender.send(balance))
    |            throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(18)

[33mWarning[0m for TODReceiver in contract 'WithdrawDAO':
    |    function clawback() external {
    |        if (msg.sender != trustee) throw;
  > |        if (!trustee.send(this.balance)) throw;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(27)

[33mWarning[0m for UnhandledException in contract 'WithdrawDAO':
    |
    |    function withdraw(){
  > |        uint balance = mainDAO.balanceOf(msg.sender);
    |
    |        if (!mainDAO.transferFrom(msg.sender, this, balance) || !msg.sender.send(balance))
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(16)

[33mWarning[0m for UnhandledException in contract 'WithdrawDAO':
    |        uint balance = mainDAO.balanceOf(msg.sender);
    |
  > |        if (!mainDAO.transferFrom(msg.sender, this, balance) || !msg.sender.send(balance))
    |            throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(18)

[33mWarning[0m for UnhandledException in contract 'WithdrawDAO':
    |    function clawback() external {
    |        if (msg.sender != trustee) throw;
  > |        if (!trustee.send(this.balance)) throw;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(27)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'WithdrawDAO':
    |        uint balance = mainDAO.balanceOf(msg.sender);
    |
  > |        if (!mainDAO.transferFrom(msg.sender, this, balance) || !msg.sender.send(balance))
    |            throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(18)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WithdrawDAO':
    |
    |    function withdraw(){
  > |        uint balance = mainDAO.balanceOf(msg.sender);
    |
    |        if (!mainDAO.transferFrom(msg.sender, this, balance) || !msg.sender.send(balance))
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(16)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WithdrawDAO':
    |        uint balance = mainDAO.balanceOf(msg.sender);
    |
  > |        if (!mainDAO.transferFrom(msg.sender, this, balance) || !msg.sender.send(balance))
    |            throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(18)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WithdrawDAO':
    |    function clawback() external {
    |        if (msg.sender != trustee) throw;
  > |        if (!trustee.send(this.balance)) throw;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x61fee05232a1f0e943eb689f387a1e15e518ca4c.sol(27)


