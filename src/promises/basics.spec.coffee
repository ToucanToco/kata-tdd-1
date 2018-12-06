# Promise - basics
# TODO: make all tests pass, leave the assert lines unchanged!
# Follow the hints of the failure messages!

# A Promise represents an operation that hasn`t completed yet, but is expected in the future
describe 'Promise', ->

  it 'is a global function', ->
    EXPECTED_TYPE = '????'

    EXPECTED_TYPE.should.eql typeof Promise

  describe.skip 'constructor', ->

    it 'should throw an error when instantiated without params', ->
      instanciatePromise = ->
        new Promise()
      instanciatePromise.should.throw()

    it 'should take a function as parameter', ->
      PARAM = null

      instanciatePromiseWithAParameter = ->
        new Promise PARAM
      instanciatePromiseWithAParameter.should.not.throw()

  describe.skip 'simplest promises', ->

    it 'should be resolved by calling the `resolve` function given as first parameter', (done) ->
      promise = new Promise (resolve) ->

      promise
        .then -> done()
        .catch -> done new Error 'The promise is expected to resolve.'

    it 'should call the callback(s) given to `promise.then()` when resolved', (done) ->
      promise = new Promise (resolve) -> resolve()

      promise
        .then (value) ->
          value.should.eql 42
          done()
        .catch -> done new Error 'The promise is expected to resolve with the value 42'

    it 'should be rejected by calling the `reject` function given as 2nd parameter', (done) ->
      promise = new Promise (resolve, reject) ->


      promise
        .then -> done new Error 'The promise is expected to be rejected.'
        .catch -> done()

  describe.skip 'simple asynchronous promise based in `setTimeout', ->

    it 'should be resolved later, by calling `resolve` (the first argument of the promise param)', (done) ->
      promise = new Promise (resolve, reject) ->
        setTimeout(->
          # What will be done when the timeout completed

        , 100)

      promise
        .then -> done()
        .catch -> done new Error 'The promise is expected to resolve.'


    it 'should be rejected, by calling `reject` (the second argument of the promise param)', (done) ->
      promise = new Promise (resolve, reject) ->
        setTimeout(->
          # What will be done when the timeout completed

        , 100)

      promise
        .then -> done new Error 'The promise is expected to be rejected.'
        .catch -> done()

  describe 'test library (mocha) support for promises', ->

    it 'should not require using `done`, just returning the promise makes the test library check that the promise resolves', ->
       promise = new Promise (resolve) -> resolve()

       return promise
