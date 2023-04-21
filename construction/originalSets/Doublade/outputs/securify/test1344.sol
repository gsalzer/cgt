Processing contract: /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol:AddressUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol:ERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol:PixelCons
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol:StringUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AddressUtils':
    | * See (https://github.com/OpenZeppelin/openzeppelin-solidity)
    | */
  > |library AddressUtils {
    |
    |	/**
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1104)

[33mWarning[0m for DAOConstantGas in contract 'PixelCons':
    |	{
    |		require(msg.sender == admin, "Only the admin can call this function");
  > |		_to.transfer(address(this).balance);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(256)

[33mWarning[0m for LockedEther in contract 'PixelCons':
    | * @author PixelCons
    | */
  > |contract PixelCons is ERC721 {
    |
    |	using AddressUtils for address;
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(120)

[31mViolation[0m for TODAmount in contract 'PixelCons':
    |	{
    |		require(msg.sender == admin, "Only the admin can call this function");
  > |		_to.transfer(address(this).balance);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(256)

[33mWarning[0m for TODReceiver in contract 'PixelCons':
    |	{
    |		require(msg.sender == admin, "Only the admin can call this function");
  > |		_to.transfer(address(this).balance);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(256)

[33mWarning[0m for UnhandledException in contract 'PixelCons':
    |	{
    |		require(msg.sender == admin, "Only the admin can call this function");
  > |		_to.transfer(address(this).balance);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(256)

[33mWarning[0m for UnhandledException in contract 'PixelCons':
    |		if (!_to.isContract()) return true;
    |
  > |		bytes4 retval = ERC721Receiver(_to).onERC721Received(msg.sender, _from, _tokenId, _data);
    |		return (retval == ERC721_RECEIVED);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1062)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PixelCons':
    |	{
    |		require(msg.sender == admin, "Only the admin can call this function");
  > |		_to.transfer(address(this).balance);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(256)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PixelCons':
    |		if (!_to.isContract()) return true;
    |
  > |		bytes4 retval = ERC721Receiver(_to).onERC721Received(msg.sender, _from, _tokenId, _data);
    |		return (retval == ERC721_RECEIVED);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1062)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    | * @author PixelCons
    | */
  > |contract PixelCons is ERC721 {
    |
    |	using AddressUtils for address;
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |	{
    |		require(msg.sender == admin, "Only the admin can call this function");
  > |		admin = _newAdmin;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		pixelconNames.length++;
    |		PixelCon storage pixelcon = pixelcons[index];
  > |		pixelcon.tokenId = _tokenId;
    |		pixelcon.creator = msg.sender;
    |		pixelcon.dateCreated = dateCreated;
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		PixelCon storage pixelcon = pixelcons[index];
    |		pixelcon.tokenId = _tokenId;
  > |		pixelcon.creator = msg.sender;
    |		pixelcon.dateCreated = dateCreated;
    |		pixelconNames[index] = _name;
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		pixelcon.tokenId = _tokenId;
    |		pixelcon.creator = msg.sender;
  > |		pixelcon.dateCreated = dateCreated;
    |		pixelconNames[index] = _name;
    |		uint64[] storage createdList = createdTokens[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		pixelcon.creator = msg.sender;
    |		pixelcon.dateCreated = dateCreated;
  > |		pixelconNames[index] = _name;
    |		uint64[] storage createdList = createdTokens[msg.sender];
    |		uint createdListIndex = createdList.length;
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		uint createdListIndex = createdList.length;
    |		createdList.length++;
  > |		createdList[createdListIndex] = index;
    |		addTokenTo(_to, _tokenId);
    |
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		//update name
    |		TokenLookup storage lookupData = tokenLookup[_tokenId];
  > |		pixelconNames[lookupData.tokenIndex] = _name;
    |
    |		emit Rename(_tokenId, _name);
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |			require(pixelcon.collectionIndex == uint64(0), "PixelCon is already in a collection");
    |
  > |			pixelcon.collectionIndex = collectionIndex;
    |			collection[i] = tokenIndex;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |
    |			pixelcon.collectionIndex = collectionIndex;
  > |			collection[i] = tokenIndex;
    |		}
    |		collectionNames.length++;
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		}
    |		collectionNames.length++;
  > |		collectionNames[collectionIndex] = _name;
    |
    |		emit CreateCollection(msg.sender, collectionIndex);
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |
    |		//update
  > |		collectionNames[_collectionIndex] = _name;
    |
    |		emit RenameCollection(_collectionIndex, _name);
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |			require(isCreatorAndOwner(msg.sender, pixelcon.tokenId), "Sender is not the creator and owner of the PixelCons");
    |
  > |			pixelcon.collectionIndex = 0;
    |		}
    |
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |
    |		//clear out collection data
  > |		delete collectionNames[_collectionIndex];
    |		delete collectionTokens[_collectionIndex];
    |
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(519)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		require(msg.sender == owner || operatorApprovals[owner][msg.sender], "Sender does not have permission to approve address");
    |
  > |		tokenApprovals[_tokenId] = _to;
    |		emit Approval(owner, _to, _tokenId);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(780)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |	{
    |		require(_to != msg.sender, "Cannot approve self");
  > |		operatorApprovals[msg.sender][_to] = _approved;
    |		emit ApprovalForAll(msg.sender, _to, _approved);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(806)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		require(tokenLookup[_tokenId].owner == _owner, "Incorrect PixelCon owner");
    |		if (tokenApprovals[_tokenId] != address(0)) {
  > |			tokenApprovals[_tokenId] = address(0);
    |		}
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1000)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		require(ownedList.length < uint256(2 ** 32) - 1, "Max number of PixelCons per owner has been reached");
    |		require(lookupData.owner == address(0), "PixelCon already has an owner");
  > |		lookupData.owner = _to;
    |
    |		//update ownedTokens references
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1016)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		uint ownedListIndex = ownedList.length;
    |		ownedList.length++;
  > |		lookupData.ownedIndex = uint32(ownedListIndex);
    |		ownedList[ownedListIndex] = lookupData.tokenIndex;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1021)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		ownedList.length++;
    |		lookupData.ownedIndex = uint32(ownedListIndex);
  > |		ownedList[ownedListIndex] = lookupData.tokenIndex;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1022)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		TokenLookup storage lookupData = tokenLookup[_tokenId];
    |		require(lookupData.owner == _from, "From address is incorrect");
  > |		lookupData.owner = address(0);
    |
    |		//update ownedTokens references
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1036)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		//update ownedTokens references
    |		uint64 replacementTokenIndex = ownedList[ownedList.length - 1];
  > |		delete ownedList[ownedList.length - 1];
    |		ownedList.length--;
    |		if (lookupData.ownedIndex < ownedList.length) {
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1040)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |		if (lookupData.ownedIndex < ownedList.length) {
    |			//we just removed the last token index in the array, but if this wasn't the one to remove, then swap it with the one to remove 
  > |			ownedList[lookupData.ownedIndex] = replacementTokenIndex;
    |			tokenLookup[pixelcons[replacementTokenIndex].tokenId].ownedIndex = lookupData.ownedIndex;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1044)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |			//we just removed the last token index in the array, but if this wasn't the one to remove, then swap it with the one to remove 
    |			ownedList[lookupData.ownedIndex] = replacementTokenIndex;
  > |			tokenLookup[pixelcons[replacementTokenIndex].tokenId].ownedIndex = lookupData.ownedIndex;
    |		}
    |		lookupData.ownedIndex = 0;
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1045)

[33mWarning[0m for UnrestrictedWrite in contract 'PixelCons':
    |			tokenLookup[pixelcons[replacementTokenIndex].tokenId].ownedIndex = lookupData.ownedIndex;
    |		}
  > |		lookupData.ownedIndex = 0;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1047)

[33mWarning[0m for LockedEther in contract 'StringUtils':
    | * @author PixelCons
    | */
  > |library StringUtils {
    |
    |	/**
  at /home/jiaming/mavs_srcs/contract@0x5536b6aadd29eaf0db112bb28046a5fad3761bd4.sol(1134)


