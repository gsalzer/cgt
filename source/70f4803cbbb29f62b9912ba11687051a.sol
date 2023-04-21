contract ProofOfPresence {
    
    struct Student{
        address addr;
        uint id;    
    }
    
    Student[1000] public students;
    uint public total = 0;
    
    function register(uint ID) {
        students[total++] = Student(msg.sender, ID);
    }
    
}