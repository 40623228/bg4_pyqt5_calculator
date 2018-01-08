Python 程式語法
===

Python 程式語法

變數命名
---
Python3 變數命名規則與關鍵字

一、Python 英文變數命名規格

1.變數必須以英文字母大寫或小寫或底線開頭

2.變數其餘字元可以是英文大小寫字母, 數字或底線

3.變數區分英文大小寫

4.變數不限字元長度

5.不可使用關鍵字當作變數名稱

二、Python3 的程式關鍵字, 使用者命名變數時, 必須避開下列保留字.

1.Python keywords: ['False', 'None', 'True', 'and', 'as', 'assert', 'break', 'class', 'continue', 'def', 'del', 'elif', 'else', 'except', 'finally', 'for', 'from', 'global', 'if', 'import', 'in', 'is', 'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 'return', 'try', 'while', 'with', 'yield']

2.選擇好的變數名稱:

使用有意義且適當長度的變數名稱， 例如: 使用 length 代表長度, 不要單獨使用 l 或 L, 也不要使用 this_is_the_length
程式前後變數命名方式盡量一致, 例如: 使用 rect_length 或 RectLength
用底線開頭的變數通常具有特殊意義






計算機中的迴圈

![for][]

[for-1]: ./images/for-1.png {#fig:簡單迴圈}
[for]: ./images/for.png {#fig:迴圈}




print 函式
---

print() 為 Python 程式語言中用來列印數值或字串的函式, 其中有 sep 變數定義分隔符號, sep 內定為 ",", end 變數則用來定義列印結尾的符號, end 內定為跳行符號

![print][]

[print]: ./images/print.png {#fig:列印}

重複迴圈
---

簡單的迴圈

![for-1][]

計算機中的迴圈

![for][]

[for-1]: ./images/for-1.png {#fig:簡單迴圈} [for]: ./images/for.png {#fig:迴圈}

判斷式
---
if 判斷式1:
    
    要處理的指令1

elif 判斷式2:
    
    要處理的指令2
    
else:
    要處理的指令3
            
注意事項

1.每個判斷式的結束要加:

2.要處理的指令不可以用{}括起來

3.最後的else可以不用加


數列
---
python的數列是一個[   ]

[  ]是容器中能放容器也能放物件和字串

容器例如:list、set、dict、tuple

計算機中的數列

![s][]

[s]: ./images/s.png {#fig:數列}

