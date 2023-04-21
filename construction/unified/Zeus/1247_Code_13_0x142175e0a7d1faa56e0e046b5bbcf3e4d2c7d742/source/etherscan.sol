contract Game{function deposit(address to, uint amount){}}

contract GMT
{
	uint constant CROWDSALE_AMOUNT = 1000;

	string public standard = 'Token 0.1';
    string public name = 'Miner Token';
    string public symbol = 'GMT';
    uint8 public decimals = 0;
    uint256 public totalSupply = CROWDSALE_AMOUNT;

	uint public minted;
	
	address public owner;
	address public game_address = 0;
	address public crowdsale_address = 0;

	Game game;
	
	mapping(address => uint) public balanceOf;
	event Transfer(address indexed from, address indexed to, uint256 value);

	function GMT()
	{
		owner = msg.sender;
	}
	
	modifier onlyOwner()
	{
		if (msg.sender != owner) throw;
		_;
	}
	
	modifier onlyGame()
	{
		if (msg.sender != game_address) throw;
		_;
	}
	
	function mint(uint amount) onlyGame returns (bool)
	{
		if (balanceOf[game] + amount < balanceOf[game]) throw;
		
		minted += amount;
		totalSupply += amount;
		balanceOf[game] += amount;
		Transfer(0, owner, amount);
		Transfer(owner, game, amount);
		return true;
	}
	
	function sendToGame(uint amount) returns (bool)
	{
		if (balanceOf[msg.sender] < amount) throw;           
		if (balanceOf[game_address] + amount < balanceOf[game_address]) throw;

		balanceOf[msg.sender] -= amount;
		balanceOf[game_address] += amount;
		game.deposit(msg.sender, amount);
		Transfer(msg.sender, game_address, amount);
		return true;
	}
	
	function transfer(address to, uint amount) returns (bool)
	{
		if (balanceOf[msg.sender] < amount) throw;           
		if (balanceOf[to] + amount < balanceOf[to]) throw;
		
		balanceOf[msg.sender] -= amount;
		balanceOf[to] += amount;
		Transfer(msg.sender, to, amount);
		return true;
	}
	
	function startCrowdsale(address crowdsale_contract_address) onlyOwner returns (bool)
	{
		if (crowdsale_address != 0) 
			return false;
		
		crowdsale_address = crowdsale_contract_address;
		balanceOf[crowdsale_address] = CROWDSALE_AMOUNT;
		return true;
	}
	
	function initGame(address game_contract_address) onlyOwner
	{
		if (game_address != 0)
			throw;
		game_address = game_contract_address;
		game = Game(game_address);
	}

	function kill() onlyOwner
	{
		suicide(owner);
	}
}