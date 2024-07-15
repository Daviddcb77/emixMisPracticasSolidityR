pragma solidity >= 0.8.1;
contract matrices{
    uint [] public miMatriz;
    uint [] public miMatriz1;
    uint [200]public  miMatrizDeTipoFijo;

    //push
    
    
    //delete
function push(uint elementos) public {
    miMatriz.push(elementos);

}
//pop

function pop() public{
    miMatriz.pop();
}
//length
function getLength() public view returns(uint){
    return miMatriz.length;
}
 //Borrar elemento de una matriz.
 //1. - Crear matriz 
//Crear matriz llamada remover elemento, se encarga de configurar el indice al ultimo elemento de la matriz

uint[] public cambiarMatriz;

    function removerElemento(uint i) public {
        cambiarMatriz[i]=cambiarMatriz[cambiarMatriz.length -1];
        
        cambiarMatriz.pop();  
        }

    function test() public{
        cambiarMatriz.push(1);
        cambiarMatriz.push(2);
        cambiarMatriz.push(3);
        cambiarMatriz.push(4);
        cambiarMatriz.push(5);
    }

    function getArray() public view returns (uint){
        return cambiarMatriz.length;
    }

    

}