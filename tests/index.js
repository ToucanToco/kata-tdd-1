describe('My first describe', function() {
  it('my first test', function() {
    console.log('Yeah!');
  });

  it('my second test that succeed', function() {
    return
  });

  it('my third test that fails', function() {
    throw new Error('Failed miserably :"(')
  });
});
