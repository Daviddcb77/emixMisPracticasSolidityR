pragma solidity ^0.8.1;
/*
La interfaz son similares a los contratos abstractos y se crean utilizando la palalbra clave interface.
Las siguientes son las caracteristicas clave de una interfaz.

-La interfaz no puede tener ninguna funcion con implementacion
-Las funciones de una interfaz solo pueden ser de tipo externo.
-La interfaz no puede tener un constructor.
-La interfaz no puede tener variables de estado.
-La interfaz puede tener un enum, structs a los que puede acceder utilizando la notacion de puntos
del nombre de la interfaz

*/

contract Counter {

     uint  public count;

    function increment() external{
       
        
        count +=1;


    }
}

//Como interactuamos con este contrato? Interfaces!!

interface ICounter{
    function count() external view returns(uint);
    function increment() external;
}

contract MiContrato{
    function incrementCounter(address _counter)external{
        ICounter(_counter).increment();
    }
    function getCount(address _counter)external view returns (uint){
        return ICounter(_counter).count();
    }
}