# `Move`语言学习记录

#### 运行

* `move`命令
  - 编译：`move build`
  - 沙盒中发布:`move sandbox publish -v`
  - 沙盒中执行指定的script脚本：`move sandbox run ./scripts/move_learn_test.move --args 33 --dry-run`

* `aptos`命令
```
//执行所有module中，有`#[test]`注释的单元测试函数
aptos move test
//指定某个moudule中的函数单元测试
aptos move test --filter signer_test_main
```