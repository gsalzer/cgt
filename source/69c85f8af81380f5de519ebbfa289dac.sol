contract ProofOfPresence {

   address public owner;
   function ProofOfPresence() { owner = msg.sender; }

   modifier onlyOwner {
       if (msg.sender!=owner) throw;
       _;
   }

   event tokenEvent (
       uint id,
       uint token
   );

   function triggerToken(uint id, uint token) onlyOwner {
       tokenEvent(id, token);
   }

   struct Log {
       address addr;
       uint id;
       uint token;
   }

   Log[100] public submissions;
   uint tot;

   function submission(uint id, uint token) {
       submissions[tot++] = Log(msg.sender,id,token);
   }
}