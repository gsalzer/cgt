Processing contract: /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol:Whitelist
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | */
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(22)

[33mWarning[0m for LockedEther in contract 'Whitelist':
    |
    |
  > |contract Whitelist is Ownable {
    |    mapping (address => uint128) whitelist;
    |
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |
  > |    function whitelistUser(address who, uint128 nonce) external onlyOwner {
    |        setWhitelisting(who, nonce);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |
  > |    function whitelistMe(uint128 nonce, uint8 v, bytes32 r, bytes32 s) external {
    |        bytes32 hash = keccak256(msg.sender, nonce);
    |        require(ecrecover(hash, v, r, s) == owner);
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |
  > |    function isWhitelisted(address who) external view returns(bool) {
    |        return whitelist[who] > 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Whitelist':
    |    }
    |
  > |    function setWhitelisting(address who, uint128 nonce) internal {
    |        whitelist[who] = nonce;
    |
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(37)

[33mWarning[0m for UnhandledException in contract 'Whitelist':
    |    function whitelistMe(uint128 nonce, uint8 v, bytes32 r, bytes32 s) external {
    |        bytes32 hash = keccak256(msg.sender, nonce);
  > |        require(ecrecover(hash, v, r, s) == owner);
    |        require(whitelist[msg.sender] == 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(49)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Whitelist':
    |    function whitelistMe(uint128 nonce, uint8 v, bytes32 r, bytes32 s) external {
    |        bytes32 hash = keccak256(msg.sender, nonce);
  > |        require(ecrecover(hash, v, r, s) == owner);
    |        require(whitelist[msg.sender] == 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'Whitelist':
    |
    |    function setWhitelisting(address who, uint128 nonce) internal {
  > |        whitelist[who] = nonce;
    |
    |        Whitelisted(who, nonce);
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |
    |    function setWhitelisting(address who, uint128 nonce) internal {
  > |        whitelist[who] = nonce;
    |
    |        Whitelisted(who, nonce);
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Whitelist':
    |
    |    function setWhitelisting(address who, uint128 nonce) internal {
  > |        whitelist[who] = nonce;
    |
    |        Whitelisted(who, nonce);
  at /home/jiaming/mavs_srcs/contract@0xb4d9202d3e743dbd36b40e6083e818d6397ae77e.sol(38)


