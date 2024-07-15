// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.1;
/*
El contrato en Solidity es similar a una clase en C++. Un contrato tiene las siguientes propiedades.
Constructor - Una funcion especial declarada con la palabra clave constructor que se ejecutara una vez por contrato ...
Variables de Estado -Variables por contrato para almacenar el estado de contrato.
Funciones - Funciones por contrato que pueden modificar las variables de estado  para alterar el estado de un contrato

Cuantificadores de visibilidad
A continuacion se presentan varios cuantificadores de visibilidad para las funciones/variables de estado de un contrato

external - Las funciones externas estan destinadas a ser llamadas por otros contratos. No pueden ser llamadas
public - Las funciones/variables publicas pueden utilizarse tanto externa como internamente. Para la variable de estado
internal - Las funciones variables internas solo pueden ser utilizadas internamente o por contratos derivados.
private - Las funciones/variables privadas solo pueden ser utilizadas internamente y ni siquiera por los contratos derivados

*/
contract A{
    uint public data = 10;
    function x() external pure returns(uint){
        uint newData = 25;
        return newData;
    }

    function l() public view returns(uint){
        uint newData = data - 3;
        return newData;
    }
    function y() public view returns(uint){
        return data;
    }

}

contract B{
    A a = new A();
    function f() public view returns(uint){
        return a.l();
    }

}

contract C{
    //Variable de estado privada
    
    uint private data;

    //variable de estado publico

    uint public info;

    constructor() public{
        info = 10;

        
    }

    //Function privada

    function increment(uint a) private pure returns(uint){
        return a + 1;
    }

    //Funcion publica
    function updateData(uint a) public { data = a;}
    function getData() public view returns(uint) { return data;}
    function compute (uint a , uint b) internal  pure returns(uint){ return a + b; }





}

contract D{
     C c = new C();
    function readInfo() public view returns(uint){
       
        return c.info();
    }
}

contract E is C {
    uint private result;
    // Lo convertimos en una copia de  contrato C pero  en privado
    C private c;

    //Creamos un constructor para convertir el contrato en publico

    constructor() public {
        c = new C();
    }

    function getComputedResult() public{
        result = compute(23 , 5);
    }
    function getResult() public view returns(uint) {return result;}
    function getNewData() public view returns(uint) {return c.info();}

}