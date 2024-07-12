pragma solidity >= 0.8.1;
contract Member{

    string name;
    uint age;

    constructor (string memory _name , uint _age){
        name = _name;
        age = _age;
        
    }

}
contract Instructor is Member("David",9){
    function getName() public view returns (string memory ){
        return name;
        
    }
}
  
