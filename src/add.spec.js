import add from './add';

describe('Add function', function() {
  it('should add two numbers', function() {
    add(1, 3).should.eql(4);
  })

  it('should add two strings as numbers', function() {
    add('1', '3').should.eql(4);
  })
})
