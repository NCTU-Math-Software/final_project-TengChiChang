# final_project-TengChiChang
final_project-TengChiChang created by GitHub Classroom
第17題
1.
nxn(n) 
產生類似下面矩陣的nxn矩陣,下面為nxn(3)和nxn(2)
simple input: nxn(3)

7     8     9
6     1     2
5     4     3
simple input: nxn(2)

1     2
4     3

做法:
接下來以3x3的矩陣為例子
先造出一個nxn的零矩陣


步驟1:
找到矩陣的中點,給定其值為1
找到其右邊一格以及右下一格為2.3

0     0     0
0     1     2
0     0     3


步驟2:
再來讓他轉彎走兩步後再轉彎走兩步
先走兩步:
0     0     0
0     1     2
5     4     3

轉彎後再走兩步:
7     0     0
6     1     2
5     4     3


步驟3:
最後再補上第一排除了第一個以外的剩餘數字
7     8     9
6     1     2
5     4     3

如果是更大的奇數
那麼會執行更多次的步驟2
只是每執行完一次步驟2後,下一次的步數就要加一

