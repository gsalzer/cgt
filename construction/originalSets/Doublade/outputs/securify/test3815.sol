Processing contract: /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol:Aeromart
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Aeromart':
    |}
    |
  > |contract Aeromart is Owned {
    |    
    |    struct Note {
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeromart':
    |    
    |    function constuctor() public {
  > |        owner = msg.sender;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(7)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeromart':
    |}
    |
  > |contract Aeromart is Owned {
    |    
    |    struct Note {
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(16)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeromart':
    |        emit noteInfo(_productID, _textOrImage);
    |        
  > |        notesLength++;
    |        return notesLength;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeromart':
    |        Comment storage comment = comments[commentsLength];
    |        
  > |        comment.rating = _rating;
    |        comment.text = _text;
    |        
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeromart':
    |        emit commentInfo(_rating, _text);
    |        
  > |        commentsLength++;
    |        return commentsLength;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeromart':
    |        Comment storage comment = comments[_id];
    |        
  > |        comment.rating = _rating;
    |        comment.text = _text;
    |        
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Aeromart':
    |}
    |
  > |contract Aeromart is Owned {
    |    
    |    struct Note {
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Aeromart':
    |        Note storage note = notes[notesLength];
    |        
  > |        note.productID = _productID;
    |        note.textOrImage = _textOrImage;
    |		
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Aeromart':
    |        Note storage note = notes[_id];
    |        
  > |        note.productID = _productID;
    |        note.textOrImage = _textOrImage;
    |        
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(46)

[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.22;
    |
  > |contract Owned {
    |    address owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    address owner;
    |    
  > |    function constuctor() public {
    |        owner = msg.sender;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(6)

[31mViolation[0m for UnrestrictedWrite in contract 'Owned':
    |    
    |    function constuctor() public {
  > |        owner = msg.sender;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfb025f588cd68b9ddd30e4c3919748e87e5c6265.sol(7)


