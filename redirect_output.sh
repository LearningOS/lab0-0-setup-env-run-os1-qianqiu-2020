#!/bin/bash

# Shell脚本：演示标准输出和标准错误的重定向
# Shell Script: Demonstrate stdout and stderr redirection

echo "=== 标准输出和标准错误重定向示例 ==="
echo "=== Standard Output and Standard Error Redirection Examples ==="
echo ""

# 示例1：将标准输出重定向到文件
# Example 1: Redirect stdout to file
echo "示例1：将标准输出重定向到文件 (stdout > file)"
echo "This is standard output" > stdout.txt
echo "  结果已写入 stdout.txt"
echo ""

# 示例2：将标准错误重定向到文件
# Example 2: Redirect stderr to file
echo "示例2：将标准错误重定向到文件 (stderr 2> file)"
ls /nonexistent_directory 2> stderr.txt
echo "  错误信息已写入 stderr.txt"
echo ""

# 示例3：将标准输出和标准错误都重定向到同一个文件（方法1）
# Example 3: Redirect both stdout and stderr to the same file (method 1)
echo "示例3：将标准输出和标准错误都重定向到同一个文件 (>file 2>&1)"
(echo "This is stdout" && ls /nonexistent_dir) > output_and_error1.txt 2>&1
echo "  输出和错误已写入 output_and_error1.txt"
echo ""

# 示例4：将标准输出和标准错误都重定向到同一个文件（方法2）
# Example 4: Redirect both stdout and stderr to the same file (method 2)
echo "示例4：将标准输出和标准错误都重定向到同一个文件 (&>file)"
(echo "This is stdout" && ls /another_nonexistent_dir) &> output_and_error2.txt
echo "  输出和错误已写入 output_and_error2.txt"
echo ""

# 示例5：将标准输出和标准错误重定向到不同的文件
# Example 5: Redirect stdout and stderr to different files
echo "示例5：将标准输出和标准错误重定向到不同的文件"
(echo "This is stdout" && ls /yet_another_nonexistent_dir) > stdout_only.txt 2> stderr_only.txt
echo "  标准输出已写入 stdout_only.txt，标准错误已写入 stderr_only.txt"
echo ""

# 示例6：追加模式 - 将输出追加到文件末尾
# Example 6: Append mode - append output to end of file
echo "示例6：追加模式重定向 (>>file)"
echo "First line" > append_test.txt
echo "Second line" >> append_test.txt
echo "Third line" >> append_test.txt
echo "  内容已追加到 append_test.txt"
echo ""

# 显示生成的文件内容
echo "=== 查看生成的文件内容 ==="
echo "=== View Generated File Contents ==="
echo ""

echo "--- stdout.txt ---"
cat stdout.txt
echo ""

echo "--- stderr.txt ---"
cat stderr.txt
echo ""

echo "--- output_and_error1.txt ---"
cat output_and_error1.txt
echo ""

echo "--- output_and_error2.txt ---"
cat output_and_error2.txt
echo ""

echo "--- stdout_only.txt ---"
cat stdout_only.txt
echo ""

echo "--- stderr_only.txt ---"
cat stderr_only.txt
echo ""

echo "--- append_test.txt ---"
cat append_test.txt
echo ""

echo "=== 脚本执行完成 ==="
echo "=== Script Execution Completed ==="
