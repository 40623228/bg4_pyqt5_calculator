<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="ahshoe.20161120121808.1"><vh>@settings</vh>
<v t="ahshoe.20170315212615.1"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="ahshoe.20170315212626.1"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="40323230.20170123213451.1"><vh>@button Report pdf</vh></v>
<v t="yen.20170429132400.1"><vh>協同著作規劃</vh></v>
<v t="leo.20171218141522.1"><vh>報告章節規劃</vh></v>
<v t="yen.20170429103742.1" a="E"><vh>@path ./../</vh>
<v t="yen.20170429103940.1" a="E"><vh>@path markdown</vh>
<v t="ahshoe.20170322182713.1"><vh>@edit reference.md</vh></v>
<v t="ahshoe.20170322181453.1"><vh>@edit refer.bib</vh></v>
<v t="leo.20171119234752.1" a="E"><vh>封面以及摘要</vh>
<v t="ahshoe.20161120122151.1" a="E"><vh>@clean cover_and_abstract.md</vh>
<v t="ahshoe.20170317115820.1"><vh>摘要</vh></v>
</v>
</v>
<v t="leo.20171119234822.1" a="E"><vh>各章節內容</vh>
<v t="yen.20170429214845.1" a="E"><vh>@path paragraph</vh>
<v t="yen.20170429214838.1" a="E"><vh>@clean introduction.md</vh>
<v t="yen.20170429214838.3"><vh>前言內容</vh></v>
</v>
<v t="yen.20170429215041.1" a="E"><vh>@clean portable_system.md</vh>
<v t="yen.20170429215130.1"><vh>可攜程式系統介紹</vh></v>
</v>
<v t="yen.20170429215252.1" a="E"><vh>@clean python_introduction.md</vh>
<v t="yen.20170429215308.1"><vh>Python 程式語法介紹</vh></v>
</v>
<v t="yen.20170429215416.1" a="E"><vh>@clean pyqt5_introduction.md</vh>
<v t="yen.20170429215446.2"><vh>PyQt5 語法介紹</vh></v>
</v>
<v t="yen.20170429215617.1" a="E"><vh>@clean calculator.md</vh>
<v t="yen.20170429215851.1"><vh>計算機程式內容</vh></v>
</v>
<v t="yen.20170429215922.1" a="E"><vh>@clean discussion.md</vh>
<v t="yen.20170429220001.1"><vh>程式開發心得</vh></v>
</v>
<v t="yen.20170429220128.1" a="E"><vh>@clean results.md</vh>
<v t="yen.20170429220137.1"><vh>期末報告結論</vh></v>
</v>
<v t="yen.20170429220335.1" a="E"><vh>@clean appendix.md</vh>
<v t="yen.20170429220335.2"><vh>附錄</vh></v>
</v>
</v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="40323230.20170123213451.1">@language python
filename = "report"
import os, platform
# 更換目錄到 markdown 
os.chdir("./../markdown")

# 若在 Linux 環境則使用 ukai.ttc 系統字形
if platform.system().lower()=="linux": font = "ukai.ttc"
# 在 windows 環境使用 SimSun 字形
elif platform.system().lower()=="windows": font = "SimSun"
else: font = "Arial"
fontsize = "12"
margin = "1in"
# --pdf-engine 使用 xelatex
# lang 請參照 https://tools.ietf.org/html/bcp47, 這裡的 zh-cmn 為 Mandarin Chinese 國語
# -V lang=zh-cmn 為一組 key=value 對應的 Variable 設定
# -N 表示 Number section headings in LaTeX, ConTeXt, HTML, or EPUB output. By default, sections are not numbered.
settingFlag = "--pdf-engine=xelatex -V lang=zh-cmn -N --toc --highlight-style kate -V documentclass=report  --filter pandoc-fignos --filter pandoc-tablenos --template=template.tex -V \"CJKmainfont:{0}\" -V fontsize={1}pt -V geometry:margin={2} --bibliography=refer.bib --csl=ieee.csl".format(font, fontsize, margin)
g.es("---Pandoc---")

# 選擇所要納入的 Markdown 檔案, 不納入的檔案名稱前方加上  # 即可
chapter_list = " ".join("./paragraph/" + i for i in [
"introduction.md",
"portable_system.md", 
"python_introduction.md", 
"pyqt5_introduction.md", 
"discussion.md", 
"results.md", 
])

# 若系統並未正確轉檔, 可以將 os.system 改為 g.es 表示要使用 Leo Editor 的 global 物件中的 echo string 將指令印在 log 區
# 然後複製指令, 然後在命令列視窗中的 markdown 目錄中執行, 就可以得到錯誤訊息
# 或許可以再從 https://stackoverflow.com/questions/26005583/return-value-of-x-os-system 中的建議改進此一指令
g.es(os.system("pandoc cover_and_abstract.md " + chapter_list + " reference.md -o ../pdf/report.pdf {}".format(settingFlag)))
g.es("pandoc cover_and_abstract.md " + chapter_list + " reference.md -o ../pdf/report.pdf {}".format(settingFlag))
g.es("PDF 轉換完畢")
g.es('-'*12)</t>
<t tx="ahshoe.20161120121808.1"></t>
<t tx="ahshoe.20161120122151.1">---
university_zh: '國立虎尾科技大學'
institute_zh: '機械設計工程系'
category_zh: '計算機程式 bg1 期末報告'
title_zh: 'PyQt5 事件導向計算器'
title_en: 'PyQt5 Event-Driven Calculator Project'
author:
- 設計一乙 40623219 XXX
- 設計一乙 40623220 蔡崇廷
- 設計一乙 40623221 蔡和勳
- 設計一乙 40623228 陳永錩
- 設計一乙 40623229 陳宥安
- 設計一乙 40623230 陳柏亦
advisor_zh: '嚴家銘'
date: '2017.12.18'
---

@others
</t>
<t tx="ahshoe.20170315212615.1">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="ahshoe.20170315212626.1">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="ahshoe.20170317115820.1">---
abstract: |
    這裡是摘要內容。A pipe character, followed by an indented block of text is treated as a literal block, in which newlines are preserved throughout the block, including the final newline.
    
    + 以 YAML 的方式插入。
    + The '+' indicator says to keep newlines at the end of text blocks.
    + 使用 Markdown 語法。
    + 前面使用加號
    
    本研究的重點在於 ...
---


</t>
<t tx="leo.20171119234752.1"></t>
<t tx="leo.20171119234822.1"></t>
<t tx="leo.20171218141522.1">標題頁 - 含報告標題、作者、日期與所屬單位
目錄 - 列出全文章節與所屬頁面連結
摘要 - 解釋報告編寫動機、報告重點、結論、建議與關鍵字

前言 - 簡要描述全文意旨與背景, 說明報告目標與報告內容組成架構

內文 - 依照章節標題, 詳細說明報告內容, 包括方法、操作步驟與所得結果的詳細說明

結論 - 條列所獲致的重要成果, 與摘要及導言中的目標互相呼應

討論與建議 - 說明後續值得進行的方向、方法與可能遭遇問題的討論

參考 - 詳列所引用的參考內容

附錄 - 附加值得參考的詳細內容</t>
<t tx="yen.20170429103742.1"></t>
<t tx="yen.20170429103940.1"></t>
<t tx="yen.20170429132400.1">每一位協同人員各在 users 目錄中建立一個 .leo 檔案

各自選擇要編輯的 .md 檔案, 可以使用 @edit 或 @clean 節點編輯指令

除非必要否則不更動 markdown 目錄下的 template.tex 檔案</t>
<t tx="yen.20170429214838.1">前言
===

計算器程式期末報告前言

@others</t>
<t tx="yen.20170429214838.3">前言內容。

\ 

一個範例數學式：$$\beta=\cos^{-1}{\frac{L0^{2}+d_{AB}^{2}-R0^{2}}{2\times{L0\times{d_{AB}}}}}$$

\ 

關於數學式可以參考這裡：[http://www.hostmath.com/][]

[http://www.hostmath.com/]: http://www.hostmath.com/

提及了某篇刊物[@myart]在這裡。
</t>
<t tx="yen.20170429214845.1"></t>
<t tx="yen.20170429215041.1">可攜程式系統介紹
===

可攜程式系統介紹

@others</t>
<t tx="yen.20170429215130.1">啟動與關閉
---

Windows 的內容

有一張圖片：

![Kmol][]

稱為圖 {@fig:駱駝}。

各 md 檔案可以在 images 目錄下自訂與 md 檔案名稱相同的子目錄存放影像檔案

啟動與關閉2
---</t>
<t tx="yen.20170429215252.1">Python 程式語法
===

Python 程式語法

@others
</t>
<t tx="yen.20170429215308.1">變數命名
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

[for-1]: ./images/for-1.png {#fig:簡單迴圈}
[for]: ./images/for.png {#fig:迴圈}





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

</t>
<t tx="yen.20170429215416.1"> PyQt5 簡介
===

說明 PyQt5 基本架構與程式開發流程

@others</t>
<t tx="yen.20170429215446.2">PyQt5 架構
---

C 的內容

其中包含一個表格：

Table: Python 網際框架比較 {#tbl:網際框架}

| Framework | Started | Py2 | Py3 | ORM | Template Engine | Auth Moudule | Database Admin | Project Scale |
|:---------:|:-------:|:---:|:---:|:---:|:---------------:|:------------:|:--------------:|:-------------:|
| Pyramid | 2005 | V | V |  |  | V |  | large |
| Django | 2006 | V | V | V | V | V | V | large |
| Flask | 2010 | V |  |  |  |  |  | small |

稱為表 {@tbl:網際框架}。

Table: 價目表 {#tbl:價目表}

| Tables   |      Are      |  Cool |
|----------|:-------------:|------:|
| col 1 is |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |

稱為表 {@tbl:價目表}。

關於表格生成可以參考這裡：[http://www.tablesgenerator.com/markdown_tables]

[http://www.tablesgenerator.com/markdown_tables]: http://www.tablesgenerator.com/markdown_tables

</t>
<t tx="yen.20170429215617.1">Calculator 程式
===

Calculator 程式細部說明

@others
</t>
<t tx="yen.20170429215851.1">建立對話框
---
step1

![newproject][]
step2

![newform][]

step3

![mk][]
step4

![Dialog into ui][]

step5

![qtdesigner][]

[newproject]: ./images/newproject.png {#fig:表單}
[newform]: ./images/newform.png {#fig:新建}
[mk]: ./images/mk.png {#fig:建立}
[Dialog into ui]: ./images/Dialog into ui.png {#fig:放入}
[qtdesigner]: ./images/qtdesigner.png {#fig:對話框}






建立按鈕
---
step1

![button][]

step2

![grid][]

以上是由Qtdesigner製作

Qtdesigner詳細請查閱第五章

[button]: ./images/button.png {#fig:格子}
[grid]: ./images/grid.png {#fig:排版}

建立程式碼
---
__40623220__

*

乘除

![mult][]

變號

![change][]

計算

![calculator][]

中斷運算

![abo][]


__40623221__
    def unaryOperatorClicked(self):
#40623221
        '''單一運算元按下後處理方法'''
        #pass
        clickedButton = self.sender()
        clickedOperator = clickedButton.text()
        operand = float(self.display.text())

        if clickedOperator == "Sqrt":
            if operand &lt; 0.0:
                self.abortOperation()
                return

            result = math.sqrt(operand)
        elif clickedOperator == "X^2":
            result = math.pow(operand, 2.0)
        elif clickedOperator == "1/x":
            if operand == 0.0:
                self.abortOperation()
                return

            result = 1.0 / operand

        self.display.setText(str(result))
        self.waitingForOperand = True
        
        說明:按下1/x若分母為0則需中斷運算,若按下Sqrt且數字小於0也是中斷運算,
        按下X^2若數字為2則需運算2的平方..
        
        def pointClicked(self):
#40623221
        '''小數點按下.後的處理方法'''
        #pass
        if self.waitingForOperand:
            self.display.setText('0')
 
        if "." not in self.display.text():
            self.display.setText(self.display.text() + ".")
 
        self.waitingForOperand = False
        
        說明:若出現display,且在數字0後面沒出現小數點則將小數點顯示出來..
        
         def clearAll(self):
#40623221
        '''全部清除鍵按下後的處理方法'''
        #pass
        self.sumSoFar = 0.0
        self.factorSoFar = 0.0
        self.pendingAdditiveOperator = ''
        self.pendingMultiplicativeOperator = ''
        self.display.setText('0')
        self.waitingForOperand = True
        
        說明:按下clearall則把全部運算停止並將全部情除最後出現0
        




__40623228__







__40623229__







__40623230__































[mult]: ./images/mult.png {#fig:乘除}
[change]: ./images/change.png {#fig:變號}
[calculator]: ./images/calculator.png {#fig:計算}
[abo]: ./images/abo.png {#fig:中斷運算}

</t>
<t tx="yen.20170429215922.1">心得
===

期末報告心得

@others
</t>
<t tx="yen.20170429220001.1">Fossil SCM
---40623221  蔡和勳
fossil 是比較簡單的一些指令
所以一開始我們已fossil當基礎練習了半學期將指令弄熟了其實跟github的指令是大同小異

網誌心得
--40623221 蔡和勳
將平常上課所學的指令及程式碼運用讓自己的網誌可以更新

Github 協同倉儲
---40623221  蔡和勳
透過與組員一起寫計算機程式能更快解決問題,協同報告可以自動編排也很方便,不用再將文字檔拉來拉去

學員心得
---40623221  蔡和勳
雖然程式碼很多很嚇人,
但是如果有看老師教學影片就可以很快進入狀況可以學很快,
自己在花點時間就可以將程式完成


說明各學員任務與執行過程
--40623221  蔡和勳
組員所負責的計算機程式內容不一樣
若前面的按鈕和排版沒做好後面就沒辦法接下去做,還有按鈕名稱也很重要,
錯誤的話會沒辦法執行計畫


Fossil SCM
40623229 陳宥安
剛開始第一次接觸fossil完完全全不知道在搞啥也不知道做甚麼用的用在哪裡
摸了兩個禮拜才懂得一些皮毛而已，後來經過老師講解才得以將前後串起來


網誌心得
40623229 陳宥安
將每個禮拜老師的上課內容上傳到自己的網誌

Github協同倉儲
40623229 陳宥安
方便的討論如何製作一個報告 不會因為不在同一個地方而無法討論
印證了天涯若比鄰這句話

學員心得
40623229 陳宥安
這16個禮拜一直處在懵懵懂懂的狀態下，不懂的地方還是很多，反覆了看了影片我相信總有一天會摸出個所以然，下學期希望也一直保持像這學期這樣的好狀態


說明個學員任務與執行過程
40623229 陳宥安
裏頭的程式語言其實不是很懂，如何能將一整串的文字組在一塊，加上一些符號竟然能夠成為一台計算機，需要的是不停的動腦不停的失敗再試反覆的操作直到完成</t>
<t tx="yen.20170429220128.1">結論
===

期末報告結論

@others
</t>
<t tx="yen.20170429220137.1">結論與建議
---40623221  蔡和勳
在這堂課學到如何運用自己的時間以及倉儲編輯還有fossil和github的相關指令,還知道隨身系統搞好只要帶著隨身碟不管到哪裡都可以工作

結論與建議內容
</t>
<t tx="yen.20170429220335.1">附錄
===

附錄內容

@others</t>
<t tx="yen.20170429220335.2">專案執行會議紀錄
---

操作過程照片
---

操作過程照片</t>
</tnodes>
</leo_file>
