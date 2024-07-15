pragma solidity >= 0.8.1;
/*
Los tipos struct se utlizan para representar  un registro. Supongamos que
quiere llevar un registro de sus libros en una biblioteca. Es posible que
quiera hacer un seguimiento de los siguientes atributos sobre cada libro.

TITULO
AUTOR
TEMA DEL LIBRO
ID DEL LIBRO
*/

 contract structs{
     struct Libro {
         string titulo;
         string autor;
         string  tema;
         uint id_libro;

     }
     Libro libro;
     function setBook()public {
         libro= Libro('Historia interminable', 'Micahel Ende', 'Aventuras', 1 );
     }
    function getBook() public view returns(string memory){
        return libro.titulo ;
    }

    }