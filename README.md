# project17.生成由中間往外給值由1到n平方生成的矩陣

1.生成由中間往外給值由1到n平方生成的矩陣
-------

程式用法:nxn(n) n為正整數

產生類似下面矩陣的nxn矩陣,下面為nxn(3)和nxn(2)

sample input: nxn(3)

sample output:

7     8     9

6     1     2

5     4     3

sample input: nxn(2)

sample output:

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

只是每執行完一次步驟2後,下一次的步數就要加一,做到步數為n-1

例如100X100的矩陣要從轉彎走兩步後再轉彎走兩步,一直走到轉彎走99步再轉彎走99步

如果n是偶數

做法大致相同,只是中心會變成

1     2

3     4

還有步驟三最後是補最下面的一排

2.算出nxn(n)矩陣的正反對角線總合
--------

執行方法:nxn2(n)  n為正整數

算出上面矩陣斜對角線和對角線的總和

以5x5的矩陣為例


21      22      23      24      25

20      7        8        9       10

19      6        1        2        11

18      5        4        3        12

17      16      15      14      13


根據上一個程式的結果

對角線的值會是1.3.5.7.9.13.17.21,25

我們會發現前面幾個數的值會是2的等差數列,接下來是4.6.8.....n-1

接下來就利用這個規律得到對角數的總和

3.將第一題的矩陣變成格子圖,並且將質數變成黑色, 非質數點位置設為白色
------

執行方法:nxn3() 

寫一個判斷質數的小function y=f(x)

做法為暴力法,如果2到x-1沒有數可以整除他,那他就是質數

這個程式就是列出第一個程式裡面200x200的矩陣

然後分別判斷每一個值

如果裡面是質數,那就給值為1(黑色)

如果裡面是偶數,那就給值為81(白色)








