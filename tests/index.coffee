describe 'My first describe', ->
  it 'my first test', ->
    true.should.be.true

# require all modules ending in ".spec.js" from the src directory
testsContext = require.context '../src', true, /.spec$/
testsContext.keys().forEach testsContext
