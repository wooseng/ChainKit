# ChainKit

一个使用Swift开发的链式编程框架。

### 配置要求：
**Xcode 10.2.1 +**<br />
**iOS 10.0 +**<br />
**Swift 5**

### 导入方式

使用cocoapods导入
在 `Podfile` 文件中添加以下内容

```
pod 'ChainKit', :git => 'https://github.com/wooseng/ChainKit.git'
```

然后使用 `pod install` 命令进行安装

在项目中使用 `Import ChainKit` 引入框架并开始使用

### 基本使用方式
以下代码实现了在ViewController里创建一个按钮，将其添加到view上，并对其设置基本属性，添加点击事件，设置自动布局的约束(采用SnapKit)

```
UIButton().addTo(view).config {
    $0.backgroundColor = UIColor.yellow
    $0.setTitle("链式编程", for: .normal)
}.addEvent(.touchUpInside) {
    print("点击了按钮", $0)
}.makeConstraints {
    $0.left.equalTo(10)
    $0.right.equalTo(-10)
    $0.top.equalTo(20)
    $0.height.equalTo(40)
}
```

### 更多使用方式
要想成为一个好用的链式编程框架，仅仅拥有上面展示的这些是远远不够的，其余的功能需要慢慢开发，但是会遵循上述示例中的使用方式。
