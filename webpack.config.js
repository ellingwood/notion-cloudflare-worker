module.exports = {
  entry: "./src/edge.js",
  mode: "production",
  optimization: {
    minimize: true
  },
  performance: {
    hints: false
  },
  output: {
    path: __dirname + "/dist",
    publicPath: "dist",
    filename: "worker.js"
  }
};
