支持打印栈
修改文件 node_modules\minidump\lib\minidump.js

```
module.exports.walkStack = function (minidump, symbolPaths, callback) {
  //...
  var args = ["-s", minidump].concat(symbolPaths, globalSymbolPaths)
  execute(stackwalk, args, callback)
}
```

解决上传busboy出错问题
修改 package.json

```
"connect-busboy": "0.0.2"
```

修改为

```
"connect-busboy": "1.1.0"
```