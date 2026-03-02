"use strict";var s=function(e,r){return function(){return r||e((r={exports:{}}).exports,r),r.exports}};var q=s(function(j,c){
var t=require('@stdlib/math-base-assert-is-nan/dist'),v=require('@stdlib/math-base-special-pow/dist');function w(e,r,n){var i,u;return t(e)||t(r)||t(n)||r<=0||n<=0?NaN:e>=n?(u=r*v(n,r),i=v(e,r+1),u/i):0}c.exports=w
});var m=s(function(k,d){
var a=require('@stdlib/utils-constant-function/dist'),o=require('@stdlib/math-base-assert-is-nan/dist'),N=require('@stdlib/math-base-special-pow/dist');function F(e,r){var n;if(o(e)||o(r)||e<=0||r<=0)return a(NaN);return n=e*N(r,e),i;function i(u){var f;return o(u)?NaN:u>=r?(f=N(u,e+1),n/f):0}}d.exports=F
});var O=require('@stdlib/utils-define-nonenumerable-read-only-property/dist'),y=q(),R=m();O(y,"factory",R);module.exports=y;
/** @license Apache-2.0 */
//# sourceMappingURL=index.js.map
