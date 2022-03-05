const {createProxyMiddleware} = require('http-proxy-middleware');

const target = 'http://127.0.0.1:8080/';

module.exports = function (app) {
    app.use('/rest/**', createProxyMiddleware({
        target: target,
        changeOrigin: true,
        secure: false,
        proxyTimeout: 4000,
        pathRewrite(path, req) {
            return path.replace(/^\/rest/, '/rest')
        },
        logLevel: "debug"
    }));
};
