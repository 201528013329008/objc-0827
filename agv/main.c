//
//  main.c
//  agv
//
//  Created by 691 on 16/10/2.
//  Copyright © 2016年 691. All rights reserved.
//

#include"stdafx.h"
#include<stdio．h>／／定义输入／输出函数
#include<stdlib．h>／／定义杂项函数及内存分配函数
#include<iostream．h>／／定义数据流的输入／输出
#include<math．h>／／声明该主程序调用数学函数库(数学计算的公式)
#include<time．11>／／调用关于时间的函数
#def'me N 40／／定义任务的数目(不包括初始状态O在内)
#define M 50／／定义粒子的数目
#define Q 40／／定义AGV任务总量，保证任务不被重复执行
#define Cl 2．O
#define C2 2．011学习因子
#define K 4／／AGV数量
#define VvMIN．3
#define VvMAX 3／／【-(K-1)，K-1]
#define VrMIN．39
#define VIMAX 39／／对速度变量的限制【-(m-1)，m-l】；
#define XvMIN l
#define XvMAX 4／／对位置变量的限制(对Ⅺ可以没有限制，因为只在于它的大小，后面再做调整)
double distance[m][m];
//／／两节点之间的距离，m表示节点总数
double q[N+1】={0，1,1,1,1,1，1，1,1,1,1，1，1，1，l，1，1，l，1，l，1，l，1，1，1，1，1，1，1，1，1，1，1，1，l，1，1，1，1
  ，l，1)；／／存放每个任务量，保证每个任务只被执行一次
  int RouteXv[M][N]；
  int RouteXr[M][N]；／／定义数组来存放各个粒子的解序列。
  double solution[M]；／／存放各个粒子解序列的适应度值
  int pBestRouteXv[M][N]；
  int pBestRouteXr[M][N]；／／存放各个粒子的个体最优解
  double pBestSolution[M]；／／存放各个粒子最优解的适应度值
  int gBestRouteXv[N]；
  
  int gBestRouteXr[N]；／／存放所有粒子的全局最优解
  double gBestSolution；／／存放全局最优解的适应度值
  double oldgBestSolution；／／存放上次迭代得到的全局最优解的适应度值
  double VV【M】【l叼；
  double vr【M】【N】；／／存放各个粒子的速度
  hat
  R【40】[2】_{l，6，4，3，3，5，8，2，15，4，2，10，3，13，l，12，2，9，3，9，7，2，10，1，3，8，10，15，7，9，6，3，l，
        4，6，4，3，7，5，8，2，15，4，2，10，3，13，1，12，2，9，3，9，7，2，10，1，3，8，10，15，7，9，6，3，l，3，9，12，2，14，
        3，15，8，4，9，9，5，2，5)；／／共40个任务，即40对数
        hat“K+l】；
        double EvalueSolution(int*a,int．b)；／／传递的参数是存放一组解序列的数组
        地址，返回值是这组解序列对应的适应度值
        void initiate0；
        ／／初始化
        void initiateO
        {
        ／／将文件中的数据读取到相应的二维距离数组中，D内存储的是用Floyd算法
        算出的任意两个节点之间的距离
        FILE·fp；
        if((fp--fopen(”D．txt","r”))钏Ⅱ．L)
        {
        prmtf(”Open file D．txt error!＼n¨)；
        exit(0)；
        )
        inti=o；
        while(1feof(fp))
        {
        fot(Lntj=Oj<--mj++)
        fscanf(fp，n％lilt",&distance[i][j])；／／distance数组对应的编号即各任务点实际
               的编号，如distance[0][1]对应的是任务0与1号任务点之间的距离。
               fscanf(fp，”kn”)；
               i++；
               )
        fclose(fp)；
        ，腧出距离矩阵
        ／／fot(i=O；i<=N；i++)山东大学硕士学位论文
        ||k
        ／／for(intj=Oj<--N0++)
        ／／printf(¨％lm”，distance[i][j])；
        ／／printf(”＼Il¨)；
        ||、
        ∥初始化各个粒子的解序列并计算出适应度值
        double r[N】；
                 intt咖；
                 for(i=O；i<M；i++)
                 {
                 doublex；
                 inty；
                 for(int j=O；j<N；j++)
                 rD】=(double)rand0／(RAND_MAX+1)；／／产生40个随机数来对应40个任务
                 for0=0；-j<Nj++)
                 tD】=j；∥记录任务号
                 for0=00<N0++)
                 for(int 1日+1；k《，N；k斗斗)
                 i珩D】>r哟)
                 {
                 x可D】；
                 r[jl--r[k]；
                   r[k]--x；
                   y=tD】；
                   t[j]--t[k]；
                   t【k】=)r；
                   )／／对随机数从小到大排序
                   for(j=0j<Nj++)
                   {
                   ifi[(j+1)％I净0)
                       RouteXv[i][t[j]]=K；
                       else
                       RouteXv[i][t[j]]=(j+I)％K；／／Xv的取值为1至4
                       RouteXr[i][t[j]]=jⅨ+l；
                       )
                       47Il J东大学硕士学位论文
                       solution[i]=EvalueSolution(RouteXv[i]，RouteXr[i])；
                       ／／printf(”％lf"，solution[i])；／／计算适应度值
                                ／／printf(”开始输入一组新的解序列”)；
                                >
                                ／／初始化各个粒子的速度序列
                                for(i=0；i<M；i++)
{
    for(int j=O；j<Nj++)
    {
        Vv[i】D】=(-1)*(j％2+1)*3*(double)rand0／(RAND_MAX+1)；／／产生40个随机
           数来对应40个任务的速度，Vv的取值在．0(-1)与(K-0之间
                                      V币】D】=(-1)·(j％2+1)·1 l*(double)rand0／(RAND_MAX+I)；／／Vr的取值在
                                      一(m—1)与(m-1)之间
                                      >
                                      ／／printf(¨开始输入一组新的速度序列”)；
                                      }
                                      ／／初始化pbest，每个粒子的pbest坐标设置为其当前位置，则其相应的个体极
                                      值(即个体极值点的适应度值)就是粒子当前的适应度值
                                      for(int k=O；k<M；l【*)
        {
            pBestSolution[k]=solution[k]；／／pBestSolution[]数组用来存储每个粒子的历
            史最优解的目标函数值
            for(int s=旬；s<N；s++)
            {
                pBestRouteXv[k][s]2RoutcXv[k】【s】；
                                           pBestRouteXr[k][s]2RouteXr[k】【s】；
                                                                      ／／pBestRouteXv[k][]和pBestRouteXr[k][]用来记录相应的最优解序列
                                                                      )
                                                                      }
                                                                      ／砌始化gbest，依次对每一个粒子的pbest与gbest比较目标函数值，取pbest
                                                                      最优的粒子替换全局最优解序列和相应的目标函数值
                                                                      gBestSolution=RAND_MAX；
                                                                      ／／oldgBestSolution=RAND_MAX；
                                                                      for(k卸；k<M圳／／求目标函数(适应度)值(输入为解序列，即两个位置向量)
                                                                          double EvalueSolution(int·a,int．b)
                {
                    int ctK+1】[N+1】；
                               int number【K+l】；
                               fordnt瑚；i<=K；i++)
                               numbcr【i】=O；／／将记数数组的各元素初始化为0
                               for(i=O；i<=K；i抖)
                               for(int j=O；j<=N；j++)
                               c【i】【i】=o；
                               double dist--O；
                               for(i=0；i<N；i++)
                               forint j=l；j<=K；j++)
                               ifi缸【i】=司)
                               {
                               cD】【b【i】】=i+l；／／如c【l】【2】=5表示的是任务5是由第1辆AGV执行的，执
                               行次序是2
                               number[j]++；
                               b他al【：／／每个任务只可能由一辆AGV来执行
                               49
                               —Il J东大学硕士学位论文
                               )
                               for(i=1；i<=K；i抖)
                               {
                               double sum=0；
                               for(int j=1；j<number[i]；j++)
                               {
                               sum#=q【c【i】D】】；
                               dist+=distance[R【c[i】D】】【1】】[R[c【i】【j+1】】【O】】+dist锄ce[1己【c【i】D】】【0】】【R【c【i】D】】【l】】；
                                                                                     )
                                                                                     dist+=distance[0][c[i][1]]；
                                                                                     dist+=distance[c[i][number[i]]][0]；
                                                                                     p[i]=dist+distance[R[c[i】【n咖ber【i】】】【O】】[R【c【i】【nU哪ber【i珈【1】】；
                                                                                                                              dist--0；
                                                                                                                              sum闩【c[i】D】】；／广计算每辆AGV的任务总量(加上上面缺少的最后一个任
                                                                                                                                     务点)
                                                                                                                                     if(sum>Q)
                                                                                                                                     {
                                                                                                                                     dist=RAND_MAX；
                                                                                                                                     break；
                                                                                                                                     >
                                                                                                                                     ／／如果一辆车线路上的总任务超过车载容量Q的限制，则给距离赋一个可行
                                                                                                                                     解不可能达到的极大值，这样就能保证任务不被重复执行。RAND—MAX是
                                                                                                                                     一个常量，在VC 6．0环境下是这样定义的：#define RAND—MAX 0x7ttf．它
                                                                                                                                     是一个short型数据的最大值。
                                                                                                                                     ’
                                                                                                                                     hat maxl=o；
                                                                                                                                     for(i=l；i<=K；i++)
                                                                                                                                     {
                                                                                                                                     if(p[i]>maxl)
                                                                                                                                     {
                                                                                                                                     maxl=p[i]；
                                                                                                                                     )
                                                                                                                                     }
                                                                                                                                     return maxl；，，比较每辆AGV在任务完成后行驶的路径，选出路径长度最void mainO
                                                                                                                                     <
                                                                                                                                     srand((unsigned)time(NULL))；／／禾O用系统的时间来作为随机的种子，以确保每
                                                                                                                                     次运行程序产生的随机数是不同的
                                                                                                                                     for(int nm=0；rullQ0；nm++)／／算法运行20次
                                                                                                                                     {
                                                                                                                                     initiate0；／／初始化
                                                                                                                                     int optimaliter=O；
                                                                                                                                     for(int iter--O；iter<200；ite州／／iter记录迭代次数，最大迭代次数设为200代
                    {
                        double W=0．9．iter*O．9／200；／／使用线性递减的方法改变W的值：
                        ／／if((oldgBestSolution—gBestSolution)<1．O)
                            叭
                            ／／break；／／满足终止条件一，结束迭代。
                            ／／prinff(”％dII，iter)；／：／记录得到最优解的代数
                            }|、
                                                                                                                                         ／／否则进行粒子的更新：用式(1)和式(2)对每一个粒子的速度和位置进行
                                                                                                                                         更新
                                                                                                                                         double rl=(double)rand0／(RAND_MAX+1)；
                                                                                                                                         double r2=(double)rand0／(RAND_MAX+1)；／／随机取r1、r2在(O，1)之间
                                                                                                                                         ∥前面计算出的粒子的适应度值，如果优于该粒子当前的个体极值，则更新
                                                                                                                                         pbest。如果所有粒子的个体极值中最优的优于当前的全局极值，则更新
                                                                                                                                         gbest。
                                                                                                                                         ／／首先更新pbest，依次对每一个粒子与它的pbest比较目标函数值，并替换个
                                                                                                                                         体最优解序列和相应的目标函数值。
                                                                                                                                         for(int k=O；ka以；l【抖)
                    {
                        solution[k]=EvalueSolution(RouteXv[k】，RouteXr[k])；／／EvalueSolutionO函
                                                           数的输入是第k号粒子的解序列，得到的是第k号粒子相应的目标函数值，
                                                           将值赋到solution数组中的相应位置。在solution数组中也就是从solution[0】
                                                                                                         至solution[M-l】的位置依次对应的是0至M-l号粒子的(当前)目标函数值。
                                                                                                                   if(solution[k]<pBestSolution[k])
                                                                                                                   {
                                                                                                                   5l山东大学硕士学位论文
                                                                                                                   pBestSolution[k]=solution[k]；／／pBestSolution口数组用来存储每个粒子的
                                                                                                                   历史最优解的目标函数值。
                                                                                                                   for(int s=0；s<N；s斗+)
                                                                                                                   {
                                                                                                                   pBestRouteXv[k][s]2=RouteXv[k][s]；
                                                                                                                   pBestRouteXr[k][s]=RouteXr[k][s]；
                                                                                                                   ／／pBestRouteXv[k]B和pBe刚RouteXr皿】玎用来记录相应的最优解序列
                                                                                                                   )
                                                                                                                   )
                                                                                                                   >
                                                                                                                   ／／然后更新gbest，依次对每一个粒子的pbest与gbest比较目标函数值，并替
                                                                                                                   换全局最优解序列和相应的目标函数值。
                                                                                                                   for(k=0；k<M；k*)
                                                                                                                   {
                                                                                                                   if(pBestSolution[k]<gBestSolution)
                                                                                                                   {
                                                                                                                   I／oldgBestSolution=gBestSolufion；
                                                                                                                   gBestSolution=pBestSolution[k]；／／gBestSolution变量用来存储所有粒子中
                                                                                                                   最优的目标函数值即全局最优的目标函数值。
                                                                                                                   for(int s芦的；s<N；s++)
                                                                                                                   {
                                                                                                                   gBestRouteXv[s]==pBestRouteXv[k][s]；
                                                                                                                   gBestRouteXr[s]=pBestRouteXr[k][s]；
                                                                                                                   ／／gBestRouteXvn$阿l gBestlb眺D用来记录相应的全局最优解序列
                                                                                                                   )
                                                                                                                   optirnalitel与ter；／／记录得到最优解的代数
                                                                                                                   > )
                                                                                                                   ／／分别利用两个更新公式对每一个粒子的速度和位置进行更新。
                                                                                                                   for(int m=O；m<M；m++)
                                                                                                                   {
                                                                                                                   double RXrlMl 0q]；
                                                                                                         int clK+l】【M；
                                                                                                         int number【K+1】；
                                                                                                         for(int i=旬；i<=K；H)山东大学硕士学位论文
                                                                                                         number[i]=O；／／将记数数组的各元素初始化为0
                                                                                                         for(i=O；i<N；i++)
                                                                                                         {
                                                                                                         ．V．v[m][i]=W*RouteXV[m】[i】+C 1*rl·(pBestRouteXv[m][i]一RouteXv[m][i])+C2·r
                                                                                                                                 2·(gBestRouteXv[i]-RouteXv[m][i])；
                                                                                                                                 if(Vv[m][il>VvMAX)
                                                                                                                                          Vv[m][i]=VvMAX；
                                                                                                                                          if(Vv[m][i]<VvMIN)
                                                                                                                                          Vv[m][i]=VvMIN；
                                                                                                                                          RouteXv[m][i]2(int)(RouteXv[m][i]+Vv[m][i])；／／相当于对车号向下取整
                                                                                                                                          if(RouteXv[m][i]>XvMAX)
                                                                                                                                          RouteXv[m][i]=XvMAX；
                                                                                                                                          if(RouteXv[m][i]<XvMIN)
                                                                                                                                          RouteXv[m】[i】=XvMIN；
                                                                                                                                                     ／／对Xv及Vv进行更新
                                                                                                                                                     y【m】【i】2w·RouteXr[m][i]+C 1·r1·(pBestRouteXr[m][i]-RouteXr[m][i])+C2·r2
                                                                                                                                                     ·(gBestRouteXr[i]-RouteXr[m][i])；
                                                                                                                                                     if(Vr[m][i]>VrMAX)
                                                                                                                                                     Vr[m][i]=VrMAX；
                                                                                                                                                     if(Vr[m][i]<VrMIN)
                                                                                                                                                     Vr[m][i]=VrMIN；
                                                                                                                                                     &灶【m】【i】=(double)RouteXr[m][i]+Vr[m][i]；
                                                                                                                                                     ／／对Xr及Vr进行更新(对Xr没有限制)，用RXr暂时存储调整前的Ⅺ
                                                                                                                                                     >
                                                                                                                                                     for(int j=l j<=K；j++)
                                                                                                                                                     {
                                                                                                                                                     n s，x；
                                                                                                                                                     for(i=o；i<N；i++)
                                                                                                                                                     {
                                                                                                                                                     if(RouteXv[m][i]一j)
                                                                                                                                                     {
                                                                                                                                                     e[j][number[j]]--i；
                                                                                                                                                     number[j]++；
                                                                                                                                                     )
                                                                                                                                                     )山东大学硕士学位论文
                                                                                                                                                     for(s=O；s<(number[j]一1)；s抖)
                                                                                                                                                     for(k=s+1；k<numbcr[j]；l【抖)
                                                                                                                                                     ifi[&灶【m】【cD】[s】】>&炷【m】[cD】哟】)
                                                                                                                                                                             {
                                                                                                                                                                             x=cD】【s】；
                                                                                                                                                                             cD】【s】=C【j】哟；
                                                                                                                                                                             cU][k]---x；
                                                                                                                                                                   )
                                                                                                                                                                   for(s={)；s<numbcr[j]；S斗+)
                                                               RouteXr[m][c[j][s]]=s+1；
                                                               )／／通过从小到大的排序重新整理Xr
                                                               ／／for(i=O；i<N；i++)
                                                                   ／／printf(”％dI．，RoutcXv[m][i])；
                                                                   ／／prinff(¨、n”)；
                                                                   ／／for(i=O；i<N；i++)
                                                                       ／／printf(”％dII，RoutcXr[m]【i】)；
                                                                       ／／print坟”、Il”)；
                                                                       )
                                                                       ／／for(k=0；k<M；k++)
                                                                           ／／{
                                                                               Hsolution[k]=EvalueSolution(RouteXv[k】，RouteXr[k])；
                                                                                                                   ／／printf(”％lfI’solution[k])；
                                                                                                                   ／／prin坝¨＼Il”)；
                                                                                                                   ／／}
                                                                                                                   )
                                                                                                                   ／／输出本次运算的最优解
                                                                                                                   for(int i=0；i<N；i++)
                                                                                                                   {
                                                                                                                   printf(”％dI．，gBestRouteXv[i])；
                                                                                                                   priII咀”，”)；
                                                                                                                   >
                                                                                                                   prmtf(”kn”)；
                                                                                                                   f0“i=0；i<N；i++)
                                                                                                                   {
                                                                                                                   printtl”％d¨，gBcstRoutcXr[i])；山东大学硕士学位论文
                                                                                                                   printfC,")；
                                                                                                                   }
                                                                                                                   printf(”＼Il¨)；
                                                                                                                   printf(¨％lf．，gBestSolution)；
                                                                                                                   printf(¨、Il¨)；
                                                                                                                   printf(”得到最优解的代数是：％dI．，optimaliter)；
                                                                                                                   printf(”＼Il¨)；
                                                                                                                   ／／printfC”％lf．，oldgBestSolution)；
                                                                                                                   ／／prinff(”＼Il”)；
                                                                                                                   )
