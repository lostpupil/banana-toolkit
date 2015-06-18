banana-toolkit
==============

一些用来简化烦琐事情的小脚本    
###rb/jpost.rb     

一个用来产生jekyll post文件的小脚本。获取命令行输入之后能够创建一个文件。然后`cp`到任何指定的目录即可。能够自动帮你生成title，description，layout，category，date等信息。    
使用说明：`ruby jpost.rb`

###cmotd/greet.sh

一个bash小脚本，用途是每次你新开命令行窗口的时候就会输出一段信息，使用方法，把文件复制到`.zshrc`同一级目录下面。然后在`.zshrc`或者`.bashrc`中添加：

```bash
source ~/greet.sh
```

boom shakalaka
