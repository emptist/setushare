###
 Copyright(c) 2016- Jigme Ko <jigme1968@gmail.com>
 MIT Licensed
###
### 目的
  Python資源眾多, Pandas有用.
  如何交互收發信息 [參閱](https://github.com/extrabacon/python-shell/issues/16)

  經過測試, tushare 庫 有一個 _write_head() _write_tips() 和 _write_console()
  會污染stdout, 文件為: tushare/stock/cons.py, 須將這些function 全部 加 pass 註釋掉代碼
###
Pysh = require 'python-shell'

# will repeatedly return 3 times, don't know why
class Tushare
  constructor: ->
    options =
      mode:'json'
      pythonOptions:['-u']
      scriptPath: __dirname
    @pysh = new Pysh '../getjson.py', options
    #所有的on什麼都放這裡

  done: ()->
    @pysh.end (err)->
      throw err if err
      console.info 'done.'

  data: (command, callback)->
    # 用完退出只需 pysh.done()
    @pysh.on 'message', (json)-> callback json
    @pysh.send command

module.exports = Tushare
