# Linux 0.11

## 生成 compile_commands.json

```shell
# bear可以生成compile_commands.json
sudo apt install bear
bear make
```

使用vscode打开即可通过生成的 `compile_commands.json` 获得调用关系，顺利跳转。

## 调试

首先在qemu中开启一个Linux

```shell
make qemu
```

接着就可以直接在vscode调试了。