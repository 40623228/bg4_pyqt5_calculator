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
            if operand < 0.0:
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

數字邏輯

![digitCilcked]
加減邏輯

![additiveOperatorCliked]

等號邏輯

![equalClicked]

__40623229__
        '''回復鍵按下的處理方法'''
         #pass
         if self.waitingForOperand:
             return
  
         text = self.display.text()[:-1]
         if not text:
             text = '0'
             self.waitingForOperand = True
  
         self.display.setText(text)
         if self.waitingForOperand:
             return
     def clear(self):
      
       '''清除鍵按下後的處理方法'''
         #pass
         if self.waitingForOperand:
             return
  
         self.display.setText('0')
         
         self.waitingForOperand = True

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



[equalClicked]: ./images/equalClicked.png {#fig:equalClicked}
[additiveOperatorCliked]: ./images/additiveOperatorCliked.png {#fig:additiveOperatorCliked}
[digitCilcked]: ./images/digitCilcked.png {#fig:digitCilcked}
[mult]: ./images/mult.png {#fig:乘除}
[change]: ./images/change.png {#fig:變號}
[calculator]: ./images/calculator.png {#fig:計算}
[abo]: ./images/abo.png {#fig:中斷運算}

























