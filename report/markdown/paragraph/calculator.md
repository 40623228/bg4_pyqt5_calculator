Calculator 程式
===

Calculator 程式細部說明

建立對話框
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


[qtdesigner]: ./images/qtdesigner.png {#fig:對話框}

[newproject]: ./images/newproject.png {#fig:表單}

[newform]: ./images/newform.png {#fig:新建}

[mk]: ./images/mk.png {#fig:建立}

[Dialog into ui]: ./images/Dialog into ui.png {#fig:放入}

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

__40623230__

    def clearMemory(self):
#40623230
        '''清除記憶體鍵按下後的處理方法'''
        #pass
        self.sumInMemory = 0.0
        
        說明:按下MC鍵後將記憶的數字變為0
        
    def readMemory(self):
#40623230
        '''讀取記憶體鍵按下後的處理方法'''
        #pass
        self.display.setText(str(self.sumInMemory))
        self.waitingForOperand = True
        
        說明:按下MR鍵後把記憶的數字顯示出來
        
    def setMemory(self):
#40623230
        '''設定記憶體鍵按下後的處理方法'''
        #pass
        self.equalClicked()
        self.sumInMemory = float(self.display.text())
        
        說明:按下MS鍵後會把當前的數字取代記憶的數字
        
    def addToMemory(self):
#40623230
        '''放到記憶體鍵按下後的處理方法'''
        #pass
        self.equalClicked()
        self.sumInMemory += float(self.display.text())
        
        說明:按下M+鍵會把當前數字與記憶的數字相加後並記憶


























