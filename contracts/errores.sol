pragma solidity ^0.8.1;
/*
Manejo de errores
Solidity proporciona varias funciones para el manejo de errores.
Generalmente ,cuando se produce un error, el estado se se revierte a su estado original.
Otras comprobaciones son para prevenir el acceso de codigo no autorizado. Los siguientes son
algunos de los metodos importantes utilizados en el manejo de errores.

- assert(bool condition) - En caso de que la condicion no nse cumpla, la llamada a este
metodo provoca un opcode invalido y cualquier cambio realizado en el estado se revierte.
Este metodo se utiliza para los errores internos.

- require (bool condition) - En caso de que la condicion no se cumpla, esta llamada al 
metodo revierte al estado original.Este metodo se utiliza para errores en las entradas
o en los estados externos.

- require (bool condition, string memory message) - Si no se cumple la condition, esta llamada
al metodo vuelve al estado original. Este metodo se debe utilizar para los errores en las 
entradas o componentes externos. Proporciona una opcion para proporcionar un mensaje
personalizado.

- revert() Este metodo aborta la ejecucion y revierte cualquier cambio realizado en el estado.

- revert(string memory reason) Este metodo aborta la ejecucion y revierte cualquier cambio realizado en el estado.
Ofrece una opcion para proporcionar un mensaje personalizado.



*/
contract manejoErrores{
    bool public sunny = true;
    bool public umbrella = false;
    uint finalCalc = 0;

    function solarCalc() public{
        require (sunny, 'It is not sunny today!');
        finalCalc += 3 ;
        assert (finalCalc !=6);
    }
    function InternalTestUnits() public view{

        assert (finalCalc !=6);
    }

    function wheatherChanger()public{
    sunny = !sunny;
    }
    
    function getCalc() public view returns (uint) {
        return finalCalc;
    }
-
    function bringUmbrella() public {
        if(!sunny) {
            umbrella = true;
        } else {
            revert('No need to bring an umbrella today');
        
        }
    }
} 
contract Vendedor{
        address seller;
        modifier onlySeller(){
            require(msg.sender == seller,
            'Only seller can sell this!');
            _;
        }
    function becomeSeller()public {
        seller = msg.sender;
    }
    function sell(uint amount) payable public onlySeller{
        if(amount > msg.value){
            revert('There is not enough ether provided!');
        }
    }
}


