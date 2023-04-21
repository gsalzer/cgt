Processing contract: /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol:LeeSungCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol:OwnerHelper
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |
    |
  > |contract ERC20Token is ERC20Interface, OwnerHelper
    |{
    |  	using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |		require( balances[msg.sender] >= _amount );
    |
  > |	    balances[msg.sender] = balances[msg.sender].sub(_amount);
    |		balances[_to]        = balances[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |		require ( balances[msg.sender] >= _amount );
    |
  > |		allowed[msg.sender][_spender] = _amount;
    |    		
    |		Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |		require( allowed[_from][msg.sender] >= _amount );
    |		balances[_from]            = balances[_from].sub(_amount);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |		balances[_to]              = balances[_to].add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |	{
    |		address burner = msg.sender;
  > |		balances[burner] = balances[burner].sub(_burnAmount);
    |		tokensIssuedTotal = tokensIssuedTotal.sub(_burnAmount);
    |		Burned(burner, _burnAmount);
  at /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |            require(_to != owner);
    |    		require(_to != address(0x0));
  > |    		owner = _to;
    |    		OwnerTransferPropose(owner, _to);
    |  	}
  at /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol(61)

[33mWarning[0m for LockedEther in contract 'OwnerHelper':
    |
    |
  > |contract OwnerHelper
    |{
    |  	address public owner;
  at /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'OwnerHelper':
    |contract OwnerHelper
    |{
  > |  	address public owner;
    |
    |  	event OwnerTransferPropose(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'OwnerHelper':
    |  	}
    |
  > |  	function transferOwnership(address _to) onlyOwner public
    |	{
    |            require(_to != owner);
  at /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnerHelper':
    |            require(_to != owner);
    |    		require(_to != address(0x0));
  > |    		owner = _to;
    |    		OwnerTransferPropose(owner, _to);
    |  	}
  at /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol(61)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// LeeSungCoin Request Question - koreacoinsolution@gmail.com
    |
  > |library SafeMath
    |{
    |  	function mul(uint256 a, uint256 b) internal pure returns (uint256)
  at /home/jiaming/mavs_srcs/contract@0x5f8c69fc7f3b302aad5e84beb6833f60efd361a2.sol(6)


