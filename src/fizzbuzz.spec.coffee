import fizzbuzz from './fizzbuzz'

describe 'Fizzbuzz', ->

  context 'when number is divisible by 3', ->
    it 'should return "Fizz" when number is 3', ->
      fizzbuzz 3
        .should.eql "Fizz"

    it 'should return "Fizz" when number is 6', ->
      fizzbuzz 6
        .should.eql "Fizz"

  context 'when number is divisible by 5', ->
    it 'should return "Buzz" when number is 5', ->
      fizzbuzz 5
        .should.eql "Buzz"

    it 'should return "Buzz" when number is 10', ->
      fizzbuzz 10
        .should.eql "Buzz"

  context 'when number is divisible by 5 and 3', ->
    it 'should return "Buzz" when number is 15', ->
      fizzbuzz 15
        .should.eql "FizzBuzz"

  context 'when number is divisible not by 5 nor by 3', ->
    it 'should return the number as a string', ->
      fizzbuzz 11
        .should.eql "11"
