.text
main:
ADDIU $r1,$r0,array	#�����ַ
ADDI $r2,$r0,15		#��ѭ������
loop1:
ADD $r3,$r0,$r1		#�����һ��Ԫ��
ADDI $r4,$r2,0		#��ѭ������
loop2:
LW $r5,0($r3)		#array[i]
LW $r6,4($r3)		#array[i+1]
SLT $r7,$r5,$r6		#array[i]<array[i+1]��
BNEZ $r7,inc		#���array[i+1]>=array[i]������ת��inc
SW $r5,4($r3)		#���array[i+1]<array[i]������
SW $r6,0($r3)
inc:
ADDI $r4,$r4,-1		#��ѭ������-1
ADDI $r3,$r3,4		#��һ��Ԫ�ؿ�ʼ��ѭ��
BGTZ $r4,loop2		
ADDI $r2,$r2,-1		#��ѭ������-1
BGTZ $r2,loop1
TEQ $r0,$r0

.data
array:
.word 18,17,2,3,5,35,5,2,78,4,33,44,22,100,16,2 