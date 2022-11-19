// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Desenvolva um contrato que guarde em uma variável o endereço do criador do contrato. Crie neste contrato uma função que retorne o endereço do dono quando invocada.

contract Owner {
    // coding convention to uppercase constant variables
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}
