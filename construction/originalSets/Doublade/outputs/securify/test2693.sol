Processing contract: /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol:TecnonucleousCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //El valor predeterminado asume que TotalSupply no puede exceder el máximo (2 ^ 256 - 1).
    |        //Si tu token omite la oferta total y puede emitir más tokens a medida que pasa el tiempo, debes comprobar si no se ajusta.
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //lo mismo que arriba. Reemplace esta línea con lo siguiente si desea protegerse contra envoltorios uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(75)

[33mWarning[0m for LockedEther in contract 'TecnonucleousCoin':
    |
    |//nombre de este contrato
  > |contract TecnonucleousCoin is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'TecnonucleousCoin':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //El valor predeterminado asume que TotalSupply no puede exceder el máximo (2 ^ 256 - 1).
    |        //Si tu token omite la oferta total y puede emitir más tokens a medida que pasa el tiempo, debes comprobar si no se ajusta.
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'TecnonucleousCoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //lo mismo que arriba. Reemplace esta línea con lo siguiente si desea protegerse contra envoltorios uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'TecnonucleousCoin':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'TecnonucleousCoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'TecnonucleousCoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'TecnonucleousCoin':
    |
    |    /* Aprueba y luego llama al contrato de recepcion */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'TecnonucleousCoin':
    |    mapping (address => uint256) balances;
    |    mapping (address => mapping (address => uint256)) allowed;
  > |    uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'TecnonucleousCoin':
    |     Algunas billeteras / interfaces pueden no molestarse en mirar esta información.
    |    */
  > |    string public name;                   //nombre elegante: por ejemplo, TecnonucleousCoin
    |    uint8 public decimals;                //Cuantos decimales mostrar es decir. Podría haber 1000 unidades base con 3 decimales. Significado 0.980 TEC = 980 unidades base Es como comparar 1 wei con 1 éter.
    |    string public symbol;                 //Un identificador: por ejemplo, TEC
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'TecnonucleousCoin':
    |    */
    |    string public name;                   //nombre elegante: por ejemplo, TecnonucleousCoin
  > |    uint8 public decimals;                //Cuantos decimales mostrar es decir. Podría haber 1000 unidades base con 3 decimales. Significado 0.980 TEC = 980 unidades base Es como comparar 1 wei con 1 éter.
    |    string public symbol;                 //Un identificador: por ejemplo, TEC
    |    string public version = 'H1.0';       //humano 0.1 estándar. Solo un esquema de control de versiones arbitrario.
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'TecnonucleousCoin':
    |    string public name;                   //nombre elegante: por ejemplo, TecnonucleousCoin
    |    uint8 public decimals;                //Cuantos decimales mostrar es decir. Podría haber 1000 unidades base con 3 decimales. Significado 0.980 TEC = 980 unidades base Es como comparar 1 wei con 1 éter.
  > |    string public symbol;                 //Un identificador: por ejemplo, TEC
    |    string public version = 'H1.0';       //humano 0.1 estándar. Solo un esquema de control de versiones arbitrario.
    |
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'TecnonucleousCoin':
    |    uint8 public decimals;                //Cuantos decimales mostrar es decir. Podría haber 1000 unidades base con 3 decimales. Significado 0.980 TEC = 980 unidades base Es como comparar 1 wei con 1 éter.
    |    string public symbol;                 //Un identificador: por ejemplo, TEC
  > |    string public version = 'H1.0';       //humano 0.1 estándar. Solo un esquema de control de versiones arbitrario.
    |
    |//
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(109)

[33mWarning[0m for UnhandledException in contract 'TecnonucleousCoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //se supone que cuando hace esto la llamada * deberia * tener exito, de lo contrario uno usaria vainilla aprobar en su lugar.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TecnonucleousCoin':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //se supone que cuando hace esto la llamada * deberia * tener exito, de lo contrario uno usaria vainilla aprobar en su lugar.
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'TecnonucleousCoin':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'TecnonucleousCoin':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'TecnonucleousCoin':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'TecnonucleousCoin':
    |    /* Aprueba y luego llama al contrato de recepcion */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(128)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.4;
    |
  > |contract Token {
    |
    |    /// @return cantidad total de tokens
  at /home/jiaming/mavs_srcs/contract@0xafd7aaab57d8792d59c14a9186f101d251709b0d.sol(3)


