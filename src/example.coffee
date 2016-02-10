Tushare = require './tsdata'
###
###
ts = new Tushare()

ts.data {func: 'get_hist_data',args: "'300388',ktype='W'"}, (res)->
  #console.log 1 #(res)

ts.data {func: 'get_hist_data',args: "'159915',ktype='M'"}, (res)->
  #console.log 2 #(res)

ts.data {func: 'get_hist_data',args: "'300388',ktype='W'"}, (res)->
  #console.log 3 #(res)

ts.data {func: 'get_hist_data',args: "'159915',ktype='M'"}, (res)->
  #console.log 4 #(res)

ts.data {func: 'get_h_data',args: "'300388'"}, (res)->
  console.log 5 #(res)
  # use this to end conversatio
  #pys.done()
ts.done()
