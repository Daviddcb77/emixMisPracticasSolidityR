pragma solidity >= 0.8.1;
/* El mapeo es un tipo de referencia como los arrays y los structs
    La siguiente es la sintaxis para declarar un tipo de mapeo.
    
    mapping(_Keytype => _ValueType)
    Donde 

    _KeyType -puede ser cualquier tipo incorpotado, ademas de bytes y cadenas.
    No se permiten tipos de referencia ni objetos complejos.
    
    _ValueType  -Puede ser cualquier tipo

    Consideraciones
    Los mapeos solo pueden tener tipo de almacenamiento y generalmente se utilizan para las 
    variables de estado. 
    El mapeo puede ser marcado como publico. Solidity crea un getter automaticamente para ello.

*/
/*
    contract aprendeMapping{
        mapping (address => uint)  public miMap;
        function getAddress(address _addr) public view returns (uint){
            return miMap[_addr];
        }
        function setAddress(address _addr , uint _i) public {
            miMap[_addr] = _i;
        }
        function deleteAddress(address _addr) public{
            delete miMap[_addr];
        }


        
    

    mapping (uint => Movie) movie;
    mapping (address => mapping (uint => Movie)) public myMovie;

struct Movie {
    string title;
    string director;
}

function addMovie (uint id , string memory title , string memory director) public{
     movie[id]=Movie(title, director);
}
  function addMyMovie (uint id,string memory title , string memory director) public{
      myMovie[msg.sender][id] = Movie(title, director);
  }
   
    }
    */
    contract practicandoMapeo{
        mapping (address => uint) public myMap;

        function getAddres(address _addr)public view returns(uint){
            return myMap[_addr];
        }
      function setAddress(address _addr , uint _i) public{
        myMap[_addr]=_i;
      } 
      function deleteAddress(address _addr)public {
        delete myMap[_addr];
      }

      mapping (uint => Movie)movie;
      mapping (address => mapping(uint => Movie))public myMovie;
    
        struct Movie{
            string title;
            string author;
        }

        function addMovie(uint id, string memory title, string memory author)public{
            movie[id]=Movie(title,author);
        }

        function addMyMovie(uint id, string memory title, string memory author)public{
            myMovie[msg.sender][id]=Movie(title, author);
        }
    }
 