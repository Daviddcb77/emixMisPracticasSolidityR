// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

/*
El contrato abstracto es aquel que contiene al menos una funcion sin ninguna implementacion
Este tipo de contrato se utiliza como contrato base. Generalmente un contrato abstracto contiene tanto funciones
implementadas como abstracta. El contrato derivado implementara la funcion abstracta y utilizara las funciones
existentes cuando sea necesario.

En caso de que un contrato derivado no implemente la funcion abstracta, este contrato se marcara 
como abstracto
*/

//Contrato Base
abstract contract X{
    //La funcion no tiene implementacion,debemos marcarla como 'virtual'
    function y() public view virtual returns(string memory);

}

//Contrato derivado

contract Y is X{
    function y() public override view returns(string memory){
        return 'hola';
    }
}