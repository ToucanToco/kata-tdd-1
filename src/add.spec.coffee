import add from './add';

describe('Add function', ->
  it('should add two numbers', ->
    add(1, 3).should.eql(4)
  )

  it('should add two strings as numbers', ->
    add('1', '3').should.eql(4)
  )
)
