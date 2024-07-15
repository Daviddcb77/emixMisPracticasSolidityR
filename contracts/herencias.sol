pragma solidity >= 0.8.1;

/* La herencia es una forma de entender la funcionalidad de un contrato.
Solidity soporta tanto la herencia simple como la multiple. A continuacion. Los aspectos mas destacados.

Observe: El contrato en solidity es similar a una Clase en C++ un plano para un ojteto


Las  classes pueden heredar y los contratos tambien.

Constructor - Una fucion especial declarada con la palabra constructor que sera
ejecutara una vez por contrato y se invoca cuando se cree un contrato.

Ejerciccio crear dos contratos A y B

1. El contrato A debe tener una var de estado llamadq innerval inicializada a 100
2. Crear una funcion totalmente accesible llamada innerAddten que devuelva 10 a cualquier entrada dada
3. El contrato B debe heredar del contrato A
4. El contrato B debe tener una fumcion llamada outerAddten que devuelva la calculacion de la funcion innerAddTen del contrato A a cualquier entrada dada
5. crear una funcion en el contrato B que devuelva el valor innerVal del contrato A.
*/

contract A{
    uint innerVal = 100;
    function innerAddTen(uint val) public pure returns (uint){
        return val + 10;

    }
}

contract B is A{
    function outerAddten(uint val) public pure returns (uint){
        return A.innerAddTen(val);
        
    }
    function getInnerVal()public view returns(uint){
        return A.innerVal;
    }
}
