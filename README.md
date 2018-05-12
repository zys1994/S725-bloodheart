# 结构光交接
### 环境需求
- Matlab(```建议Matlab2014a```)
### 主要内容文件夹
- RasterGen->（光栅图像生成）
- PhaseDecode->（多频外差解相）
- Camera2DMD->（Camera的点与投影仪点对应。还存在问题，仅供参考）
- Point2Txt->（把深度图像像素转为一行一个点的txt文本保存）

### 1.光栅图像生成
```
打开RasterGen文件夹
其中RasterGen.m是光栅图像生成函数
Sample.m是例子程序
```
运行Sample.m,效果如图<br>
![image](http://chuantu.biz/t6/310/1526128127x-1404795451.jpg)
### 2.多频外差解相
```
打开PhaseDecode文件夹
其中duopinwaicha.m是多频外差解相主程序
GetForeground1.m是加载贝多芬图片
solvedet.m是实现多频外差的函数
```
运行duopinwaicha.m,效果如图<br>
![image](http://chuantu.biz/t6/310/1526128473x-1404781138.jpg)
### 3.Camera的点与投影仪点对应
```
打开Camera2DMD文件夹
其中Doubleinline.m是双线性插值法
GetCheckboard.m为获取棋盘位置
test_hv.m为生成投影对应角点
```
test_hv.m,效果如图（效果不好，仅供参考）<br>
![image](http://chuantu.biz/t6/310/1526128773x-1404793178.jpg)