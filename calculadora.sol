pragma solidity ^0.8.10;

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
