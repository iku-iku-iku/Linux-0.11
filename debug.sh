#!/bin/bash

HDA_IMG=hdc-0.11.img
# 启动 QEMU 并将其放到后台运行
qemu-system-i386 -m 16M -boot a -fda Image -hda $HDA_IMG -s -S &

# 保存 QEMU 进程的 PID
QEMU_PID=$!

# 启动 GDB
gdb tools/system -x gdbinit.txt

# 当 GDB 退出后，杀掉 QEMU 进程
kill $QEMU_PID
