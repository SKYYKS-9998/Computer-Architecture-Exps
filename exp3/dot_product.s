.text
main:
ADDIU $r1,$r0,a1	#向量1地址
ADDIU $r2,$r0,a2	#向量2地址
ADDI $r3,$r0,11		#以向量长度初始化循环变量
ADDI $r4,$r0,0		#存放结果
loop:
#加载当前相乘元素
LW $r5,($r1)		
LW $r6,($r2)
MUL $r7,$r5,$r6		#相乘
ADD $r4,$r4,$r7		#加入点积结果
ADDI $r1,$r1,4		#下一个元素地址
ADDI $r2,$r2,4		#下一个元素地址
ADDI $r3,$r3,-1		#循环次数-1
BGTZ $r3,loop		#循环判断
TEQ $r0,$r0

.data
a1: 
.word -5,-4,-3,-2,-1,1,2,3,4,5,6
a2:
.word 5,4,3,2,1,1,2,3,4,5,6
