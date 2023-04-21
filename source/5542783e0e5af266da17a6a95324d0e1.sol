pragma solidity ^0.4.7;

contract InstantSurvey{
    
    int[] public numberOfSurveys;
    
    Survey[] public question1;
    Survey[] public question2;
    Survey[] public question3;
    Survey[] public question4;
    Survey[] public question5;
    Survey[] public question6;
    
    uint public numQuestions = 6;
    
    event SurveySubmitted(string name);
    
    struct Survey{
        string name;
        string answer;
        string hashAnswer;
    }
    
    function InstantSurvey(){
        for(uint i=0; i<7; i++){
            numberOfSurveys.push(0);
        }
    }
    
    function submitSurvey(uint256 index, string name, string answer, string hash){
        
        if(index > numQuestions) throw;
        
        if(index==0){
            question1.push(Survey({
            name : name,
            answer : answer,
            hashAnswer : hash
            }));
            SurveySubmitted(name);
        }else if(index==1){
            question2.push(Survey({
            name : name,
            answer : answer,
            hashAnswer : hash
            }));
            SurveySubmitted(name);
        }else if(index==2){
            question3.push(Survey({
            name : name,
            answer : answer,
            hashAnswer : hash
            }));
            SurveySubmitted(name);
        }else if(index==3){
            question4.push(Survey({
            name : name,
            answer : answer,
            hashAnswer : hash
            }));
            SurveySubmitted(name);
        }else if(index==4){
            question5.push(Survey({
            name : name,
            answer : answer,
            hashAnswer : hash
            }));
            SurveySubmitted(name);
        }else if(index==5){
            question6.push(Survey({
            name : name,
            answer : answer,
            hashAnswer : hash
            }));
            SurveySubmitted(name);
        }
        numberOfSurveys[index]++;
    }
    
    function deleteAllSurveys(){
        question1.length = 0;
        question2.length = 0;
        question3.length = 0;
        question4.length = 0;
        question5.length = 0;
        question6.length = 0;
        
        for(uint i=0; i<numQuestions; i++){
            numberOfSurveys[i] = 0;
        }
    }
    
    function deleteSurvey(uint256 index){
        if(index > numQuestions) throw ;
        
        if(index==0){
            question1.length = 0;
        }else if(index==1){
            question2.length = 0;
        }else if(index==2){
            question3.length = 0;
        }else if(index==3){
            question4.length = 0;
        }else if(index==4){
            question5.length = 0;
        }else if(index==5){
            question6.length = 0;
        }
        
        numberOfSurveys[index] = 0 ;
     }
    
}