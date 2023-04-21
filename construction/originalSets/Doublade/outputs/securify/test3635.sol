Processing contract: /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol:BinksBucks
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol:BinksBucksToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol:Giveaway
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BinksBucks':
    |}
    |
  > |contract BinksBucks is BinksBucksToken, Giveaway {
    |    /*
    |    The Binks Bucks contract.
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        require(hasAtLeast(msg.sender, amount));
    |        _balances[msg.sender] -= amount;
  > |        _balances[to] += amount;
    |        Transfer(msg.sender, to, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        require(hasAtLeast(from, amount));
    |        _allowed[from][msg.sender] -= amount;
  > |        _balances[from] -= amount;
    |        _balances[to] += amount;
    |        Transfer(from, to, amount);
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        _allowed[from][msg.sender] -= amount;
    |        _balances[from] -= amount;
  > |        _balances[to] += amount;
    |        Transfer(from, to, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        if (code == _code) {
    |            _last_distribution[msg.sender] = _distribution_number;
  > |            _distributions_left -= 1;
    |            require(canRecieve(msg.sender, _distribution_size));
    |            require(hasAtLeast(this, _distribution_size));
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'BinksBucks':
    |            require(canRecieve(msg.sender, _distribution_size));
    |            require(hasAtLeast(this, _distribution_size));
  > |            _balances[this] -= _distribution_size;
    |            _balances[msg.sender] += _distribution_size;
    |            Transfer(this, msg.sender, _distribution_size);
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        require(canRecieve(to, amount));
    |        require(hasAtLeast(msg.sender, amount));
  > |        _balances[msg.sender] -= amount;
    |        _balances[to] += amount;
    |        Transfer(msg.sender, to, amount);
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        overwrites the current allowance with _value
    |        **/
  > |        _allowed[msg.sender][spender] = amount;
    |        Approval(msg.sender, spender, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        require(canRecieve(to, amount));
    |        require(hasAtLeast(from, amount));
  > |        _allowed[from][msg.sender] -= amount;
    |        _balances[from] -= amount;
    |        _balances[to] += amount;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        require(CodeEligible());
    |        if (code == _code) {
  > |            _last_distribution[msg.sender] = _distribution_number;
    |            _distributions_left -= 1;
    |            require(canRecieve(msg.sender, _distribution_size));
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |            require(hasAtLeast(this, _distribution_size));
    |            _balances[this] -= _distribution_size;
  > |            _balances[msg.sender] += _distribution_size;
    |            Transfer(this, msg.sender, _distribution_size);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |    function transferAdmin(address newImperator) public {
    |            require(msg.sender == imperator);
  > |            imperator = newImperator;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |    function transferGiveaway(address newaddress) public {
    |        require(msg.sender == imperator || msg.sender == giveaway_master);
  > |        giveaway_master = newaddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        **/
    |        require(msg.sender == imperator || msg.sender == giveaway_master);
  > |        _code = code;
    |        _max_distributions = max_distributions;
    |        _distributions_left = max_distributions;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        require(msg.sender == imperator || msg.sender == giveaway_master);
    |        _code = code;
  > |        _max_distributions = max_distributions;
    |        _distributions_left = max_distributions;
    |        _distribution_number += 1;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        _code = code;
    |        _max_distributions = max_distributions;
  > |        _distributions_left = max_distributions;
    |        _distribution_number += 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        _max_distributions = max_distributions;
    |        _distributions_left = max_distributions;
  > |        _distribution_number += 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        **/
    |        require(msg.sender == imperator || msg.sender == giveaway_master);
  > |        _code = 0;
    |        _distribution_size = num;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucks':
    |        require(msg.sender == imperator || msg.sender == giveaway_master);
    |        _code = 0;
  > |        _distribution_size = num;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(153)

[33mWarning[0m for LockedEther in contract 'BinksBucksToken':
    |pragma solidity ^0.4.18;
    |
  > |contract BinksBucksToken {
    |    /*
    |    This class implements the ERC20 Functionality for Binks Bucks
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'BinksBucksToken':
    |        require(hasAtLeast(msg.sender, amount));
    |        _balances[msg.sender] -= amount;
  > |        _balances[to] += amount;
    |        Transfer(msg.sender, to, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'BinksBucksToken':
    |        require(hasAtLeast(from, amount));
    |        _allowed[from][msg.sender] -= amount;
  > |        _balances[from] -= amount;
    |        _balances[to] += amount;
    |        Transfer(from, to, amount);
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'BinksBucksToken':
    |        _allowed[from][msg.sender] -= amount;
    |        _balances[from] -= amount;
  > |        _balances[to] += amount;
    |        Transfer(from, to, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucksToken':
    |        require(canRecieve(to, amount));
    |        require(hasAtLeast(msg.sender, amount));
  > |        _balances[msg.sender] -= amount;
    |        _balances[to] += amount;
    |        Transfer(msg.sender, to, amount);
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucksToken':
    |        overwrites the current allowance with _value
    |        **/
  > |        _allowed[msg.sender][spender] = amount;
    |        Approval(msg.sender, spender, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'BinksBucksToken':
    |        require(canRecieve(to, amount));
    |        require(hasAtLeast(from, amount));
  > |        _allowed[from][msg.sender] -= amount;
    |        _balances[from] -= amount;
    |        _balances[to] += amount;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(97)

[33mWarning[0m for LockedEther in contract 'Giveaway':
    |}
    |
  > |contract Giveaway is BinksBucksToken {
    |    /*
    |    This class implements giveaway code functionality.
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'Giveaway':
    |        require(hasAtLeast(msg.sender, amount));
    |        _balances[msg.sender] -= amount;
  > |        _balances[to] += amount;
    |        Transfer(msg.sender, to, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'Giveaway':
    |        require(hasAtLeast(from, amount));
    |        _allowed[from][msg.sender] -= amount;
  > |        _balances[from] -= amount;
    |        _balances[to] += amount;
    |        Transfer(from, to, amount);
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'Giveaway':
    |        _allowed[from][msg.sender] -= amount;
    |        _balances[from] -= amount;
  > |        _balances[to] += amount;
    |        Transfer(from, to, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'Giveaway':
    |        if (code == _code) {
    |            _last_distribution[msg.sender] = _distribution_number;
  > |            _distributions_left -= 1;
    |            require(canRecieve(msg.sender, _distribution_size));
    |            require(hasAtLeast(this, _distribution_size));
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'Giveaway':
    |            require(canRecieve(msg.sender, _distribution_size));
    |            require(hasAtLeast(this, _distribution_size));
  > |            _balances[this] -= _distribution_size;
    |            _balances[msg.sender] += _distribution_size;
    |            Transfer(this, msg.sender, _distribution_size);
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |        require(canRecieve(to, amount));
    |        require(hasAtLeast(msg.sender, amount));
  > |        _balances[msg.sender] -= amount;
    |        _balances[to] += amount;
    |        Transfer(msg.sender, to, amount);
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |        overwrites the current allowance with _value
    |        **/
  > |        _allowed[msg.sender][spender] = amount;
    |        Approval(msg.sender, spender, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |        require(canRecieve(to, amount));
    |        require(hasAtLeast(from, amount));
  > |        _allowed[from][msg.sender] -= amount;
    |        _balances[from] -= amount;
    |        _balances[to] += amount;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |        require(CodeEligible());
    |        if (code == _code) {
  > |            _last_distribution[msg.sender] = _distribution_number;
    |            _distributions_left -= 1;
    |            require(canRecieve(msg.sender, _distribution_size));
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |            require(hasAtLeast(this, _distribution_size));
    |            _balances[this] -= _distribution_size;
  > |            _balances[msg.sender] += _distribution_size;
    |            Transfer(this, msg.sender, _distribution_size);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |    function transferAdmin(address newImperator) public {
    |            require(msg.sender == imperator);
  > |            imperator = newImperator;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |    function transferGiveaway(address newaddress) public {
    |        require(msg.sender == imperator || msg.sender == giveaway_master);
  > |        giveaway_master = newaddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |        **/
    |        require(msg.sender == imperator || msg.sender == giveaway_master);
  > |        _code = code;
    |        _max_distributions = max_distributions;
    |        _distributions_left = max_distributions;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |        require(msg.sender == imperator || msg.sender == giveaway_master);
    |        _code = code;
  > |        _max_distributions = max_distributions;
    |        _distributions_left = max_distributions;
    |        _distribution_number += 1;
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |        _code = code;
    |        _max_distributions = max_distributions;
  > |        _distributions_left = max_distributions;
    |        _distribution_number += 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |        _max_distributions = max_distributions;
    |        _distributions_left = max_distributions;
  > |        _distribution_number += 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |        **/
    |        require(msg.sender == imperator || msg.sender == giveaway_master);
  > |        _code = 0;
    |        _distribution_size = num;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'Giveaway':
    |        require(msg.sender == imperator || msg.sender == giveaway_master);
    |        _code = 0;
  > |        _distribution_size = num;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xede85cd1b56791dca6fe9f589ae1c2961695880b.sol(153)


