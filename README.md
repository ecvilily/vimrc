# basic
## 标记
m{a-z}:  标记光标所在位置，局部标记，只用于当前文件。
m{A-Z}:  标记光标所在位置，全局标记。标记之后，退出Vim，重新启动，标记仍然有效。
\`{a-z}: 移动到标记位置。
'{a-z}:  移动到标记行的行首。
:marks     显示所有标记。
:delmarks  a b -- 删除标记a和b。
:delmarks  a-c -- 删除标记a、b和c。
:delmarks  a c-f -- 删除标记a、c、d、e、f。
:delmarks! -- 删除当前缓冲区的所有标记。
## substitute 
:s/old/new        用new替换当前行第一个old。
:s/old/new/g      用new替换当前行所有的old。
:n1,n2s/old/new/g 用new替换文件n1行到n2行所有的old。
:%s/old/new/g     用new替换文件中所有的old。
:%s/^/xxx/g       在每一行的行首插入xxx，^表示行首。
:%s/$/xxx/g       在每一行的行尾插入xxx，$表示行尾。
所有替换命令末尾加上c，每个替换都将需要用户确认。
如：%s/old/new/gc，加上i则忽略大小写(ignore)。
还有一种比替换更灵活的方式，它是匹配到某个模式后执行某种命令，
语法为 		:[range]g/pattern/command
例如 		:%g/^xyz/normal dd。
表示对于以一个空格和xyz开头的行执行normal模式下的dd命令。
关于range的规定为：
如果不指定range，则表示当前行。
m,n 从m行到n行。
0   最开始一行（可能是这样）。
$   最后一行
.   当前行
%   所有行
## regular expession
\d   表示十进制数
\s   表示空格
\S   非空字符
\a   英文字母
{m,} 表示m到无限多个字符。
\*\*   当前目录下的所有子目录
## tab
vim         -p files: 打开多个文件，每个文件占用一个标签页。
:tabe,      如果加文件名，就在新的标签中打开这个文件，否则打开一个空缓冲区。
:tabn       切换到下一个标签。
:tabp       切换到上一个标签。
[n]gt       切换到下一个标签。
:tabc[lose] 关闭当前的标签页。
:tabo[nly]  关闭其它的标签页。
## buffer
:buffers 显示缓冲区列表。
:bn                   下一个缓冲区。
:bp                   上一个缓冲区。
:b[n]         切换到第n个缓冲区。
:nbw(ipeout)          彻底删除第n个缓冲区。
## file system
:e   ++ff=dos filename, 让vim用dos格式打开这个文件。
:w   ++ff=mac filename, 以mac格式存储这个文件。
:set ff 显示当前文件的格式。
## jump
gd 跳转到局部变量的定义处；
gD 跳转到全局变量的定义处，从当前文件开头开始搜索；
%  不仅能移动到匹配的(),{}或[]上，而且能在#if，#else，
## quickfix
:copen      打开快速修改窗口。
:cclose     关闭快速修改窗口。
:cl         在快速修改窗口中列出错误。
:cr         定位到第一个错误。
:cn         定位到下一个错误。
:cp         定位到上一个错误。
## folding
za     打开/关闭当前折叠；
zr     打开嵌套的折行；
zm     收起嵌套的折行；
zR     打开所有折行；
zM     收起所有折行；
zj     跳到下一个折叠处；
zk     跳到上一个折叠处；
zi     enable/disable fold;
# vim Plugin
<Leader>ilt        标识符放在一个侧边子窗口中
<Leader>sw         .h 和 .cpp 快速切换
<leader>fl         工程项目文件列表，
<space>            选中联结对
<leader><leader>fa a 变成 a,b,c,d,c 再按 a 跳转到第一个， 按 b 跳转到第二个。
<leader>ga         排版
set                wrap  恢复拆行
<leader>jc         和 <leader>jd  跳转到定义
# mine mapping
## normal
<leader>n     <C-F>  向后一页
<leader>p     <C-B>  向前一页
<Leader>p     "+p
<leader>m     make
nw            <C-W><C-W>  到MiniBufExplorer
## insert
jk <esc>
## visuall
<Leader>y: "+y  复制到系统剪切板
