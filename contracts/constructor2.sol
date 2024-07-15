pragma solidity >= 0.8.1;

contract member {

    string name;
    uint age;

    constructor( string memory _name , uint _age)public {
        name = _name;
        age =_age; 
        
    }
}
contract Instructor is member{
    constructor(string memory n, uint a) member (n,a)public{}
    function getName()public view returns (string memory){
        return name;
        
    }
    
}