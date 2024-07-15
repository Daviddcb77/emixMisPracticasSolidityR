//pragma solidity >= 0.8.1;
/*
Definir las funciones de emergencia. 
1. No puede tener un nombre (anonimo).
2. No toma ninguna entrada.
3. No devulve ninguna salida.
4. Debe ser declarado como externo.

¿Porque utilizarlo?Cuando se llama a funciones que no existen - o se envia 
ether a un contrato mediante send, transfer o call.

enunciado: EL metodo de envio recibe 2300 de gas pero el metodo de llamada 
recibe mas  (Todo el gas)
*/

pragma solidity >= 0.8.1;
/*
contract fallBack{
   event Log(uint gas) ;
   fallback ()external payable{
    emit Log(gasleft());
   }

   function getBalance()public view returns(uint){
    return address(this).balance;
   }
}
// El nuevo contrato enviara ether al contrato fallback y este activara las funciones fallback
contract sendToFallBack{
    function transToFallback(address payable _to)public payable{

        //Enviaremos dinero con el metodo transfer
        _to.transfer(msg.value);
    }

    function callFallBack(address payable _to)public payable{
     //Enviar dinero al metodo fallBack
      (bool sent,) =  _to.call{value:msg.value}('');
      require (sent, 'Failed to send!');
    }
}
*/
contract fallBack{
    event Log(uint gas);
    fallback()external payable{
        emit Log(gasleft());
    }
    function getBalance()public view returns(uint){
        return address(this).balance;
    }
 }
contract sendFallback{
   function transferCallback(address payable _to)public payable{
    _to.transfer(msg.value);

   } 
   function callToFallBack(address payable _to)public payable{
    (bool sent,)=_to.call{value:msg.value}('');
    require(sent,'Failed to send!');
   }
}