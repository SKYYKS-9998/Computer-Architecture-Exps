.text
main:
ADDIU $r1,$r0,array	#数组地址
ADDI $r2,$r0,15		#外循环变量
loop1:
ADD $r3,$r0,$r1		#数组第一个元素
ADDI $r4,$r2,0		#内循环变量
loop2:
LW $r5,0($r3)		#array[i]
LW $r6,4($r3)		#array[i+1]
SLT $r7,$r5,$r6		#array[i]<array[i+1]？
BNEZ $r7,inc		#如果array[i+1]>=array[i]，则跳转到inc
SW $r5,4($r3)		#如果array[i+1]<array[i]，交换
SW $r6,0($r3)
inc:
ADDI $r4,$r4,-1		#内循环次数-1
ADDI $r3,$r3,4		#下一个元素开始内循环
BGTZ $r4,loop2		
ADDI $r2,$r2,-1		#外循环次数-1
BGTZ $r2,loop1
TEQ $r0,$r0

.data
array:
.word 18,17,2,3,5,35,5,2,78,4,33,44,22,100,16,2 