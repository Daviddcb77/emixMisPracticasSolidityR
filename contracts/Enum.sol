
/*
Los enums restringen una variable a uno de los pocos valores predefinidos
Los valores de esta lista numerada se denominan enums
Con el uso de enums es posible reducir el numero de errores en su codigo.
Por ejemplo, si consideamos una apliccion para una tienda de zumos frescos,
seria possible restringir el tamaño del vaso a pequeño , mediano y grande.
Esto aseguraria que no permetiera a nadie pedir cualquier tamaño que no sea pequeño ,mediano , grande.
*/
pragma solidity >= 0.8.1;

 contract enums{
    enum tamanoPatatasFritas {GRANDE, MEDIANO, PEQUENO}
   tamanoPatatasFritas choice;
   tamanoPatatasFritas constant defaultChoice = tamanoPatatasFritas.MEDIANO;
    
    function setSmall()public{
        choice=tamanoPatatasFritas.PEQUENO;
    }
 
   function getChoice() public view returns(tamanoPatatasFritas){
     return choice;
    }
    function getDefaultChoice()public view returns (uint){
        return uint(defaultChoice);
    }

 }
