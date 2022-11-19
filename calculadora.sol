pragma solidity ^0.8.10;

// Desenvolva uma calculadora que realize as 4 operações básicas sobre dois 
// números inteiros positivos. Considerando que estas operações 
// simplesmente vão receber argumentos e retornar os resultados, 
// utilize  a palavra reservada pure para estas funções.

contract Calculadora {
    function somar(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function subtrair(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }

    function multiplicar(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    function dividir(uint256 a, uint256 b) public pure returns (uint256) {
        return a / b;
    }
}
