// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title GastronomiaItaliana
 * @dev Registro historico de la cocina italiana con sistema de Likes y consulta por ID.
 */
contract GastronomiaItaliana {

    struct Plato {
        string nombre;
        string descripcion;
        uint256 likes;
    }

    // Mapping que guarda cada plato por un numero de ID (1, 2, 3...)
    mapping(uint256 => Plato) public menuHistorico;
    uint256 public totalPlatos;

    constructor() {
        // Inauguramos el contrato con el Plato 1: La Pizza Margherita
        registrarPlato("Pizza Margherita", "Tomate San Marzano, mozzarella de bufala, albahaca fresca y aceite.");
    }

    // Funcion para registrar un plato nuevo en el historial
    function registrarPlato(string memory _nombre, string memory _descripcion) public {
        string memory validacion = string(abi.encodePacked(_nombre, ": ", _descripcion));
        require(bytes(validacion).length <= 200, "El texto es demasiado largo (max 200 caracteres)");

        totalPlatos++;
        menuHistorico[totalPlatos] = Plato({
            nombre: _nombre,
            descripcion: _descripcion,
            likes: 0
        });
    }

    // Funcion para dar "Me gusta" a una delicia italiana
    function darLikeAlPlato(uint256 _id) public {
        require(_id > 0 && _id <= totalPlatos, "El plato no existe.");
        menuHistorico[_id].likes += 1;
    }

    // Funcion para consultar cualquier plato del historial (1, 2, 3...)
    function consultarPlato(uint256 _id) public view returns (string memory nombre, string memory descripcion, uint256 likes) {
        require(_id > 0 && _id <= totalPlatos, "Ese numero de plato no esta registrado.");
        Plato storage p = menuHistorico[_id];
        return (p.nombre, p.descripcion, p.likes);
    }
}
