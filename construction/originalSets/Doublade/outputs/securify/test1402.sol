Processing contract: /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol:FckDice
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'FckDice':
    |    // Helper routine to process the payment.
    |    function sendFunds(address beneficiary, uint amount, uint successLogAmount) private {
  > |        if (beneficiary.send(amount)) {
    |            emit Payment(beneficiary, successLogAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(459)

[33mWarning[0m for LockedEther in contract 'FckDice':
    |
    |
  > |contract FckDice {
    |    /// *** Constants section
    |
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(4)

[33mWarning[0m for TODAmount in contract 'FckDice':
    |    // Helper routine to process the payment.
    |    function sendFunds(address beneficiary, uint amount, uint successLogAmount) private {
  > |        if (beneficiary.send(amount)) {
    |            emit Payment(beneficiary, successLogAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(459)

[33mWarning[0m for TODReceiver in contract 'FckDice':
    |    // Helper routine to process the payment.
    |    function sendFunds(address beneficiary, uint amount, uint successLogAmount) private {
  > |        if (beneficiary.send(amount)) {
    |            emit Payment(beneficiary, successLogAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(459)

[33mWarning[0m for UnhandledException in contract 'FckDice':
    |        require(block.number <= commitLastBlock, "Commit has expired.");
    |        bytes32 signatureHash = keccak256(abi.encodePacked(commitLastBlock, commit));
  > |        require(secretSigner == ecrecover(signatureHash, 27, r, s), "ECDSA signature is not valid.");
    |
    |        uint rollUnder;
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(262)

[33mWarning[0m for UnhandledException in contract 'FckDice':
    |    // Helper routine to process the payment.
    |    function sendFunds(address beneficiary, uint amount, uint successLogAmount) private {
  > |        if (beneficiary.send(amount)) {
    |            emit Payment(beneficiary, successLogAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(459)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FckDice':
    |        require(block.number <= commitLastBlock, "Commit has expired.");
    |        bytes32 signatureHash = keccak256(abi.encodePacked(commitLastBlock, commit));
  > |        require(secretSigner == ecrecover(signatureHash, 27, r, s), "ECDSA signature is not valid.");
    |
    |        uint rollUnder;
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FckDice':
    |    // Helper routine to process the payment.
    |    function sendFunds(address beneficiary, uint amount, uint successLogAmount) private {
  > |        if (beneficiary.send(amount)) {
    |            emit Payment(beneficiary, successLogAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(459)

[33mWarning[0m for UnrestrictedWrite in contract 'FckDice':
    |    // See comment for "secretSigner" variable.
    |    function setSecretSigner(address newSecretSigner) external onlyOwner {
  > |        secretSigner = newSecretSigner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'FckDice':
    |    // Change the croupier address.
    |    function setCroupier(address newCroupier) external onlyOwner {
  > |        croupier = newCroupier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'FckDice':
    |    function setMaxProfit(uint _maxProfit) public onlyOwner {
    |        require(_maxProfit < MAX_AMOUNT, "maxProfit should be a sane number.");
  > |        maxProfit = _maxProfit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'FckDice':
    |        require(increaseAmount <= address(this).balance, "Increase amount larger than balance.");
    |        require(jackpotSize + lockedInBets + increaseAmount <= address(this).balance, "Not enough funds.");
  > |        jackpotSize += uint128(increaseAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x58ea969c48d5d12dad1210d8482af7f69d53f6fe.sol(192)


