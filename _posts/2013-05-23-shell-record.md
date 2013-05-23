---
layout: default
title: 命令行操作录制
tags:
    - shell
    - 录制
---

发现一个不错的东西：

>
    script -t 2> timing.log -a outpu.session

    type command;
    ---
    exit

scprit命令可以录制命令行操纵的过程。在做演示是非常的方便哦。

-t选项目的在于将时序的数据导入timing.log中，将stderr输入到timing.log中，
output用来存放操作的命令。

恢复

>
    scriptreplay timming.log output.session
    这样就可以回放刚才我们的操作了。

