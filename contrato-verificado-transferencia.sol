// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Desenvolva um contrato com apenas uma função, denominada payTheOwner().
// Toda vez que um usuário invocar esta função, 1 wei será transferido do usuário que
// fez a invocação para o dono do contrato. É necessário verificar se o chamador
// realmente transferiu este 1 wei na transação.

contract Owner {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    fallback() external payable {}

    receive() external payable {}

    function payTheOwner() public payable {
        address payee = msg.sender;
        require(msg.value >= 1 wei, "You must send 1 wei to pay the owner");

        bool sent = payable(owner).send(msg.value);
    }
}
