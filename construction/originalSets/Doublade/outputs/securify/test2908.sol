Processing contract: /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol:AddressUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol:CrowdSaleDragonETH
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol:DragonsETH
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol:Pausable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol:RBAC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol:RBACWithAdmin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol:ReentrancyGuard
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AddressUtils':
    |}
    |
  > |library AddressUtils {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(21)

[33mWarning[0m for DAOConstantGas in contract 'CrowdSaleDragonETH':
    |    function withdrawAllEther() external onlyAdmin {
    |        require(wallet != 0);
  > |        wallet.transfer(address(this).balance);
    |    }
    |   
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(444)

[33mWarning[0m for LockedEther in contract 'CrowdSaleDragonETH':
    |}
    |
  > |contract CrowdSaleDragonETH is Pausable, ReentrancyGuard {
    |    using SafeMath for uint256;
    |    using AddressUtils for address;
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(346)

[31mViolation[0m for TODAmount in contract 'CrowdSaleDragonETH':
    |        return_value = msg.value - count_to_buy * crowdSaleDragonPrice;
    |        if (return_value > 0) 
  > |            msg.sender.transfer(return_value);
    |            
    |        uint256 mainValue = msg.value - return_value;
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(377)

[31mViolation[0m for TODAmount in contract 'CrowdSaleDragonETH':
    |            require(referer != msg.sender);
    |            if (referer == address(0))
  > |                wallet.transfer(mainValue);
    |            else {
    |                if (refer50x50[referer]) {
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(385)

[31mViolation[0m for TODAmount in contract 'CrowdSaleDragonETH':
    |            else {
    |                if (refer50x50[referer]) {
  > |                    referer.transfer(mainValue/2);
    |                    wallet.transfer(mainValue - mainValue/2);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(388)

[31mViolation[0m for TODAmount in contract 'CrowdSaleDragonETH':
    |                if (refer50x50[referer]) {
    |                    referer.transfer(mainValue/2);
  > |                    wallet.transfer(mainValue - mainValue/2);
    |                } else {
    |                    referer.transfer(mainValue*3/10);
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(389)

[31mViolation[0m for TODAmount in contract 'CrowdSaleDragonETH':
    |                    wallet.transfer(mainValue - mainValue/2);
    |                } else {
  > |                    referer.transfer(mainValue*3/10);
    |                    wallet.transfer(mainValue - mainValue*3/10);
    |                }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(391)

[31mViolation[0m for TODAmount in contract 'CrowdSaleDragonETH':
    |                } else {
    |                    referer.transfer(mainValue*3/10);
  > |                    wallet.transfer(mainValue - mainValue*3/10);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(392)

[31mViolation[0m for TODAmount in contract 'CrowdSaleDragonETH':
    |            }
    |        } else 
  > |            wallet.transfer(mainValue);
    |
    |        for(uint256 i = 1; i <= count_to_buy; i += 1) {
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(396)

[31mViolation[0m for TODAmount in contract 'CrowdSaleDragonETH':
    |    function withdrawAllEther() external onlyAdmin {
    |        require(wallet != 0);
  > |        wallet.transfer(address(this).balance);
    |    }
    |   
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(444)

[31mViolation[0m for TODReceiver in contract 'CrowdSaleDragonETH':
    |            require(referer != msg.sender);
    |            if (referer == address(0))
  > |                wallet.transfer(mainValue);
    |            else {
    |                if (refer50x50[referer]) {
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(385)

[31mViolation[0m for TODReceiver in contract 'CrowdSaleDragonETH':
    |                if (refer50x50[referer]) {
    |                    referer.transfer(mainValue/2);
  > |                    wallet.transfer(mainValue - mainValue/2);
    |                } else {
    |                    referer.transfer(mainValue*3/10);
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(389)

[31mViolation[0m for TODReceiver in contract 'CrowdSaleDragonETH':
    |                } else {
    |                    referer.transfer(mainValue*3/10);
  > |                    wallet.transfer(mainValue - mainValue*3/10);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(392)

[31mViolation[0m for TODReceiver in contract 'CrowdSaleDragonETH':
    |            }
    |        } else 
  > |            wallet.transfer(mainValue);
    |
    |        for(uint256 i = 1; i <= count_to_buy; i += 1) {
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(396)

[31mViolation[0m for TODReceiver in contract 'CrowdSaleDragonETH':
    |    function withdrawAllEther() external onlyAdmin {
    |        require(wallet != 0);
  > |        wallet.transfer(address(this).balance);
    |    }
    |   
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(444)

[33mWarning[0m for TODReceiver in contract 'CrowdSaleDragonETH':
    |        return_value = msg.value - count_to_buy * crowdSaleDragonPrice;
    |        if (return_value > 0) 
  > |            msg.sender.transfer(return_value);
    |            
    |        uint256 mainValue = msg.value - return_value;
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(377)

[33mWarning[0m for UnhandledException in contract 'CrowdSaleDragonETH':
    |        return_value = msg.value - count_to_buy * crowdSaleDragonPrice;
    |        if (return_value > 0) 
  > |            msg.sender.transfer(return_value);
    |            
    |        uint256 mainValue = msg.value - return_value;
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(377)

[33mWarning[0m for UnhandledException in contract 'CrowdSaleDragonETH':
    |            require(referer != msg.sender);
    |            if (referer == address(0))
  > |                wallet.transfer(mainValue);
    |            else {
    |                if (refer50x50[referer]) {
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(385)

[33mWarning[0m for UnhandledException in contract 'CrowdSaleDragonETH':
    |            else {
    |                if (refer50x50[referer]) {
  > |                    referer.transfer(mainValue/2);
    |                    wallet.transfer(mainValue - mainValue/2);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(388)

[33mWarning[0m for UnhandledException in contract 'CrowdSaleDragonETH':
    |                if (refer50x50[referer]) {
    |                    referer.transfer(mainValue/2);
  > |                    wallet.transfer(mainValue - mainValue/2);
    |                } else {
    |                    referer.transfer(mainValue*3/10);
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(389)

[33mWarning[0m for UnhandledException in contract 'CrowdSaleDragonETH':
    |                    wallet.transfer(mainValue - mainValue/2);
    |                } else {
  > |                    referer.transfer(mainValue*3/10);
    |                    wallet.transfer(mainValue - mainValue*3/10);
    |                }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(391)

[33mWarning[0m for UnhandledException in contract 'CrowdSaleDragonETH':
    |                } else {
    |                    referer.transfer(mainValue*3/10);
  > |                    wallet.transfer(mainValue - mainValue*3/10);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(392)

[33mWarning[0m for UnhandledException in contract 'CrowdSaleDragonETH':
    |            }
    |        } else 
  > |            wallet.transfer(mainValue);
    |
    |        for(uint256 i = 1; i <= count_to_buy; i += 1) {
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(396)

[33mWarning[0m for UnhandledException in contract 'CrowdSaleDragonETH':
    |
    |        for(uint256 i = 1; i <= count_to_buy; i += 1) {
  > |            DragonsETH(mainContract).createDragon(msg.sender, block.number + timeToBorn, 0, 0, 0, 0);
    |            soldDragons++;
    |            crowdSaleDragonPrice = crowdSaleDragonPrice + priceChanger;
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(399)

[33mWarning[0m for UnhandledException in contract 'CrowdSaleDragonETH':
    |    function sendBonusEgg(address _to, uint256 _count) external onlyRole("BountyAgent") {
    |        for(uint256 i = 1; i <= _count; i += 1) {
  > |            DragonsETH(mainContract).createDragon(_to, block.number + timeToBorn, 0, 0, 0, 0);
    |            soldDragons++;
    |            crowdSaleDragonPrice = crowdSaleDragonPrice + priceChanger;
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(408)

[33mWarning[0m for UnhandledException in contract 'CrowdSaleDragonETH':
    |    function withdrawAllEther() external onlyAdmin {
    |        require(wallet != 0);
  > |        wallet.transfer(address(this).balance);
    |    }
    |   
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSaleDragonETH':
    |        return_value = msg.value - count_to_buy * crowdSaleDragonPrice;
    |        if (return_value > 0) 
  > |            msg.sender.transfer(return_value);
    |            
    |        uint256 mainValue = msg.value - return_value;
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(377)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSaleDragonETH':
    |            require(referer != msg.sender);
    |            if (referer == address(0))
  > |                wallet.transfer(mainValue);
    |            else {
    |                if (refer50x50[referer]) {
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(385)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSaleDragonETH':
    |            else {
    |                if (refer50x50[referer]) {
  > |                    referer.transfer(mainValue/2);
    |                    wallet.transfer(mainValue - mainValue/2);
    |                } else {
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(388)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSaleDragonETH':
    |                if (refer50x50[referer]) {
    |                    referer.transfer(mainValue/2);
  > |                    wallet.transfer(mainValue - mainValue/2);
    |                } else {
    |                    referer.transfer(mainValue*3/10);
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(389)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSaleDragonETH':
    |                    wallet.transfer(mainValue - mainValue/2);
    |                } else {
  > |                    referer.transfer(mainValue*3/10);
    |                    wallet.transfer(mainValue - mainValue*3/10);
    |                }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSaleDragonETH':
    |                } else {
    |                    referer.transfer(mainValue*3/10);
  > |                    wallet.transfer(mainValue - mainValue*3/10);
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(392)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSaleDragonETH':
    |            }
    |        } else 
  > |            wallet.transfer(mainValue);
    |
    |        for(uint256 i = 1; i <= count_to_buy; i += 1) {
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(396)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSaleDragonETH':
    |
    |        for(uint256 i = 1; i <= count_to_buy; i += 1) {
  > |            DragonsETH(mainContract).createDragon(msg.sender, block.number + timeToBorn, 0, 0, 0, 0);
    |            soldDragons++;
    |            crowdSaleDragonPrice = crowdSaleDragonPrice + priceChanger;
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(399)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrowdSaleDragonETH':
    |    function sendBonusEgg(address _to, uint256 _count) external onlyRole("BountyAgent") {
    |        for(uint256 i = 1; i <= _count; i += 1) {
  > |            DragonsETH(mainContract).createDragon(_to, block.number + timeToBorn, 0, 0, 0, 0);
    |            soldDragons++;
    |            crowdSaleDragonPrice = crowdSaleDragonPrice + priceChanger;
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(408)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |    internal
    |  {
  > |    role.bearer[addr] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |    internal
    |  {
  > |    role.bearer[addr] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |   */
    |  function pause() onlyPauseAdmin whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(309)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |   */
    |  function unpause() onlyPauseAdmin whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(317)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |  modifier nonReentrant() {
    |    require(!reentrancyLock);
  > |    reentrancyLock = true;
    |    _;
    |    reentrancyLock = false;
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(339)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |    reentrancyLock = true;
    |    _;
  > |    reentrancyLock = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(341)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |        for(uint256 i = 1; i <= count_to_buy; i += 1) {
    |            DragonsETH(mainContract).createDragon(msg.sender, block.number + timeToBorn, 0, 0, 0, 0);
  > |            soldDragons++;
    |            crowdSaleDragonPrice = crowdSaleDragonPrice + priceChanger;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(400)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |            DragonsETH(mainContract).createDragon(msg.sender, block.number + timeToBorn, 0, 0, 0, 0);
    |            soldDragons++;
  > |            crowdSaleDragonPrice = crowdSaleDragonPrice + priceChanger;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(401)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |        for(uint256 i = 1; i <= _count; i += 1) {
    |            DragonsETH(mainContract).createDragon(_to, block.number + timeToBorn, 0, 0, 0, 0);
  > |            soldDragons++;
    |            crowdSaleDragonPrice = crowdSaleDragonPrice + priceChanger;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(409)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |            DragonsETH(mainContract).createDragon(_to, block.number + timeToBorn, 0, 0, 0, 0);
    |            soldDragons++;
  > |            crowdSaleDragonPrice = crowdSaleDragonPrice + priceChanger;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(410)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |
    |    function changePrice(uint256 _price) external onlyAdmin {
  > |        crowdSaleDragonPrice = _price;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(418)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |
    |    function setPriceChanger(uint256 _priceChanger) external onlyAdmin {
  > |        priceChanger = _priceChanger;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(422)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |
    |    function changeWallet(address _wallet) external onlyAdmin {
  > |        wallet = _wallet;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(426)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |        require(contRefer50x50 < 50);
    |        require(refer50x50[_refer] == false);
  > |        refer50x50[_refer] = true;
    |        contRefer50x50 += 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(433)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |        require(refer50x50[_refer] == false);
    |        refer50x50[_refer] = true;
  > |        contRefer50x50 += 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(434)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdSaleDragonETH':
    |
    |    function setTimeToBorn(uint256 _timeToBorn) external onlyAdmin {
  > |        timeToBorn = _timeToBorn;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(438)

[31mViolation[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is RBACWithAdmin {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(282)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    internal
    |  {
  > |    role.bearer[addr] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    internal
    |  {
  > |    role.bearer[addr] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(106)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyPauseAdmin whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(309)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyPauseAdmin whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(317)

[31mViolation[0m for LockedEther in contract 'RBAC':
    |}
    |
  > |contract RBAC {
    |  using Roles for Roles.Role;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(133)

[31mViolation[0m for LockedEther in contract 'RBACWithAdmin':
    |}
    |
  > |contract RBACWithAdmin is RBAC {
    |  /**
    |   * A constant role name for indicating admins.
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'RBACWithAdmin':
    |    internal
    |  {
  > |    role.bearer[addr] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(97)

[31mViolation[0m for UnrestrictedWrite in contract 'RBACWithAdmin':
    |    internal
    |  {
  > |    role.bearer[addr] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(106)

[33mWarning[0m for LockedEther in contract 'ReentrancyGuard':
    |}
    |
  > |contract ReentrancyGuard {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(322)

[33mWarning[0m for LockedEther in contract 'Roles':
    |}
    |
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(86)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xbf662fb1c4ab0657bda2fbfec620f3a2e0589abf.sol(44)


