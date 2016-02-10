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
