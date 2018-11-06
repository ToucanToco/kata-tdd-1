describe('My first describe', function() {
  it('my first test', function() {
    true.should.be.true;
  });
});

// require all modules ending in ".spec.js" from the src directory
const testsContext = require.context('../src', true, /.spec$/)
testsContext.keys().forEach(testsContext)
