sinonChai = require 'sinon-chai'
chai.use sinonChai

describe 'My first describe', ->
  it 'my first test', ->
    true.should.be.true

# require all modules ending in ".spec.js|coffee" from the src directory
testsContext = require.context '../src', true, /.spec$/
testsContext.keys().forEach testsContext
