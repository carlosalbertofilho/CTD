const { resolver } = require('../funcionalidade.js');

/**
 * @jest-environment jsdom
 */
test('se a função resolver soma corretamente', () =>  {
  expect(resolver(5, 7, "+")).toBe(12);
});

test('se a função resolver subtrai corretamente', () => {
  expect(resolver(5, 7, "-")).toBe(-2);
});

test('se a função resolver divide corretamente', () => {
  expect(resolver(6, 2, "/")).toBe(3);
});
