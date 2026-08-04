# SMSSDK For Flutter

为开发者提供全球通用的短信验证码工具，开发者可以用其在App植入短信验证码SDK、简单设置即可短信验证，集成快速便捷，且后期易于管理

## 开始

1.Flutter集成文档 [SMSSDK-For-Flutter 在线文档](https://pub.dev/packages/mobsms)

2.iOS平台配置参考 [iOS集成文档](https://wiki.mob.com/快速集成-11/)

- 实现 "一、注册应用获取appKey 和 appSecret"
- 实现 "三、配置appkey和appSecret"

3.Android平台集成

#####导入SMSSDK相关依赖

1. 在项目根路径下的 pubspec.yaml 文件中添加 SMSSDK Flutter 插件：

```yaml
dependencies:
  mobsms: ^1.1.11
```

2. 在 Dart 代码中导入：

```dart
import 'package:mobsms/mobsms.dart';
```

3. 初始化 SMSSDK：

```dart
// 在 main() 或 initState 中调用
MobsmsPlugin.initSdk('MOB_APPKEY', 'MOB_APPSECRET');
```

4. 更多 API 用法请参考 [在线文档](https://pub.dev/packages/mobsms)。

## 技术支持
如有问题请联系技术支持:
```
服务电话:   400-685-2216     
QQ:        4006852216
节假日值班电话:
    iOS：185-1664-1951
Android: 185-1664-1950
电子邮箱:   support@mob.com
市场合作:   021-54623100
```