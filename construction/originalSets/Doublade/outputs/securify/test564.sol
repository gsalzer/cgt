Processing contract: /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol:PLT
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'PLT':
    |		if (msg.sender != owner) revert();
    |
  > |		owner.transfer(address(this).balance);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol(138)

[33mWarning[0m for LockedEther in contract 'PLT':
    |}
    |
  > |contract PLT is ERC20Interface {
    |	
    |	
  at /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol(13)

[31mViolation[0m for TODAmount in contract 'PLT':
    |		if (msg.sender != owner) revert();
    |
  > |		owner.transfer(address(this).balance);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol(138)

[31mViolation[0m for TODReceiver in contract 'PLT':
    |		if (msg.sender != owner) revert();
    |
  > |		owner.transfer(address(this).balance);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol(138)

[33mWarning[0m for UnhandledException in contract 'PLT':
    |		if (msg.sender != owner) revert();
    |
  > |		owner.transfer(address(this).balance);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PLT':
    |		if (msg.sender != owner) revert();
    |
  > |		owner.transfer(address(this).balance);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'PLT':
    |				}
    |			}
  > |			balances[msg.sender] -= tokens;
    |			balances[to] += tokens;
    |			emit Transfer(msg.sender, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'PLT':
    |			}
    |			balances[msg.sender] -= tokens;
  > |			balances[to] += tokens;
    |			emit Transfer(msg.sender, to, tokens);
    |			return true;
  at /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'PLT':
    |			}
    |			balances[from] -= tokens;
  > |			allowed[from][msg.sender] -= tokens;
    |			balances[to] += tokens;
    |			emit Transfer(from, to, tokens);
  at /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'PLT':
    |	
    |	function approve(address spender, uint tokens)public returns (bool success) {
  > |		allowed[msg.sender][spender] = tokens;
    |		emit Approval(msg.sender, spender, tokens);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'PLT':
    |		else
    |		{
  > |			owner = newOwner;
    |		}
    |    }
  at /home/jiaming/mavs_srcs/contract@0x244c8c078368a47ab3343927edb6f78fbdc93524.sol(149)


