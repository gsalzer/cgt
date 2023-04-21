Processing contract: /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol:EthColor
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol:EthColorAccount
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EthColor':
    |
    |        accounts[msg.sender].balance = accounts[msg.sender].balance.sub(amount);
  > |        msg.sender.transfer(amount);
    |        Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(69)

[33mWarning[0m for DAOConstantGas in contract 'EthColor':
    |        // Check for after the end time: 2018/12/31 23:59:59 UTC
    |        require(now >= 1546300799);
  > |        wallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(189)

[33mWarning[0m for LockedEther in contract 'EthColor':
    |}
    |
  > |contract EthColor is Ownable, EthColorAccount {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(79)

[31mViolation[0m for TODAmount in contract 'EthColor':
    |        // Check for after the end time: 2018/12/31 23:59:59 UTC
    |        require(now >= 1546300799);
  > |        wallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(189)

[33mWarning[0m for TODAmount in contract 'EthColor':
    |
    |        accounts[msg.sender].balance = accounts[msg.sender].balance.sub(amount);
  > |        msg.sender.transfer(amount);
    |        Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(69)

[33mWarning[0m for TODReceiver in contract 'EthColor':
    |
    |        accounts[msg.sender].balance = accounts[msg.sender].balance.sub(amount);
  > |        msg.sender.transfer(amount);
    |        Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(69)

[33mWarning[0m for UnhandledException in contract 'EthColor':
    |
    |        accounts[msg.sender].balance = accounts[msg.sender].balance.sub(amount);
  > |        msg.sender.transfer(amount);
    |        Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(69)

[33mWarning[0m for UnhandledException in contract 'EthColor':
    |        // Check for after the end time: 2018/12/31 23:59:59 UTC
    |        require(now >= 1546300799);
  > |        wallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthColor':
    |
    |        accounts[msg.sender].balance = accounts[msg.sender].balance.sub(amount);
  > |        msg.sender.transfer(amount);
    |        Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthColor':
    |        // Check for after the end time: 2018/12/31 23:59:59 UTC
    |        require(now >= 1546300799);
  > |        wallet.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'EthColor':
    |        assert(accounts[msg.sender].balance >= amount);
    |
  > |        accounts[msg.sender].balance = accounts[msg.sender].balance.sub(amount);
    |        msg.sender.transfer(amount);
    |        Withdraw(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'EthColor':
    |
    |    function transferToAccount(uint256 pixelId, address toWallet, uint256 permil, uint256 gridPrice) internal {
  > |        accounts[toWallet].balance = accounts[toWallet].balance.add(gridPrice.mul(permil).div(1000));
    |        Transfer(msg.sender, toWallet, gridPrice.mul(permil).div(1000), pixelId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'EthColor':
    |            (referralAddress != address(0))) {
    |
  > |            accounts[msg.sender].referrer = referralAddress;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'EthColor':
    |
    |            // Update pixel
  > |            pixels[pixelIdx].color = colors[i];
    |            pixels[pixelIdx].times = pixels[pixelIdx].times.add(1);
    |            pixels[pixelIdx].price = price;
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'EthColor':
    |            // Update pixel
    |            pixels[pixelIdx].color = colors[i];
  > |            pixels[pixelIdx].times = pixels[pixelIdx].times.add(1);
    |            pixels[pixelIdx].price = price;
    |            Drawcolor(pixelIdx, msg.sender, colors[i], price);
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'EthColor':
    |            pixels[pixelIdx].color = colors[i];
    |            pixels[pixelIdx].times = pixels[pixelIdx].times.add(1);
  > |            pixels[pixelIdx].price = price;
    |            Drawcolor(pixelIdx, msg.sender, colors[i], price);
    |
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'EthColor':
    |
    |            // Update pixel owner
  > |            pixels[pixelIdx].owner = msg.sender;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(162)

[33mWarning[0m for DAOConstantGas in contract 'EthColorAccount':
    |
    |        accounts[msg.sender].balance = accounts[msg.sender].balance.sub(amount);
  > |        msg.sender.transfer(amount);
    |        Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(69)

[33mWarning[0m for LockedEther in contract 'EthColorAccount':
    |}
    |
  > |contract EthColorAccount {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(42)

[33mWarning[0m for TODAmount in contract 'EthColorAccount':
    |
    |        accounts[msg.sender].balance = accounts[msg.sender].balance.sub(amount);
  > |        msg.sender.transfer(amount);
    |        Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(69)

[33mWarning[0m for TODReceiver in contract 'EthColorAccount':
    |
    |        accounts[msg.sender].balance = accounts[msg.sender].balance.sub(amount);
  > |        msg.sender.transfer(amount);
    |        Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(69)

[33mWarning[0m for UnhandledException in contract 'EthColorAccount':
    |
    |        accounts[msg.sender].balance = accounts[msg.sender].balance.sub(amount);
  > |        msg.sender.transfer(amount);
    |        Withdraw(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'EthColorAccount':
    |        assert(accounts[msg.sender].balance >= amount);
    |
  > |        accounts[msg.sender].balance = accounts[msg.sender].balance.sub(amount);
    |        msg.sender.transfer(amount);
    |        Withdraw(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(68)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6f456ff1ff6eea6e62adeb59c11df2dfc294f76d.sol(3)


