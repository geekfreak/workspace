/*
000010 IDENTIFICATION DIVISION.
000020 *                  _     __                _
000030 *   __ _  ___  ___| | __/ _|_ __ ___  __ _| | __
000040 *  / _` |/ _ \/ _ \ |/ / |_| '__/ _ \/ _` | |/ /
000050 * | (_| |  __/  __/   <|  _| | |  __/ (_| |   <
000060 *  \__, |\___|\___|_|\_\_| |_|  \___|\__,_|_|\_\
000070 *  |___/
000080 *
000090 PROGRAM-ID.      es6_partial.
000100 AUTHOR.           ʞɐǝɹɟʞǝǝƃ
000110 *
000120 *  The MIT License (MIT)
000130 *  Copyright (c) 2015   ʞɐǝɹɟʞǝǝƃ
000140 *
000150 * Permission is hereby granted, free of charge, to any person obtaining
000160 * a copy of this software and associated documentation files
000170 * (the "Software"), to deal in the Software without restriction,
000180 * including without limitation the rights to use, copy, modify, merge,
000190 * publish, distribute, sublicense, and/or sell copies of the Software,
000200 * and to permit persons to whom the Software is furnished to do so,
000210 * subject to the following conditions: The above copyright notice and
000220 * this permission notice shall be included in all copies or substantial
000230 * portions of the Software.
000240 *
000250 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
000260 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
000270 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
000280 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
000290 * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
000310 * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
000320 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
000330 * SOFTWARE.
000340 *
*/
"use strict";

/**
 * partial(a,b, ...) returns a decorator function in which the list of arguments
 * provided
 *
 * @param  {...arguments} partials arguments to be partialy applied
 * @return {Function}       anonymous function which
 */
function partial(...partials) {
  /**
   * anonymous function which provides a closure over the original
   * arguments to allow them to be reapplied as needed.
   *
   * @param  {Function}  fn      function to be partially applied
   * @param  {Array}     actuals function arguments
   * @return {}                  function results
   */
  return (fn, ...actuals) => fn.apply(this, [...partials, ...actuals]);
}

// helper functions
var echoArguments = (...invocation) => invocation;
var expect = require('expect');
var assert = require('assert');

// mocha tests
describe('environment division', function () {

  it('first verify the test framework is running', () => true);
  it('second verify we have an expect object', () => expect);
  it('does the expect object work', () => expect(1).toEqual(1));

  describe('partial application', function () {

    it('partial - exists', () => expect(partial).toExist());

    it('partial - is a function', () => expect(partial).toBeA('function'));

    it('partial() - empty invocation', function () {
      let result = partial();
      expect(result).toBeA('function');
      expect(result(echoArguments)).toEqual([]);
    });

    it('partial() - empty invocation should throw error');

    it('partial(1) - single argument', function () {
      let result = partial(1);
      expect(result).toBeA('function', 'not a function');
      expect(result(Number)).toBe(1), 'Number constructor not partially applied correctly';
      expect(result(Math.max, 0)).toBe(1), 'Math.max not partially applied correctly';
      expect(result(Math.max, 2)).toBe(2), 'Math.max not partially applied correctly';
    });

    it('partial(1,2) - tuple argument', function () {
      let result = partial(1, 2);
      expect(result).toBeA('function')
      expect(result(echoArguments)).toEqual([1, 2]);
      expect(result(echoArguments, 3)).toEqual([1, 2, 3]);
    });

    it('partial(1,2,3) - triple argument', function () {
      let result = partial(1, 2, 3);
      expect(result).toBeA('function')
      expect(result(echoArguments)).toEqual([1, 2, 3]);
      expect(result(echoArguments, 4)).toEqual([1, 2, 3, 4]);
    });

  });

});
