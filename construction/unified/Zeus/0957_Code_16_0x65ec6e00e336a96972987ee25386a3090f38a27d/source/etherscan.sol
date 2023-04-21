contract ClaimAndEndorse {
 struct ENDORSEMENT {
  uint creationTime;
 }
 
 struct CLAIM {
  uint creationTime;
  uint claimHash;
  mapping (address => ENDORSEMENT) endorsements;
 }
 
 mapping (address => mapping (uint /* CLAIM GUID */ => CLAIM)) claims;
 
 
 function setClaim(uint claimGuid, uint claimHash) {
  CLAIM c = claims[msg.sender][claimGuid];
  if(c.claimHash > 0) throw; // unset first!
  c.creationTime = now;
  c.claimHash = claimHash;
 }
 
 function unsetClaim(uint claimGuid) {
  delete claims[msg.sender][claimGuid];
 }
 
 function setEndorsement(address claimer, uint claimGuid, uint expectedClaimHash) {
  CLAIM c = claims[claimer][claimGuid];
  if(c.claimHash != expectedClaimHash) throw;
  ENDORSEMENT e = c.endorsements[msg.sender];
  e.creationTime = now;
 }
 
 function unsetEndorsement(address claimer, uint claimGuid) {
  delete claims[claimer][claimGuid].endorsements[msg.sender];
 }
 
 function checkClaim(
  address claimer, uint claimGuid, uint expectedClaimHash
 ) constant returns (bool) {
  return claims[claimer][claimGuid].claimHash == expectedClaimHash;
 }
 
 function checkEndorsement(
  address claimer, uint claimGuid, address endorsedBy
 ) constant returns (bool) {
  return claims[claimer][claimGuid]
         .endorsements[endorsedBy].creationTime > 0;
 }
}