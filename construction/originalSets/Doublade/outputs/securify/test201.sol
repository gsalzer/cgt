Processing contract: /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol:ConvertStringByte
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol:Platinum
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol:PlatinumToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol:Strings
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ConvertStringByte':
    |pragma solidity ^0.4.13;
    |
  > |library ConvertStringByte {
    |  function bytes32ToString(bytes32 x) constant returns (string) {
    |    bytes memory bytesString = new bytes(32);
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(3)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(709)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(710)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(735)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(737)

[33mWarning[0m for LockedEther in contract 'Platinum':
    |}
    |
  > |contract Platinum is Ownable {
    |  using SafeMath for uint256;
    |  using Strings for *;
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(743)

[33mWarning[0m for UnhandledException in contract 'Platinum':
    |    uint256 amount = convert2PlatinumToken(_ptAmount);
    |    // 發送token的增加涵式
  > |    bool produced = coin.produce(amount);
    |    require(produced);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(935)

[33mWarning[0m for UnhandledException in contract 'Platinum':
    |
    |    uint256 amount = convert2Platinum(_tokenAmount);
  > |    bool reduced = coin.reduce(_tokenAmount);
    |    require(reduced);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(967)

[33mWarning[0m for UnhandledException in contract 'Platinum':
    |    require(token != 0x0);
    |    bytes32 _bindex = ConvertStringByte.stringToBytes32(_index);
  > |    uint256 fee = coin.fee();
    |    require(storehouse[_bindex].amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1038)

[33mWarning[0m for UnhandledException in contract 'Platinum':
    |
    |    // 轉帳
  > |    bool transfered = coin.transferFrom(buyer, coin.owner(), tokenPriceFee);
    |    require(transfered);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1046)

[33mWarning[0m for UnhandledException in contract 'Platinum':
    |
    |    // 直接把剛剛賣出的價格煉金
  > |    bool reduced = coin.reduce(tokenPrice);
    |    require(reduced);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1050)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Platinum':
    |    uint256 amount = convert2PlatinumToken(_ptAmount);
    |    // 發送token的增加涵式
  > |    bool produced = coin.produce(amount);
    |    require(produced);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(935)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Platinum':
    |
    |    uint256 amount = convert2Platinum(_tokenAmount);
  > |    bool reduced = coin.reduce(_tokenAmount);
    |    require(reduced);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(967)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Platinum':
    |    require(token != 0x0);
    |    bytes32 _bindex = ConvertStringByte.stringToBytes32(_index);
  > |    uint256 fee = coin.fee();
    |    require(storehouse[_bindex].amount > 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1038)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Platinum':
    |
    |    // 轉帳
  > |    bool transfered = coin.transferFrom(buyer, coin.owner(), tokenPriceFee);
    |    require(transfered);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1046)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Platinum':
    |
    |    // 直接把剛剛賣出的價格煉金
  > |    bool reduced = coin.reduce(tokenPrice);
    |    require(reduced);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1050)

[33mWarning[0m for UnrestrictedWrite in contract 'Platinum':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(737)

[33mWarning[0m for UnrestrictedWrite in contract 'Platinum':
    |
    |    // 增加總庫存
  > |    total = total.add(_amount);
    |
    |    Stock(bullion.index, bullion.unit, bullion.amount, bullion.ipfs, total);
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(861)

[33mWarning[0m for UnrestrictedWrite in contract 'Platinum':
    |    delete storehouse[_bindex];
    |    // 減少總庫存
  > |    total = total.sub(tmpAmount);
    |
    |    Ship(bullion.index, total);
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(905)

[33mWarning[0m for UnrestrictedWrite in contract 'Platinum':
    |    require(produced);
    |
  > |    total = total.sub(_ptAmount);
    |
    |    Mint(_ptAmount, total);
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(938)

[33mWarning[0m for UnrestrictedWrite in contract 'Platinum':
    |    require(reduced);
    |
  > |    total = total.add(amount);
    |
    |    Alchemy(amount, total);
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(970)

[33mWarning[0m for UnrestrictedWrite in contract 'Platinum':
    |    require(_rate > 0);
    |
  > |    rate = _rate;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(994)

[33mWarning[0m for UnrestrictedWrite in contract 'Platinum':
    |    require(_address != 0x0);
    |
  > |    coin = PlatinumToken(_address);
    |    token = _address;
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1013)

[33mWarning[0m for UnrestrictedWrite in contract 'Platinum':
    |
    |    coin = PlatinumToken(_address);
  > |    token = _address;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1014)

[33mWarning[0m for LockedEther in contract 'PlatinumToken':
    |}
    |
  > |contract PlatinumToken is Ownable, ERC20 {
    |  using SafeMath for uint256;
    |  // ========= 宣告 =========
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1152)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |    // TODO whether or not to checkout the balance of the sender
    |
  > |    allowed[msg.sender][owner] = _value;
    |    Approval(msg.sender, owner, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1378)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(737)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |   */
    |  function produce(uint256 amount) isPlatinumContract returns (bool) {
  > |    balances[owner] = balances[owner].add(amount);
    |    totalSupply = totalSupply.add(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1222)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |  function produce(uint256 amount) isPlatinumContract returns (bool) {
    |    balances[owner] = balances[owner].add(amount);
  > |    totalSupply = totalSupply.add(amount);
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1223)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |    require(totalSupply.sub(amount) >= 0);
    |
  > |    balances[owner] = balances[owner].sub(amount);
    |    totalSupply = totalSupply.sub(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1247)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |
    |    balances[owner] = balances[owner].sub(amount);
  > |    totalSupply = totalSupply.sub(amount);
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1248)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |    require(_address != 0x0);
    |
  > |    platinum = _address;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1269)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |    require(_fee >= 0);
    |
  > |    fee = _fee;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1288)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |   */
    |  function transfer(address _to, uint256 _value) onlyOwner returns (bool) {
  > |    balances[owner] = balances[owner].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1309)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |  function transfer(address _to, uint256 _value) onlyOwner returns (bool) {
    |    balances[owner] = balances[owner].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |
    |    Transfer(owner, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1310)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |    uint256 valueSubFee = _value.sub(fee);
    |
  > |    balances[_to] = balances[_to].add(valueSubFee);
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[owner] = balances[owner].add(fee);
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1347)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |
    |    balances[_to] = balances[_to].add(valueSubFee);
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[owner] = balances[owner].add(fee);
    |    allowed[_from][owner] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1348)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |    balances[_to] = balances[_to].add(valueSubFee);
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[owner] = balances[owner].add(fee);
    |    allowed[_from][owner] = _allowance.sub(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1349)

[33mWarning[0m for UnrestrictedWrite in contract 'PlatinumToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[owner] = balances[owner].add(fee);
  > |    allowed[_from][owner] = _allowance.sub(_value);
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1350)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(1101)

[33mWarning[0m for LockedEther in contract 'Strings':
    |}
    |
  > |library Strings {
    |    struct slice {
    |        uint _len;
  at /home/jiaming/mavs_srcs/contract@0x0dae5dc78cc470a5e2f7c7c6b63ae7298e65853f.sol(28)


