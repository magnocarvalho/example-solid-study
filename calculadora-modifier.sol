pragma solidity ^0.8.10;

// Desenvolva uma calculadora que realize as 4 operações básicas sobre dois
// números inteiros positivos. Considerando que estas operações
// simplesmente vão receber argumentos e retornar os resultados,
// utilize  a palavra reservada pure para estas funções.

contract CalculadoraComPAgamento {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier payForTransaction() {
        require(msg.value >= 1 wei, "You must send 1 wei to pay the owner");
        address payee = msg.sender;
        bool sent = payable(owner).send(1);
        _;
    }

    function somar(uint256 a, uint256 b)
        public
        payable
        payForTransaction
        returns (uint256)
    {
        return a + b;
    }

    function subtrair(uint256 a, uint256 b)
        public
        payable
        payForTransaction
        returns (uint256)
    {
        return a - b;
    }

    function multiplicar(uint256 a, uint256 b)
        public
        payable
        payForTransaction
        returns (uint256)
    {
        return a * b;
    }

    function dividir(uint256 a, uint256 b)
        public
        payable
        payForTransaction
        returns (uint256)
    {
        return a / b;
    }
}
