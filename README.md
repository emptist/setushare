[![NPM version][npm-image]][npm-url]
[![npm download][download-image]][download-url]

[npm-image]: https://img.shields.io/npm/v/setushare.svg?style=flat-square
[npm-url]: https://npmjs.org/package/setushare
[download-image]: https://img.shields.io/npm/dm/setushare.svg?style=flat-square
[download-url]: https://npmjs.org/package/setushare


# warning:

This doesn't seem to work correctly since it will return repeatedly on multiple
querying.



Query tushare.org through python-shell.
Also see example.

```coffeescript
Tushare = require './setushare'
ts = new Tushare()
#console.log ts
ts.data {func: 'get_hist_data',args: "'300388',ktype='W'"}, (res)->
  console.log(res)

ts.data {func: 'get_hist_data',args: "'159915',ktype='M'"}, (res)->
  console.log(res)

ts.data {func: 'get_h_data',args: "'300388'"}, (res)->
  console.log(res)
  # use this to end conversatio
ts.done()
```
