!function(){"use strict";var e="undefined"==typeof global?self:global;if("function"!=typeof e.require){var r={},n={},t={},i={}.hasOwnProperty,o=/^\.\.?(\/|$)/,u=function(e,r){for(var n,t=[],i=(o.test(r)?e+"/"+r:r).split("/"),u=0,l=i.length;u<l;u++)n=i[u],".."===n?t.pop():"."!==n&&""!==n&&t.push(n);return t.join("/")},l=function(e){return e.split("/").slice(0,-1).join("/")},a=function(r){return function(n){var t=u(l(r),n);return e.require(t,r)}},c=function(e,r){var t=h&&h.createHot(e),i={id:e,exports:{},hot:t};return n[e]=i,r(i.exports,a(e),i),i.exports},f=function(e){return t[e]?f(t[e]):e},s=function(e,r){return f(u(l(e),r))},p=function(e,t){null==t&&(t="/");var o=f(e);if(i.call(n,o))return n[o].exports;if(i.call(r,o))return c(o,r[o]);throw new Error("Cannot find module '"+e+"' from '"+t+"'")};p.alias=function(e,r){t[r]=e};var d=/\.[^.\/]+$/,_=/\/index(\.[^\/]+)?$/,v=function(e){if(d.test(e)){var r=e.replace(d,"");i.call(t,r)&&t[r].replace(d,"")!==r+"/index"||(t[r]=e)}if(_.test(e)){var n=e.replace(_,"");i.call(t,n)||(t[n]=e)}};p.register=p.define=function(e,t){if(e&&"object"==typeof e)for(var o in e)i.call(e,o)&&p.register(o,e[o]);else r[e]=t,delete n[e],v(e)},p.list=function(){var e=[];for(var n in r)i.call(r,n)&&e.push(n);return e};var h=e._hmr&&new e._hmr(s,p,r,n);p._cache=n,p.hmr=h&&h.wrap,p.brunch=!0,e.require=p}}(),function(){"undefined"==typeof window?this:window;require.register("elm/Main.elm",function(e,r,n){}),require.register("initialize.js",function(e,r,n){"use strict";document.addEventListener("DOMContentLoaded",function(){console.log("Initialized app")})}),require.register("___globals___",function(e,r,n){})}(),require("___globals___");