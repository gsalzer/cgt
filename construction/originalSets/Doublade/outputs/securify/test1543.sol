Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:Address
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:Blacklist
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:HasNoEther
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:MultiOwnable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:TimelockToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:luxbio_bio
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol:luxbio_dapp
[33mWarning[0m for LockedEther in contract 'Address':
    | * Utility library of inline functions on addresses
    | */
  > |library Address {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(543)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |    * @dev Basic version of StandardToken, with no allowances.
    |    */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(106)

[33mWarning[0m for LockedEther in contract 'Blacklist':
    |}
    |
  > |contract Blacklist is MultiOwnable {
    |   
    |    mapping(address => bool) blacklisted;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(346)

[31mViolation[0m for MissingInputValidation in contract 'Blacklist':
    |    address[10] public chkOwnerList;
    |
  > |    mapping (address => bool) public owners;
    |    
    |    event AddOwner(address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'Blacklist':
    |    * @param node  Check whether the user at a certain node is in a blacklist
    |    */
  > |    function isPermitted(address node) public view returns (bool) {
    |        return !blacklisted[node];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(362)

[31mViolation[0m for MissingInputValidation in contract 'Blacklist':
    |    * @param node Process blacklisting. Put the user in the blacklist.   
    |    */
  > |    function blacklist(address node) public onlyOwner returns (bool) {
    |        blacklisted[node] = true;
    |        emit Blacklisted(node);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(370)

[31mViolation[0m for MissingInputValidation in contract 'Blacklist':
    |    * @param node Remove the user from the blacklist.   
    |    */
  > |    function unblacklist(address node) public onlySuperOwner returns (bool) {
    |        blacklisted[node] = false;
    |        emit Whitelisted(node);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(381)

[33mWarning[0m for MissingInputValidation in contract 'Blacklist':
    |
    |contract MultiOwnable {
  > |    address public hiddenOwner;
    |    address public superOwner;
    |    address public tokenExchanger;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'Blacklist':
    |contract MultiOwnable {
    |    address public hiddenOwner;
  > |    address public superOwner;
    |    address public tokenExchanger;
    |    address[10] public chkOwnerList;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'Blacklist':
    |    address public hiddenOwner;
    |    address public superOwner;
  > |    address public tokenExchanger;
    |    address[10] public chkOwnerList;
    |
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'Blacklist':
    |    address public superOwner;
    |    address public tokenExchanger;
  > |    address[10] public chkOwnerList;
    |
    |    mapping (address => bool) public owners;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'Blacklist':
    |    }
    |
  > |    function changeSuperOwnership(address newSuperOwner) public onlyHiddenOwner returns(bool) {
    |        require(newSuperOwner != address(0));
    |        superOwner = newSuperOwner;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'Blacklist':
    |    }
    |    
  > |    function changeHiddenOwnership(address newHiddenOwner) public onlyHiddenOwner returns(bool) {
    |        require(newHiddenOwner != address(0));
    |        hiddenOwner = newHiddenOwner;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(283)

[33mWarning[0m for MissingInputValidation in contract 'Blacklist':
    |    }
    |
  > |    function addOwner(address owner, uint8 num) public onlySuperOwner returns (bool) {
    |        require(num < 10);
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(290)

[33mWarning[0m for MissingInputValidation in contract 'Blacklist':
    |    }
    |
  > |    function setTEx(address tex) public onlySuperOwner returns (bool) {
    |        require(tex != address(0));
    |        tokenExchanger = tex;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'Blacklist':
    |    }
    |
  > |    function deleteOwner(address owner, uint8 num) public onlySuperOwner returns (bool) {
    |        require(chkOwnerList[num] == owner);
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(307)

[31mViolation[0m for UnrestrictedWrite in contract 'Blacklist':
    |    */
    |    function blacklist(address node) public onlyOwner returns (bool) {
  > |        blacklisted[node] = true;
    |        emit Blacklisted(node);
    |
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklist':
    |    function changeSuperOwnership(address newSuperOwner) public onlyHiddenOwner returns(bool) {
    |        require(newSuperOwner != address(0));
  > |        superOwner = newSuperOwner;
    |        emit ChangeSuperOwner(superOwner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklist':
    |    function changeHiddenOwnership(address newHiddenOwner) public onlyHiddenOwner returns(bool) {
    |        require(newHiddenOwner != address(0));
  > |        hiddenOwner = newHiddenOwner;
    |        emit ChangeHiddenOwner(hiddenOwner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklist':
    |        require(owner != address(0));
    |        require(chkOwnerList[num] == address(0));
  > |        owners[owner] = true;
    |        chkOwnerList[num] = owner;
    |        emit AddOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklist':
    |        require(chkOwnerList[num] == address(0));
    |        owners[owner] = true;
  > |        chkOwnerList[num] = owner;
    |        emit AddOwner(owner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklist':
    |    function setTEx(address tex) public onlySuperOwner returns (bool) {
    |        require(tex != address(0));
  > |        tokenExchanger = tex;
    |        emit SetTex(tex);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklist':
    |        require(chkOwnerList[num] == owner);
    |        require(owner != address(0));
  > |        owners[owner] = false;
    |        chkOwnerList[num] = address(0);
    |        emit DeleteOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklist':
    |        require(owner != address(0));
    |        owners[owner] = false;
  > |        chkOwnerList[num] = address(0);
    |        emit DeleteOwner(owner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'Blacklist':
    |    */
    |    function unblacklist(address node) public onlySuperOwner returns (bool) {
  > |        blacklisted[node] = false;
    |        emit Whitelisted(node);
    |
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(382)

[33mWarning[0m for DAOConstantGas in contract 'HasNoEther':
    |   */
    |    function reclaimEther() external onlySuperOwner returns(bool) {
  > |        superOwner.transfer(address(this).balance);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(340)

[33mWarning[0m for LockedEther in contract 'HasNoEther':
    |}
    |
  > |contract HasNoEther is MultiOwnable {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(317)

[31mViolation[0m for MissingInputValidation in contract 'HasNoEther':
    |    address[10] public chkOwnerList;
    |
  > |    mapping (address => bool) public owners;
    |    
    |    event AddOwner(address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |
    |contract MultiOwnable {
  > |    address public hiddenOwner;
    |    address public superOwner;
    |    address public tokenExchanger;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |contract MultiOwnable {
    |    address public hiddenOwner;
  > |    address public superOwner;
    |    address public tokenExchanger;
    |    address[10] public chkOwnerList;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |    address public hiddenOwner;
    |    address public superOwner;
  > |    address public tokenExchanger;
    |    address[10] public chkOwnerList;
    |
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |    address public superOwner;
    |    address public tokenExchanger;
  > |    address[10] public chkOwnerList;
    |
    |    mapping (address => bool) public owners;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |    }
    |
  > |    function changeSuperOwnership(address newSuperOwner) public onlyHiddenOwner returns(bool) {
    |        require(newSuperOwner != address(0));
    |        superOwner = newSuperOwner;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |    }
    |    
  > |    function changeHiddenOwnership(address newHiddenOwner) public onlyHiddenOwner returns(bool) {
    |        require(newHiddenOwner != address(0));
    |        hiddenOwner = newHiddenOwner;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(283)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |    }
    |
  > |    function addOwner(address owner, uint8 num) public onlySuperOwner returns (bool) {
    |        require(num < 10);
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(290)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |    }
    |
  > |    function setTEx(address tex) public onlySuperOwner returns (bool) {
    |        require(tex != address(0));
    |        tokenExchanger = tex;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |    }
    |
  > |    function deleteOwner(address owner, uint8 num) public onlySuperOwner returns (bool) {
    |        require(chkOwnerList[num] == owner);
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(307)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * @dev Transfer all Ether held by the contract to the owner.
    |   */
  > |    function reclaimEther() external onlySuperOwner returns(bool) {
    |        superOwner.transfer(address(this).balance);
    |
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(339)

[31mViolation[0m for TODAmount in contract 'HasNoEther':
    |   */
    |    function reclaimEther() external onlySuperOwner returns(bool) {
  > |        superOwner.transfer(address(this).balance);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(340)

[31mViolation[0m for TODReceiver in contract 'HasNoEther':
    |   */
    |    function reclaimEther() external onlySuperOwner returns(bool) {
  > |        superOwner.transfer(address(this).balance);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(340)

[33mWarning[0m for UnhandledException in contract 'HasNoEther':
    |   */
    |    function reclaimEther() external onlySuperOwner returns(bool) {
  > |        superOwner.transfer(address(this).balance);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(340)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HasNoEther':
    |   */
    |    function reclaimEther() external onlySuperOwner returns(bool) {
  > |        superOwner.transfer(address(this).balance);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |    function changeSuperOwnership(address newSuperOwner) public onlyHiddenOwner returns(bool) {
    |        require(newSuperOwner != address(0));
  > |        superOwner = newSuperOwner;
    |        emit ChangeSuperOwner(superOwner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |    function changeHiddenOwnership(address newHiddenOwner) public onlyHiddenOwner returns(bool) {
    |        require(newHiddenOwner != address(0));
  > |        hiddenOwner = newHiddenOwner;
    |        emit ChangeHiddenOwner(hiddenOwner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |        require(owner != address(0));
    |        require(chkOwnerList[num] == address(0));
  > |        owners[owner] = true;
    |        chkOwnerList[num] = owner;
    |        emit AddOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |        require(chkOwnerList[num] == address(0));
    |        owners[owner] = true;
  > |        chkOwnerList[num] = owner;
    |        emit AddOwner(owner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |    function setTEx(address tex) public onlySuperOwner returns (bool) {
    |        require(tex != address(0));
  > |        tokenExchanger = tex;
    |        emit SetTex(tex);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |        require(chkOwnerList[num] == owner);
    |        require(owner != address(0));
  > |        owners[owner] = false;
    |        chkOwnerList[num] = address(0);
    |        emit DeleteOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |        require(owner != address(0));
    |        owners[owner] = false;
  > |        chkOwnerList[num] = address(0);
    |        emit DeleteOwner(owner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(311)

[33mWarning[0m for LockedEther in contract 'MultiOwnable':
    |}
    |
  > |contract MultiOwnable {
    |    address public hiddenOwner;
    |    address public superOwner;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(241)

[31mViolation[0m for MissingInputValidation in contract 'MultiOwnable':
    |    address[10] public chkOwnerList;
    |
  > |    mapping (address => bool) public owners;
    |    
    |    event AddOwner(address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwnable':
    |
    |contract MultiOwnable {
  > |    address public hiddenOwner;
    |    address public superOwner;
    |    address public tokenExchanger;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwnable':
    |contract MultiOwnable {
    |    address public hiddenOwner;
  > |    address public superOwner;
    |    address public tokenExchanger;
    |    address[10] public chkOwnerList;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwnable':
    |    address public hiddenOwner;
    |    address public superOwner;
  > |    address public tokenExchanger;
    |    address[10] public chkOwnerList;
    |
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwnable':
    |    address public superOwner;
    |    address public tokenExchanger;
  > |    address[10] public chkOwnerList;
    |
    |    mapping (address => bool) public owners;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwnable':
    |    }
    |
  > |    function changeSuperOwnership(address newSuperOwner) public onlyHiddenOwner returns(bool) {
    |        require(newSuperOwner != address(0));
    |        superOwner = newSuperOwner;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwnable':
    |    }
    |    
  > |    function changeHiddenOwnership(address newHiddenOwner) public onlyHiddenOwner returns(bool) {
    |        require(newHiddenOwner != address(0));
    |        hiddenOwner = newHiddenOwner;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(283)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwnable':
    |    }
    |
  > |    function addOwner(address owner, uint8 num) public onlySuperOwner returns (bool) {
    |        require(num < 10);
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(290)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwnable':
    |    }
    |
  > |    function setTEx(address tex) public onlySuperOwner returns (bool) {
    |        require(tex != address(0));
    |        tokenExchanger = tex;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'MultiOwnable':
    |    }
    |
  > |    function deleteOwner(address owner, uint8 num) public onlySuperOwner returns (bool) {
    |        require(chkOwnerList[num] == owner);
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |    function changeSuperOwnership(address newSuperOwner) public onlyHiddenOwner returns(bool) {
    |        require(newSuperOwner != address(0));
  > |        superOwner = newSuperOwner;
    |        emit ChangeSuperOwner(superOwner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |    function changeHiddenOwnership(address newHiddenOwner) public onlyHiddenOwner returns(bool) {
    |        require(newHiddenOwner != address(0));
  > |        hiddenOwner = newHiddenOwner;
    |        emit ChangeHiddenOwner(hiddenOwner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |        require(owner != address(0));
    |        require(chkOwnerList[num] == address(0));
  > |        owners[owner] = true;
    |        chkOwnerList[num] = owner;
    |        emit AddOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |        require(chkOwnerList[num] == address(0));
    |        owners[owner] = true;
  > |        chkOwnerList[num] = owner;
    |        emit AddOwner(owner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |    function setTEx(address tex) public onlySuperOwner returns (bool) {
    |        require(tex != address(0));
  > |        tokenExchanger = tex;
    |        emit SetTex(tex);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |        require(chkOwnerList[num] == owner);
    |        require(owner != address(0));
  > |        owners[owner] = false;
    |        chkOwnerList[num] = address(0);
    |        emit DeleteOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiOwnable':
    |        require(owner != address(0));
    |        owners[owner] = false;
  > |        chkOwnerList[num] = address(0);
    |        emit DeleteOwner(owner);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(311)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(31)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= balances[msg.sender]);
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        returns (bool)
    |    {
  > |        allowed[msg.sender][_spender] = (
    |        allowed[msg.sender][_spender].add(_addedValue));
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint256 oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x621c1528829b70bfe6df7fa82251ed7271ab8104.sol(234)


