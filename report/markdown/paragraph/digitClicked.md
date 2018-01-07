數字按鍵邏輯介紹
===

數字按鍵邏輯介紹

按建訊息
---
self.one.clicked.connect(self.digitClicked)

self.two.clicked.connect(self.digitClicked)

                    ˙
                    ˙
                    ˙
                    ˙
                    ˙
                    
因為只有前面的名稱再變換所以可以用for迴圈減短程式的長度
                    
num_button = [self.one,  self.two,  \
        self.three,  self.four,  self.five,  self.six,  self.seven,  self.eight,  self.nine, self.zero]
       
for i in num_button:
            i.clicked.connect(self.digitClicked)
            
利用for迴圈只需要兩行 就可以達到同樣效果


數字邏輯
---
使用者按下數字鍵, 必須能夠累積顯示該數字
當顯示幕已經為 0, 再按零不會顯示 00, 而仍顯示 0 或 0.0

+def __init__(self,parent=None)

self.display.setText('0')----在還沒有任何動作以前display顯示0

self.waitingForOperand = True---從...導入屬性並進行等待運算

+def digitClicked(self):進入數字邏輯

        clickedButton = self.sender()----令clickedButton為按下按鍵後傳來得訊息
        
        digitValue = int(clickedButton.text())----令digitValue為訊息內的text訊息並化為整數
        
        if self.display.text() == '0' and digitValue == 0.0:----判斷式:如果display顯是為0時傳來的訊息也為0時則運行下列結果
        
            return---重置指令
            
        if self.waitingForOperand:---判斷式:有等待運算執行下列結果
        
            self.display.clear()-----清除dispaly上的數字
            
            self.waitingForOperand = False----不進入等待運算
            
        self.display.setText(self.display.text() + str(digitValue))------將原先的字串疊上後加上的字串
