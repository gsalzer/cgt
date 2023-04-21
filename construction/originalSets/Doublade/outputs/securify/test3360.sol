Processing contract: /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol:Aeromart
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol:Owned
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Aeromart':
    |}
    |
  > |contract Aeromart is Owned {
    |    
    |    struct Note {
  at /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeromart':
    |}
    |
  > |contract Aeromart is Owned {
    |    
    |    struct Note {
  at /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeromart':
    |        emit noteInfo(_productID, _text, _image);
    |        
  > |        notesLength++;
    |        return notesLength;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeromart':
    |        Comment storage comment = comments[commentsLength];
    |        
  > |        comment.rating = _rating;
    |        comment.text = _text;
    |        
  at /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeromart':
    |        emit commentInfo(_rating, _text);
    |        
  > |        commentsLength++;
    |        return commentsLength;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeromart':
    |        Comment storage comment = comments[_id];
    |        
  > |        comment.rating = _rating;
    |        comment.text = _text;
    |        
  at /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Aeromart':
    |}
    |
  > |contract Aeromart is Owned {
    |    
    |    struct Note {
  at /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Aeromart':
    |        Note storage note = notes[notesLength];
    |        
  > |        note.productID = _productID;        
    |        note.text = _text;
    |		note.image = _image;
  at /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Aeromart':
    |        Note storage note = notes[_id];
    |        
  > |        note.productID = _productID;        
    |        note.text = _text;
    |		note.image = _image;
  at /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol(49)

[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.21;
    |
  > |contract Owned {
    |    address owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0xdcaf157faa03309653cd0acddd6947f3417e8dd2.sol(3)


