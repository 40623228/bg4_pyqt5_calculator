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
    self.one.clicked.connect(self.digitClicked)
    def digitClicked(self):
#40623228
        '''
        使用者按下數字鍵, 必須能夠累積顯示該數字
        當顯示幕已經為 0, 再按零不會顯示 00, 而仍顯示 0 或 0.0
        
        '''
        pass
        
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
        pass
        
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
        pass
        
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
        pass
        
    def calculate(self):
#40623220
        '''計算'''
        pass
