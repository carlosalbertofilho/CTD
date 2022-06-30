/* jshint esversion: 6 */
const { soma, subtracao, divisao, multiplicacao } = require('../calc.js');

describe('Testes de Somas', () => {
    
    test('Soma de 2 numeros', () =>{
        expect(soma(1,2)).toBe(3);
    });
    
    test('Soma de 0', () =>{
        expect(soma(0,0)).toBe(0);
    });

    test('Soma de null', () =>{
        expect(soma(null,null)).toBe(0);
    });

    test('Soma de texto', () =>{
        expect(soma('a','b')).toBe(0);
    });

});

describe('Testes de Subtracao', () => {
    
    test('Subtracao de 2 numeros', () =>{
        expect(subtracao(1,2)).toBe(-1);
    });
    
    test('Subtracao de 0', () =>{
        expect(subtracao(0,0)).toBe(0);
    });

    test('Subtracao de null', () =>{
        expect(subtracao(null,null)).toBe(0);
    });

    test('Subtracao de texto', () =>{
        expect(subtracao('a','b')).toBe(0);
    });

});

describe('Testes de Multiplicacao', () => {
    
    test('Multiplicacao de 2 numeros', () =>{
        expect(multiplicacao(1,2)).toBe(2);
    });
    
    test('Multiplicacao de 0', () =>{
        expect(multiplicacao(0,0)).toBe(0);
    });

    test('Multiplicacao de null', () =>{
        expect(multiplicacao(null,null)).toBe(0);
    });

    test('Multiplicacao de texto', () =>{
        expect(multiplicacao('a','b')).toBe(0);
    });

});

describe('Testes de Divisao', () => {
    
    test('Divisao de 2 numeros', () =>{
        expect(divisao(10,2)).toBe(5);
    });

    test('Divisao de 0', () =>{
        expect(divisao(0,0)).toBe(0);
    });

    test('Divisao de null', () =>{
        expect(divisao(null,null)).toBe(0);
    });

    test('Divisao de texto', () =>{
        expect(divisao('a','b')).toBe(0);
    });

});
