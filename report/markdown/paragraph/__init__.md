數字按鍵邏輯介紹
===
http://kuanyui.github.io/2014/09/13/learn-python-via-pyqt/
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
