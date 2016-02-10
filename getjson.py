#-*- coding:UTF-8 -*-
import sys,json
import tsquery as ts

line=' '
while line:
    line = sys.stdin.readline()

    try:
        # 結束時,由於line不是正常的資料,會發生錯誤,似乎不需要處理
        message = json.loads(line)
        if message.get('func'):
            print(ts.query(message))
    except Exception as e:
        pass #print(e)

# 用python -u 來執行,故不需要手工flush()
#sys.stdout.flush()
