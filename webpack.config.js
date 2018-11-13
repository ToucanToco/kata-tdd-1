module.exports = {
  devtool: 'inline-source-map',
  mode: 'development',
  module: {
    rules: [
      {
        test: /\.coffee$/,
        use: ['coffee-loader']
      }
    ]
  },
  resolve: {
    extensions: [
      '.coffee',
      '.js',
      '.json',
      '.cson',
    ]
  }
}
