# VS Code + EGE 图形库模板

## 使用方法

1. 使用 [VS Code Config Helper v4](https://v4.vscch.tk) 配置一遍。这只是确保你正确安装了编译器。如果你之前配置过，则可以跳过这一步；如果你是第一次配置，按照程序说明完成所有操作。配置完成后，可**直接删除工作文件夹**，这里不需要它。
1. 下载或克隆本仓库。
2. 安装 [Xmake](https://xmake.io/#/zh-cn/guide/installation)。
3. 在 VS Code 中打开本仓库。
4. 在 VS Code 的终端中执行如下 Configure 命令：

```
xmake f -pmingw
```

如果你安装了 MSVC（Visual Studio），则更建议你使用 `xmake f`（不带 `-pmingw`）作为 Configure 命令。

## 编辑代码

你可以将你的源代码放在 `src` 文件夹中。本仓库提供了简单的测试代码，放在 `src/main.cpp` 中（代码内容为输出“月牙形”）。在你开始编辑或进行文件操作（比如添加/删除/重命名源文件）时，建议你运行 `update intellisense` 任务以获得良好的 IntelliSense 智能提示。

运行 `update intellisense` 的方法是：按 <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>，执行 `Tasks: Run task` 命令，选择 `update intellisense` 运行。如果智能提示出现异常（如“找不到 `<graphics.h>`”、`#include error detected` 等），则运行此命令可以解决大部分问题。

## 编译与运行

按 <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>B</kbd> 编译项目。按 <kbd>F6</kbd>（即你在 VS Code Config Helper 中选择的运行快捷键）运行项目。

第一次编译的时候，程序会下载必要的构建工具和 EGE 库的源代码，并尝试编译 EGE 库。这一般需要一段时间，请耐心等待。在此期间，尽可能保持网络畅通。如需“翻墙”，请不要使用“代理模式”（改用“虚拟个人网络”/VPN 等方式）。

## 其它

你可以修改 `xmake.lua` 中的 `target` 函数调用，以修改项目名称和最终生成的可执行文件名称。

你可以选择安装 [Xmake VS Code 扩展](https://marketplace.visualstudio.com/items?itemName=tboox.xmake-vscode)。这不是必要的，但它提供了一些更简便的使用 Xmake 的方法。
