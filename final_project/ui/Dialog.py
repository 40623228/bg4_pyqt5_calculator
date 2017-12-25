# -*- coding: utf-8 -*-

"""
Module implementing Dialog.
"""

from PyQt5.QtCore import pyqtSlot
from PyQt5.QtWidgets import QDialog

from .Ui_Dialog import Ui_Dialog


class Dialog(QDialog, Ui_Dialog):
    """
    Class documentation goes here.
    """
    def __init__(self, parent=None):
        """
        Constructor
        
        @param parent reference to the parent widget
        @type QWidget
        """
        super(Dialog, self).__init__(parent)
        self.setupUi(self)
        '''以下為使用者自行編寫程式碼區'''
        
        self.display.setText('0') 
        
        num_button = [self.one,  self.two,  \
        self.three,  self.four,  self.five,  self.six,  self.seven,  self.eight,  self.nine,  self.zero]
       
        for i in num_button:
            i.clicked.connect(self.digitClicked)
       
        self.waitingForOperand = True
        
        multiply_divide = [self.timesButton,  self.divisionButton]
        
        self.pendingMultiplicativeOperator = ''
        
        self.factorSoFar = 0.0
        
        for i in multiply_divide:
            i.clicked.connect(self.multiplicativeOperatorClicked)  
           
         
        
    def digitClicked(self):
#40623228
        '''
        使用者按下數字鍵, 必須能夠累積顯示該數字
        當顯示幕已經為 0, 再按零不會顯示 00, 而仍顯示 0 或 0.0
        
        '''
        #pass
        clickedButton = self.sender()
        digitValue = int(clickedButton.text())
        if self.display.text() == '0' and digitValue == 0.0:
            return
        if self.waitingForOperand:
            self.display.clear()
            self.waitingForOperand = False
        self.display.setText(self.display.text() + str(digitValue))
 
        
    def unaryOperatorClicked(self):
#40623221
        '''單一運算元按下後處理方法'''
        pass
        
    def additiveOperatorClicked(self):
#40623229
        '''加或減按下後進行的處理方法'''
        pass
        
    def multiplicativeOperatorClicked(self):
#40623220
        '''乘或除按下後進行的處理方法'''
       # pass
        clickedButton = self.sender()
        clickedOperator = clickedButton.text()
        operand = float(self.display.text())
        self.pendingMultiplicativeOperator = clickedOperator
        self.waitingForOperand = True
        
        if self.pendingMultiplicativeOperator:
            if not self.calculate(operand, self.pendingMultiplicativeOperator):
                self.abortOperation()
                return
       
            self.display.setText(str(self.factorSoFar))
        else:
            self.factorSoFar = operand
 
        
       
        
    def equalClicked(self):
#40623228
        '''等號按下後的處理方法'''
        pass
        
    def pointClicked(self):
#40623221
        '''小數點按下後的處理方法'''
        pass
        
    def changeSignClicked(self):
#40623220        
        '''變號鍵按下後的處理方法'''
        #pass
        text = self.display.text()
        value = float(text)
 
        if value > 0.0:
            text = "-" + text
        elif value < 0.0:
            text = text[1:]
            
        self.display.setText(text)
        
    def backspaceClicked(self):
#40623229
        '''回復鍵按下的處理方法'''
        pass
        
    def clear(self):
#40623229
        '''清除鍵按下後的處理方法'''
        pass
        
    def clearAll(self):
#40623221
        '''全部清除鍵按下後的處理方法'''
        pass
        
    def clearMemory(self):
#40623230
        '''清除記憶體鍵按下後的處理方法'''
        pass
        
    def readMemory(self):
#40623230
        '''讀取記憶體鍵按下後的處理方法'''
        pass
        
    def setMemory(self):
#40623230
        '''設定記憶體鍵按下後的處理方法'''
        pass
        
    def addToMemory(self):
#40623230
        '''放到記憶體鍵按下後的處理方法'''
        pass
        
    def createButton(self):
        ''' 建立按鍵處理方法, 以 Qt Designer 建立對話框時, 不需要此方法'''
        pass
        
    def abortOperation(self):
#40623220        
        '''中斷運算'''
      #  pass
        self.clearAll()
        self.display.setText("erro")
    def calculate(self, rightOperand, pendingOperator):
#40623220
        '''計算'''
        #pass
        if pendingOperator == "+":
            self.sumSoFar += rightOperand
 
        elif pendingOperator == "-":
            self.sumSoFar -= rightOperand
        elif pendingOperator == "*":
            self.factorSoFar *= rightOperand
 
        elif pendingOperator == "/":
            if rightOperand == 0.0:
                return False
 
            self.factorSoFar /= rightOperand
 
        return True
