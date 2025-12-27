# 标准输出和标准错误重定向 (Standard Output and Standard Error Redirection)

## 概述 (Overview)

本项目演示了在 Linux/Unix 系统中如何将标准输出（stdout）和标准错误（stderr）重定向到文件中。

This project demonstrates how to redirect standard output (stdout) and standard error (stderr) to files in Linux/Unix systems.

## 使用方法 (Usage)

### 运行脚本 (Run the Script)

```bash
bash redirect_output.sh
```

或者 (or)

```bash
chmod +x redirect_output.sh
./redirect_output.sh
```

## 重定向操作符说明 (Redirection Operators)

### 1. 标准输出重定向 (Redirect stdout)

```bash
command > file          # 将标准输出重定向到文件（覆盖模式）
command >> file         # 将标准输出追加到文件末尾
```

**示例 (Example):**
```bash
echo "Hello World" > output.txt
```

### 2. 标准错误重定向 (Redirect stderr)

```bash
command 2> file         # 将标准错误重定向到文件（覆盖模式）
command 2>> file        # 将标准错误追加到文件末尾
```

**示例 (Example):**
```bash
ls /nonexistent 2> error.txt
```

### 3. 同时重定向标准输出和标准错误 (Redirect both stdout and stderr)

**方法1 (Method 1):**
```bash
command > file 2>&1     # 将 stdout 和 stderr 都重定向到同一个文件
```

**方法2 (Method 2):**
```bash
command &> file         # 简化写法，将 stdout 和 stderr 都重定向到同一个文件
```

**示例 (Example):**
```bash
(echo "Success" && ls /nonexistent) > output.txt 2>&1
```

### 4. 分别重定向到不同文件 (Redirect to different files)

```bash
command > stdout.txt 2> stderr.txt
```

**示例 (Example):**
```bash
(echo "Success" && ls /nonexistent) > out.txt 2> err.txt
```

## 文件描述符 (File Descriptors)

- **0**: 标准输入 (stdin)
- **1**: 标准输出 (stdout)
- **2**: 标准错误 (stderr)

## 脚本功能 (Script Features)

`redirect_output.sh` 脚本演示了以下6种重定向场景：

1. 将标准输出重定向到文件
2. 将标准错误重定向到文件
3. 将标准输出和标准错误重定向到同一文件（方法1：`>file 2>&1`）
4. 将标准输出和标准错误重定向到同一文件（方法2：`&>file`）
5. 将标准输出和标准错误重定向到不同文件
6. 追加模式重定向

## 生成的文件 (Generated Files)

运行脚本后，将生成以下测试文件：

- `stdout.txt` - 仅包含标准输出
- `stderr.txt` - 仅包含标准错误
- `output_and_error1.txt` - 包含标准输出和标准错误（方法1）
- `output_and_error2.txt` - 包含标准输出和标准错误（方法2）
- `stdout_only.txt` - 仅包含标准输出（分离模式）
- `stderr_only.txt` - 仅包含标准错误（分离模式）
- `append_test.txt` - 追加模式测试文件

**注意**: 这些文件已添加到 `.gitignore` 中，不会被提交到仓库。

## 学习资源 (Learning Resources)

- [Advanced Bash-Scripting Guide - I/O Redirection](https://tldp.org/LDP/abs/html/io-redirection.html)
- [Linux Command Line - Redirections](https://linuxcommand.org/lc3_lts0070.php)

## 作者 (Author)

2023年开源操作系统训练营 (Open-Source OS Training Camp 2023)
