// Copyright (c) 2024 The Stdlib Authors. License is Apache-2.0: http://www.apache.org/licenses/LICENSE-2.0
/// <reference types="./index.d.ts" />
import t from"https://cdn.jsdelivr.net/gh/stdlib-js/utils-define-nonenumerable-read-only-property@v0.2.1-esm/index.mjs";import e from"https://cdn.jsdelivr.net/gh/stdlib-js/math-base-assert-is-nan@v0.2.1-esm/index.mjs";import n from"https://cdn.jsdelivr.net/gh/stdlib-js/math-base-special-pow@v0.2.1-esm/index.mjs";import s from"https://cdn.jsdelivr.net/gh/stdlib-js/utils-constant-function@v0.2.1-esm/index.mjs";function r(t,s,r){return e(t)||e(s)||e(r)||s<=0||r<=0?NaN:t>=r?s*n(r,s)/n(t,s+1):0}function i(t,r){var i;return e(t)||e(r)||t<=0||r<=0?s(NaN):(i=t*n(r,t),function(s){var d;if(e(s))return NaN;if(s>=r)return d=n(s,t+1),i/d;return 0})}t(r,"factory",i);export{r as default,i as factory};
//# sourceMappingURL=index.mjs.map
