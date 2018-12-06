fizzbuzz = (number) ->
  result = ''

  if number % 3 is 0
    result += "Fizz"

  if number % 5 is 0
    result += "Buzz"

  if result is ''
    result = String number

  return result

export default fizzbuzz
