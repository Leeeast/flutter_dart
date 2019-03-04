/// Dart 变量
/// 
/// Dart语言常用数据类型，int , double , num , String, dynamic , Object
/// 变量的默认值都是null , 包括bool类型
/// 类型定义方式：弱类型 --> var str1 = 'are you ok ?'.  强类型 --> String str2 = "i'm ok"

main(List<String> args) {
  
  /// 变量定义
  var str1 = 'are you ok ?';
  print(str1);
  /// 使用var声明的变量，初始化之后，变量的类型就已经确定，后续再赋值，只能是初始化的数据类型。
  // str1 = 12;  // A value of type 'int' can't be assigned to a variable of type 'String'.

  /// 只声明变量，不初始化
  /// 使用var声明变量，但不赋值初始化数据，则变量为dynamic类型，即变量类型可以是任何数据类型
  var anyType;
  anyType = 'this is a every type';
  print('every type = $anyType');
  anyType = 12;
  print('every type = $anyType');
  anyType =true;
  print('every type = $anyType');

  /// 使用强类型定义变量 ， 类型确定之后，变量类型就不可变了。
  String userName = 'zeno';
  int age = 20;
  double saleryPrice = 12.3;
  num weight = 1200;
  /// 在Dart中可以使用类似，Kotlin，Javascript中的字符模板的写法，来组合字符串与变量。
  print('name = $userName and age = $age, price = $saleryPrice, and weight = $weight');

  /// 任意类型变量声明
  dynamic anything = 12;
  anything = 'good job';
  Object anythingObj = 'this is object type';
  anythingObj =12;
  print('dtnamic type $anything and anythingObj = $anythingObj');


  /// 字符变量
  /// 字符串可以有多种写法 ， 'body' , "body", """body""", 'body'   'body',  '''body'''
  String strDefind = 'this is '   'a body'; // String 两个字符串之间有空格，在dart中也会将两个字符串连接起来
  strDefind = '这样'
  '其实'
  '也可以';
  print(strDefind);
  String strDefind2 = """ i want the computer
  this is a good
  """;
  print('原样输出 \n$strDefind2');

  String strDefind3 = r"love is a short ,\n forgetting is so long"; // 在字符串前面加上r ，则表示字符串中的转移字符，不进行转义，原样输出
  print("转移字符原样输出 = \n$strDefind3");
  print(strDefind3.length);
  /// 遍历输出字符串
  // for (int i=0 ; i < strDefind3.length ; i++) {
  //   print(strDefind3[i]);
  // }


  /// 常量， final const , 一旦赋值则不可修改  特性：不可变性可传递
  final DateTime currentDateTime =DateTime.now(); // 赋值之后就不可修改 ， 运行时确定值， 不传递
  print(currentDateTime);
  const PI = 3.1415926; // const 必须是明确的值，编译时确定值， 传递
  print(PI);

  final ls = [1,2,3,4,5,6]; // 不传递不可变性，不影响子元素的可变性
  ls[1] = 10;
  print(ls);

  const ls1 = [1,2,3,4,5,6]; // 传递不可变行，影响子元素的可变性
  // ls1[1] = 10; // 报错

  /// 使用const 定义的变量，如果在内存中已经存在， 则会复用
  const ls2 = [1,2,3,4,5,6];
  print(identical(ls1,ls2)); // true ls1 和 ls2 是相同对象
}