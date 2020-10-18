/*
 * @Author: 龙朝敏
 * @Date: 2020-10-10 11:51:55
 * @LastEditTime: 2020-10-16 13:00:28
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \web\js\router.js
 */
function Router() {
    this.routes = {};
    this.currentUrl = '';
}

Router.prototype.route = function (path, callback) {
    this.routes[path] = callback || function () { };
};

Router.prototype.refresh = function () {
    this.currentUrl = location.hash.slice(1) || '/';
    this.routes[this.currentUrl]();
};

Router.prototype.init = function () {
    window.addEventListener('load', this.refresh.bind(this), false);
    window.addEventListener('hashchange', this.refresh.bind(this), false);
}
window.Router = new Router();
window.Router.init();