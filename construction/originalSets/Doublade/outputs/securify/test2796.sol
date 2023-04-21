Processing contract: /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol:ArtCash
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol:ERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'ArtCash':
    |
    |    function sendFund() onlyowner {
  > |        walletOut.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(175)

[33mWarning[0m for LockedEther in contract 'ArtCash':
    |
    |/* Основной контракт токена, наследует ERC20Token */
  > |contract ArtCash is ERC20Token
    |{
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'ArtCash':
    |
    |        /* Изменить владельца контракта, newOwner - адрес нового владельца */
  > |    function changeOwner(address newOwner) onlyowner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'ArtCash':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success)
    |    {
    |        //По-умолчанию предполагается, что totalSupply не может быть больше (2^256 - 1).
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'ArtCash':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance)
    |    {
    |        return balances[_owner];
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'ArtCash':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'ArtCash':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining)
    |    {
    |      return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'ArtCash':
    |    }
    |
  > |    function setPrice(uint256 newPrice) onlyowner {
    |        price = newPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'ArtCash':
    |    }
    |
  > |    function setLimit(uint256 newLimit) onlyowner {
    |        limit = newLimit;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'ArtCash':
    |    }
    |
  > |    function setWallet(address _to) onlyowner {
    |        walletOut = _to;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |
    |    /// Общее кол-во токенов
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner адрес, с которого будет получен баланс
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |{
    |
  > |    bool public isTokenSale = true;
    |    uint256 public price;
    |    uint256 public limit;
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |
    |    bool public isTokenSale = true;
  > |    uint256 public price;
    |    uint256 public limit;
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |    bool public isTokenSale = true;
    |    uint256 public price;
  > |    uint256 public limit;
    |
    |    address walletOut = 0x0882ea6417087786d9e404e85e6d4ed2a8f9fe51;
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |    address walletOut = 0x0882ea6417087786d9e404e85e6d4ed2a8f9fe51;
    |
  > |    function getWalletOut() constant returns (address _to) {
    |        return walletOut;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |    }
    |
  > |    function stopSale() onlyowner {
    |        isTokenSale = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |    }
    |
  > |    function startSale() onlyowner {
    |        isTokenSale = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |    }
    |
  > |    function sendFund() onlyowner {
    |        walletOut.send(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |
    |    /* Публичные переменные токена */
  > |    string public name;                 // Название
    |    uint8 public decimals;              // Сколько десятичных знаков
    |    string public symbol;               // Идентификатор (трехбуквенный обычно)
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |    /* Публичные переменные токена */
    |    string public name;                 // Название
  > |    uint8 public decimals;              // Сколько десятичных знаков
    |    string public symbol;               // Идентификатор (трехбуквенный обычно)
    |    string public version = '1.0';      // Версия
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(180)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |    string public name;                 // Название
    |    uint8 public decimals;              // Сколько десятичных знаков
  > |    string public symbol;               // Идентификатор (трехбуквенный обычно)
    |    string public version = '1.0';      // Версия
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(181)

[33mWarning[0m for MissingInputValidation in contract 'ArtCash':
    |    uint8 public decimals;              // Сколько десятичных знаков
    |    string public symbol;               // Идентификатор (трехбуквенный обычно)
  > |    string public version = '1.0';      // Версия
    |
    |    function ArtCash()
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(182)

[31mViolation[0m for TODAmount in contract 'ArtCash':
    |
    |    function sendFund() onlyowner {
  > |        walletOut.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(175)

[31mViolation[0m for TODReceiver in contract 'ArtCash':
    |
    |    function sendFund() onlyowner {
  > |        walletOut.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(175)

[31mViolation[0m for UnhandledException in contract 'ArtCash':
    |
    |    function sendFund() onlyowner {
  > |        walletOut.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(175)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ArtCash':
    |
    |    function sendFund() onlyowner {
  > |        walletOut.send(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ArtCash':
    |        /* Изменить владельца контракта, newOwner - адрес нового владельца */
    |    function changeOwner(address newOwner) onlyowner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'ArtCash':
    |        //По-умолчанию предполагается, что totalSupply не может быть больше (2^256 - 1).
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'ArtCash':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'ArtCash':
    |    function approve(address _spender, uint256 _value) returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'ArtCash':
    |
    |    function stopSale() onlyowner {
  > |        isTokenSale = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'ArtCash':
    |
    |    function startSale() onlyowner {
  > |        isTokenSale = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'ArtCash':
    |
    |    function setPrice(uint256 newPrice) onlyowner {
  > |        price = newPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'ArtCash':
    |
    |    function setLimit(uint256 newLimit) onlyowner {
  > |        limit = newLimit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'ArtCash':
    |
    |    function setWallet(address _to) onlyowner {
  > |        walletOut = _to;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(171)

[33mWarning[0m for LockedEther in contract 'ERC20Token':
    |Контракт реализует ERC 20 Token standard: https://github.com/ethereum/EIPs/issues/20
    |*/
  > |contract ERC20Token is Token
    |{
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |        /* Изменить владельца контракта, newOwner - адрес нового владельца */
  > |    function changeOwner(address newOwner) onlyowner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success)
    |    {
    |        //По-умолчанию предполагается, что totalSupply не может быть больше (2^256 - 1).
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance)
    |    {
    |        return balances[_owner];
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'ERC20Token':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining)
    |    {
    |      return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'ERC20Token':
    |
    |    /// Общее кол-во токенов
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner адрес, с которого будет получен баланс
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        /* Изменить владельца контракта, newOwner - адрес нового владельца */
    |    function changeOwner(address newOwner) onlyowner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |        //По-умолчанию предполагается, что totalSupply не может быть больше (2^256 - 1).
    |        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20Token':
    |    function approve(address _spender, uint256 _value) returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(107)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |/* Родительский контракт */
  > |contract Owned {
    |
    |    /* Адрес владельца контракта*/
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |
    |        /* Изменить владельца контракта, newOwner - адрес нового владельца */
  > |    function changeOwner(address newOwner) onlyowner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        /* Изменить владельца контракта, newOwner - адрес нового владельца */
    |    function changeOwner(address newOwner) onlyowner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7c6f23e9bfd56b7337916086b699f104959a2ff.sol(22)


