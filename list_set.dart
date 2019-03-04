/// 集合
/// list , set

main(List<String> args) {
  /// 定义list
  List<String> list = List(); // 不推荐
  var ls = [1,2,3,4,5,6]; // 推荐

  ls.forEach((item){print(item);});
  print('*' * 100);
  ls.add(10); // 添加元素， 和Java集合操作类似
  ls.forEach((item) => print(item));

  print('*' * 100);
  ls.remove(2); // 删除元素
  for (var item in ls) {
    print(item);
  }
  print('list siz = ${ls.length}');

  /// 链式操作
  print('--' * 50);
  ls..add(30)
    ..add(20)
    ..add(40);
  ls.forEach((item) => print(item));
}