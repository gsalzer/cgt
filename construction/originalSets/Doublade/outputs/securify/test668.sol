Processing contract: /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol:Accessibility
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol:Helper
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol:Storage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol:Two4ever
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Accessibility':
    |}
    |//contract for restricting access to special functionality
  > |contract Accessibility {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(239)

[33mWarning[0m for MissingInputValidation in contract 'Accessibility':
    |contract Accessibility {
    |
  > |    address public owner;
    |    //access modifier
    |    modifier onlyOwner() {
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(241)

[33mWarning[0m for LockedEther in contract 'Helper':
    |}
    |// Helper library with simple additional functions
  > |library Helper{
    |    //check if the address is not empty
    |    function notEmptyAddr(address addr) internal pure returns(bool) {
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(578)

[33mWarning[0m for LockedEther in contract 'Math':
    |
    |// Math library with simple arithmetical functions
  > |library Math {
    |    //multiplying
    |    function mul(uint256 num1, uint256 num2) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(541)

[33mWarning[0m for LockedEther in contract 'Storage':
    |* Main contract - Two4ever. You can view the contract code by scrolling down.
    |*/
  > |contract Storage {
    |// define investor model   
    |    struct investor {
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |* Main contract - Two4ever. You can view the contract code by scrolling down.
    |*/
  > |contract Storage {
    |// define investor model   
    |    struct investor {
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        uint keyIndex = d.investors[addr].keyIndex;
    |        if (keyIndex != 0) return false;
  > |        d.investors[addr].value = value;
    |        keyIndex = d.keys.length++;
    |        d.investors[addr].keyIndex = keyIndex;
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        d.investors[addr].value = value;
    |        keyIndex = d.keys.length++;
  > |        d.investors[addr].keyIndex = keyIndex;
    |        d.keys[keyIndex] = addr;
    |        updateBestInvestor(addr, d.investors[addr].value);
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        keyIndex = d.keys.length++;
    |        d.investors[addr].keyIndex = keyIndex;
  > |        d.keys[keyIndex] = addr;
    |        updateBestInvestor(addr, d.investors[addr].value);
    |    
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |    function addRefBonus(address addr, uint refBonus) public  returns (bool) {
    |        if (d.investors[addr].keyIndex == 0) return false;
  > |        d.investors[addr].refBonus += refBonus;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |    function addRefBonusWithRefs(address addr, uint refBonus) public  returns (bool) {
    |        if (d.investors[addr].keyIndex == 0) return false;
  > |        d.investors[addr].refBonus += refBonus;
    |        d.investors[addr].refs++;
    |        updateBestPromoter(addr, d.investors[addr].refs);
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        if (d.investors[addr].keyIndex == 0) return false;
    |        d.investors[addr].refBonus += refBonus;
  > |        d.investors[addr].refs++;
    |        updateBestPromoter(addr, d.investors[addr].refs);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |    function addValue(address addr, uint value) public  returns (bool) {
    |        if (d.investors[addr].keyIndex == 0) return false;
  > |        d.investors[addr].value += value;
    |        updateBestInvestor(addr, d.investors[addr].value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |    // update statistics
    |    function updateStats(uint dt, uint invested, uint strg) public {
  > |        d.stats[dt].invested += invested;
    |        d.stats[dt].strg += strg;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |    function updateStats(uint dt, uint invested, uint strg) public {
    |        d.stats[dt].invested += invested;
  > |        d.stats[dt].strg += strg;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |    function updateBestInvestor(address addr, uint investorValue) internal {
    |        if(investorValue > d.bestInvestor.value){
  > |            d.bestInvestor.value = investorValue;
    |            d.bestInvestor.addr = addr;
    |            emit LogBestInvestorChanged(addr, now, d.bestInvestor.value);
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(199)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        if(investorValue > d.bestInvestor.value){
    |            d.bestInvestor.value = investorValue;
  > |            d.bestInvestor.addr = addr;
    |            emit LogBestInvestorChanged(addr, now, d.bestInvestor.value);
    |        }      
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |    function updateBestPromoter(address addr, uint investorRefs) internal {
    |        if(investorRefs > d.bestPromoter.value){
  > |            d.bestPromoter.value = investorRefs;
    |            d.bestPromoter.addr = addr;
    |            emit LogBestPromoterChanged(addr, now, d.bestPromoter.value);
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(208)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |        if(investorRefs > d.bestPromoter.value){
    |            d.bestPromoter.value = investorRefs;
  > |            d.bestPromoter.addr = addr;
    |            emit LogBestPromoterChanged(addr, now, d.bestPromoter.value);
    |        }      
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(209)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |    function setPaymentTime(address addr, uint paymentTime) public  returns (bool) {
    |        if (d.investors[addr].keyIndex == 0) return false;
  > |        d.investors[addr].paymentTime = paymentTime;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'Storage':
    |    function setRefBonus(address addr, uint refBonus) public  returns (bool) {
    |        if (d.investors[addr].keyIndex == 0) return false;
  > |        d.investors[addr].refBonus = refBonus;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2ab3345c4774ba49e941843f7c8ec2bd0a4950ac.sol(224)


