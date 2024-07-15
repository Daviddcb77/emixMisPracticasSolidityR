pragma solidity ^0.8.1;

/*
Las librerias son similares a los contratos, pero estan pensadas principalmente para su reutilizacion
-Las funciones de la biblioteca pueden ser llamadas directamente si no modifican el estado. Esto signi
-La biblioteca no puede ser destruida ya que se asume que no tiene estado
-Una biblioteca  no puede tener variables de estado.
-Una biblioteca no puede heredar ningun elemento.
-Una biblioteca no puede heredar

*/

library Search{
    //queremos loopear para retornar el valor de indice de un elemento que estamos buscando.
    function indexOf(uint[] storage self , uint value) public view returns(uint){
        for(uint i=0;i<self.length;i++) if (self[i]==value) return i;
    }
}

contract Test{
   // Usamos A (libreria) Para B (otro elemento )
   uint[] data;
   constructor() public{
    data.push(1);
    data.push(2);
    data.push(3);
    data.push(4);
    data.push(5);
   }
   function isValuePresent(uint val) external view returns(uint){
    uint value = val;
    uint index = Search.indexOf(data, value);
    return index;
   }
}
