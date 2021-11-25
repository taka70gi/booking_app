process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

$(function() {
    $("p").text("jQuery稼働テスト(稼働中)");
});