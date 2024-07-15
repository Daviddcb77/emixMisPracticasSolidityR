pragma solidity >= 0.8.1;
/*
Una funcion hash crptografica (CHF) es un algoritmo matematico que asigna datos de tamaño arbitrario
 (a menudo llamado "mensaje) a una matriz de bits de tamaño fijo (el 'valor hash','hash'o 'compendio'
Es una funcion unidireccional, es decir, una funcion en la que practicamente inviable invertir o invertir

Solidity tambien ofrece funciones criptograficas incorporadas. Los siguientes son metodos importantes:

keccak256(bytes memory) devuelve (bytes32) -calcula el hash Keccak-256 de la entrada.

sha256(bytes memory) devuelve (bytes32) - calcula el hash SHA-256 de la entrada.

ripemd160(bytes memory) devuelve (bytes20) - calcula el hash RIPEMD-160 de la entrada.

Keccak es una funcion de hash lider,diseñada por diseñadores no pertenecientes de la NSA
Keccak es una familia de funciones de esponja criptograficas y esta diseñada como alternativa a SHA-256


Ejercicio (Asegurar la funcionalidad aleatoria de la manipulacion de los mineros):

1. Cree un contrato Oracle con un tipo de datos de direccion llamado admin y un entero público llamado rand.
2.Cree un constructor y establezca el admin al llamador actual.
3.Escribe una funcion que tome la entrada de un entero y establezca la variable de estado rand a ese entero.
4.Exigir que el llamador actual sea igual al admin
5.Establecer el contrato oracle a una nueva variable llamada oracle en el contrato GenerateRandomNumber
6.Escribir un constructor en el contrato GenerateRandomNumber que establezca el oraculo a una dirreccion.
7.Modificar el retorno de hash para que los mineros de gran leccion de la manipulacion de control a la generac
8. 8. Despliegue con exito y pruebe los resultados.

*/





contract Oracle{
    address admin;
    uint public rand;
    
    constructor() public{
        admin = msg.sender;
    }

    function feedRand(uint _rand)external{
        require(msg.sender == admin);
        rand= _rand;
    }
}

contract GenerateRandomNumber{
    Oracle oracle;

    constructor(address oracleAddress){
        oracle=Oracle(oracleAddress);

    }
    //Crear numero aleatorio
    // modulo (%) - por lo que calculando contra el resto seremos capaces de producir un numero aleatorio dentro de un rango

    function randMod(uint range )external view returns(uint){
        return uint(keccak256(abi.encodePacked(oracle.rand(),block.timestamp , block.difficulty,msg.sender)))% range;
    }

}


