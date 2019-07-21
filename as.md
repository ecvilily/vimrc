| C声明  | Intel数据类型 | 汇编代码后缀 | 字节 |
| ------ | ------------- | ------------ | ---- |
| char   | 字节          | b            | 1    |
| short  | 字            | w            | 2    |
| int    | 双字          | l            | 4    |
| long   | 四字          | q            | 8    |
| char * | 四字          | q            | 8    |
| float  | 单精度        | s            | 4    |
| double | 双精度        | l            | 8    |

| %rax | %eax  | %ax   | %al   | 返回值       |
| ---- | ----- | ----- | ----- | ------------ |
| %rbx | %ebx  | %bx   | %bl   | 被调用者保存 |
| %rcx | %ecx  | %cx   | %cl   | 第1个参数    |
| %rdx | %edx  | %dx   | %dl   | 第2个参数    |
| %rsi | %esi  | %si   | %sil  | 第3个参数    |
| %rdi | %edi  | %di   | %dil  | 第4个参数    |
| %rbp | %ebp  | %bp   | %bpl  | 被调用者保存 |
| %rsp | %esp  | %sp   | %spl  | 栈指针       |
| %r8  | %r8d  | %r8w  | %r8b  | 第5个参数    |
| %r9  | %r9d  | %r9w  | %r9b  | 第6个参数    |
| %r10 | %r10d | %r10w | %r10b | 调用者保存   |
| %r11 | %r11d | %r11w | %r11b | 被调用者保存 |
| %r12 | %r12d | %r12w | %r12b | 被调用者保存 |
| %r13 | %r13d | %r13w | %r13b | 被调用者保存 |
| %r14 | %r14d | %r14w | %r14b | 被调用者保存 |
| %r15 | %r15d | %r15w | %r15b | 被调用者保存 |

| 类型   | 格式 | 名称       |
| ------ | ---- | ---------- |
| 立即数 | $10  | 10         |
| 寄存器 | r    | r的值      |
| 存储器 | 10   | 地址为0x0a |

| 指令      | 效果           | 描述     |
| --------- | -------------- | -------- |
| movq S, D | D<--S          | 传送     |
| pushq S   | subq $-8, %rsp | 压入     |
|           | movq S, %rsp;  |          |
| popq D    | movq (%rsp), D | 弹出     |
|           | addq $8, %rsp  |          |
|           |                |          |
| leaq S,D  | D<--&S         | 取址     |
| incq D    | ++D;           |          |
| decq D    | --D;           |          |
| negq D    | -D;            |          |
| notq D    | ~D;            |          |
|           |                |          |
| addq S, D | D = D + S;     |          |
| subq S, D | D = D - S;     |          |
| imulq S,D | D = D * S;     | 有符号   |
| idivq S,D | D = D / S;     | 有符号   |
| mulq S,D  | D = D * S;     | 无符号   |
| divq S,D  | D = D / S;     | 无符号   |
| xorq S, D | D = D ^ S;     |          |
| orq S, D  | D = D \| S;    |          |
| andq S, D | D = D & S;     |          |
| salq k,D  | D = D << k;    | 左移     |
| shlq k,D  | D = D << k;    | 左移     |
| sarq k,D  | D = D >> k;    | 算术右移 |
| shrq k,D  | D = D >> k;    | 逻辑右移 |

* CF 进位标志。检查无符号操作的溢出
* ZF 零标志 。结果为 0
* SF 符号标志。结果为负数
* OF 溢出标志。补码溢出

| 指令         | 基于    |
| ------------ | ------- |
| cmpq S1, S2  | S2 - S1 |
| testq S1, S2 | S2 & S1 |

| 指令    | 设置条件     |
| ------- | ------------ |
| sete D  | equal        |
| setne D | not equal    |
|         |              |
| sets D  | minus        |
| setns D | not minus    |
| 有符号  |              |
| setg D  | greater      |
| setge D | equal greater |
| setl D  | less         |
| setle D | equal less   |
| 无符号  |              |
| seta D  | above        |
| setae D | above equal  |
| setb D  | below        |
| setbe D | below equal  |

| 指令          | 描述          |
| jmp Lable     | 直接跳转      |
| jmp Operand | 间接跳转      |
| je Lable      | equal         |
| jne Lable     | not equal     |
| js Lable      | minus         |
| jns Lable     | not minus     |
| 有符号        |               |
| jg Lable      | greater       |
| jge Lable     | equal greater |
| jl Lable      | less          |
| jle Lable     | equal less    |
| 无符号        |               |
| ja Lable      | above         |
| jae Lable     | equal above   |
| jb Lable      | below         |
| jbe Lable     | equal below   |
