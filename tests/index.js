describe('My first describe', function() {
  it('my first test', function() {
    true.should.be.true;
  });

  it('my second test that succeed', function() {
    (1).should.equal(1);
  });

  it('my third test that fails', function() {
    (1).should.equal(2);
  });
});
